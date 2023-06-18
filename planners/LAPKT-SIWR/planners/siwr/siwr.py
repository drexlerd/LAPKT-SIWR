#! /usr/bin/env python3
import fd.grounding
import sys
import os
from libsiwr import SIWR_Planner
# MRJ: Profiler imports
#from prof import profiler_start, profiler_stop

def main( domain_file, problem_file, sketch_file, plan_file ) :
	task = SIWR_Planner( )

	# fd.grounding.default(domain_file, problem_file, task)
	fd.grounding.initialize_sketch_strips_problem( domain_file, problem_file, sketch_file, task )

	#MRJ: Uncomment to check what actions are being loaded
	#for i in range( 0, task.num_actions() ) :
	#	task.print_action( i )

	# MRJ: Setting planner parameters is as easy as setting the values
	# of Python object attributes

	# MRJ: Maximum bound on width is set to 1
	task.iw_bound = 2

	# MRJ: log filename set
	task.log_filename = 'iw.log'

	# MRJ: plan file
	task.plan_filename = plan_file

	# DD: We call the setup method in SIW_Planner
	task.setup()

	# DD: find solution
	task.solve()


if __name__ == "__main__":
	main( sys.argv[1], sys.argv[2], sys.argv[3], sys.argv[4] )

# ./siwr.py ../../../../benchmarks/autoscale-21.10-agile-strips/childsnack/domain.pddl ../../../../benchmarks/autoscale-21.10-agile-strips/childsnack/p01.pddl ../../../../sketches/sketches_kr2021/childsnack/childsnack_1.txt plan.ipc