#! /usr/bin/env python3

"""
Example experiment for running Singularity planner images.

Note that Downward Lab assumes that the evaluated algorithms are written
in good faith. It is not equipped to handle malicious code. For example,
it would be easy to write planner code that bypasses the time and memory
limits set within Downward Lab. If you're running untrusted code, we
recommend using cgroups to enforce resource limits.

A note on running Singularity on clusters: reading large Singularity
files over the network is not optimal, so we recommend copying the
images to a local filesystem (e.g., /tmp/) before running experiments.
"""

import os
from pathlib import Path

from downward import suites
from downward.reports.absolute import AbsoluteReport
from lab.experiment import Experiment
from lab.reports import Attribute, arithmetic_mean

import project


# Create custom report class with suitable info and error attributes.
class BaseReport(AbsoluteReport):
    INFO_ATTRIBUTES = []
    ERROR_ATTRIBUTES = [
        "domain",
        "problem",
        "algorithm",
        "unexplained_errors",
        "error",
        "node",
    ]


ATTRIBUTES = [
    "run_dir",
    "cost",
    Attribute(name="coverage", absolute=True, min_wins=False),
    "error",
    "expanded",
    "generated",
    "pruned",
    Attribute(name="total_time", absolute=True),
    Attribute(name="width_average", absolute=True, function=arithmetic_mean),
    Attribute(name="width_maximum", absolute=True),
    Attribute(name="not_i_reachable", absolute=True),
]


DIR = Path(__file__).resolve().parent
BENCHMARKS_DIR = Path(os.environ["BENCHMARKS_PDDL_AUTOSCALE"])
SKETCHES_DIR = Path(os.environ["BENCHMARKS_SKETCHES_KR2021"])
TIME_LIMIT = 1800
MEMORY_LIMIT = 8000
IMAGES_DIR = DIR.parent / "planners"

if project.REMOTE:
    SUITE = ["barman", "childsnack", "driverlog", "floortile", "grid", "grid-no-exchange", "tpp"]
    ENV = project.TetralithEnvironment(
        email="dominik.drexler@liu.se",
        extra_options="#SBATCH --account=naiss2023-22-782",
        memory_per_cpu="8G")
else:
    SUITE = ["barman:p01.pddl", "childsnack:p01.pddl", "driverlog:p01.pddl", "floortile:p01.pddl", "grid:p01.pddl", "grid-no-exchange:p01.pddl", "tpp:p01.pddl"]
    ENV = project.LocalEnvironment(processes=4)
    TIME_LIMIT = 60

exp = Experiment(environment=ENV)
exp.add_step("build", exp.build)
exp.add_step("start", exp.start_runs)
exp.add_parse_again_step()
exp.add_fetcher(name="fetch")
exp.add_parser("parser-singularity-iw.py")

def get_image(name):
    planner = name.replace("-", "_")
    image = os.path.join(IMAGES_DIR, name + ".img")
    assert os.path.exists(image), image
    return planner, image


IMAGES = [get_image("siwr")]

for planner, image in IMAGES:
    exp.add_resource(planner, image, symlink=True)

singularity_script = os.path.join(DIR, "run-singularity-siwr.sh")
exp.add_resource("run_singularity", singularity_script)

for planner, _ in IMAGES:
    for task in suites.build_suite(BENCHMARKS_DIR, SUITE):
        for arity in range(0,3):
            sketch_filename = SKETCHES_DIR / task.domain / f"width_{arity}" / "sketch_str.txt"
            if task.domain == "grid-no-exchange":
                sketch_filename = SKETCHES_DIR / "grid" / f"width_{arity}" / "sketch_str.txt"
            if not sketch_filename.is_file(): continue
            run = exp.add_run()
            run.add_resource("domain", task.domain_file, "domain.pddl")
            run.add_resource("problem", task.problem_file, "problem.pddl")
            run.add_resource("sketch", sketch_filename)
            run.add_command(
                "run-planner",
                [
                    "{run_singularity}",
                    f"{{{planner}}}",
                    "{domain}",
                    "{problem}",
                    "{sketch}",
                    "plan.ipc",  # planner outputs this file
                ],
                time_limit=TIME_LIMIT,
                memory_limit=MEMORY_LIMIT,
            )
            run.set_property("domain", task.domain)
            run.set_property("problem", task.problem)
            run.set_property("algorithm", f"{planner}_{arity}")
            run.set_property("id", [f"{planner}_{arity}", task.domain, task.problem])

report = os.path.join(exp.eval_dir, f"{exp.name}.html")
exp.add_report(BaseReport(attributes=ATTRIBUTES), outfile=report)

exp.run_steps()
