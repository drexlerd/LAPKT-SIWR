#! /usr/bin/env python3

"""
Combines the IPC experiments and generates a combined report.
"""

import os
from pathlib import Path
import shutil
import subprocess

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
    Attribute(name="total_time", absolute=False, function=max),
    Attribute(name="width_average", absolute=True, function=arithmetic_mean),
    Attribute(name="width_maximum", absolute=True, function=max),
    Attribute(name="not_i_reachable", absolute=True),
]


if project.REMOTE:
    ENV = project.TetralithEnvironment(
        email="dominik.drexler@liu.se",
        extra_options="#SBATCH --account=snic2021-5-330",
        memory_per_cpu="8G")
else:
    ENV = project.LocalEnvironment(processes=4)

exp = Experiment(environment=ENV)

def fetch_algorithm(exp, expname, algo, new_algo=None):
    """Fetch (and possibly rename) a single algorithm from *expname*."""
    new_algo = new_algo or algo

    def rename_and_filter(run):
        if run["algorithm"] == algo:
            run["algorithm"] = new_algo
            run["id"][0] = new_algo
            return run
        return False

    exp.add_fetcher(
        f"data/{expname}-eval",
        filter=rename_and_filter,
        name=f"fetch-{algo}_to_{new_algo}-from-{expname}",
        merge=True,
    )

fetch_algorithm(exp, "10-10-23-lapkt-siw-autoscale", "siw", "lapkt-siw")
fetch_algorithm(exp, "10-10-23-mimir-siwr-autoscale-grounded", "siwr_0", "mimir-siwr-grounded")
fetch_algorithm(exp, "10-10-23-mimir-siwr-autoscale-grounded", "siwr_1", "mimir-siwr-grounded")
fetch_algorithm(exp, "10-10-23-mimir-siwr-autoscale-grounded", "siwr_2", "mimir-siwr-grounded")
fetch_algorithm(exp, "10-10-23-mimir-siwr-autoscale-lifted", "siwr_0", "mimir-siwr-lifted")
fetch_algorithm(exp, "10-10-23-mimir-siwr-autoscale-lifted", "siwr_1", "mimir-siwr-lifted")
fetch_algorithm(exp, "10-10-23-mimir-siwr-autoscale-lifted", "siwr_2", "mimir-siwr-lifted")
fetch_algorithm(exp, "10-10-23-lapkt-siwr-autoscale", "siwr_0", "lapkt-siwr")
fetch_algorithm(exp, "10-10-23-lapkt-siwr-autoscale", "siwr_1", "lapkt-siwr")
fetch_algorithm(exp, "10-10-23-lapkt-siwr-autoscale", "siwr_2", "lapkt-siwr")
fetch_algorithm(exp, "10-10-23-dual-bfws-autoscale", "dual_bfws", "dual_bfws")
fetch_algorithm(exp, "10-10-23-lama-first-autoscale", "lama_first", "lama_first")

report = os.path.join(exp.eval_dir, f"{exp.name}.html")
exp.add_report(BaseReport(attributes=ATTRIBUTES, filter_algorithm=["lama_first", "dual_bfws", "lapkt-siw", "lapkt-siwr", "mimir-siwr-grounded", "mimir-siwr-lifted"]), outfile=report)
exp.run_steps()
