#include <siwr_planner.hxx>
#include <strips_state.hxx>
#include <landmark_graph.hxx>
#include <landmark_graph_generator.hxx>
#include <h_2.hxx>

#include <aptk/iw.hxx>
#include <aptk/serialized_search.hxx>
#include <aptk/string_conversions.hxx>

#include <iostream>
#include <fstream>

using	aptk::agnostic::Fwd_Search_Problem;
using 	aptk::agnostic::Landmarks_Graph_Generator;
using 	aptk::agnostic::Landmarks_Graph;
using 	aptk::agnostic::H2_Heuristic;

using 	aptk::agnostic::Novelty;
using	aptk::search::brfs::IW;
using	aptk::search::Serialized_Search;

typedef		aptk::search::brfs::Node< aptk::State >	          	IW_Node;
typedef         Novelty<Fwd_Search_Problem, IW_Node>                   	H_Novel_Fwd;
typedef         H2_Heuristic<Fwd_Search_Problem>                  	H2_Fwd;
typedef         Landmarks_Graph_Generator<Fwd_Search_Problem>     	Gen_Lms_Fwd;
typedef		IW< Fwd_Search_Problem, H_Novel_Fwd >	          	IW_Fwd;



//typedef		Serialized_Search< Fwd_Search_Problem, IW_Fwd, IW_Node >        SIW_Fwd;

SIWR_Planner::SIWR_Planner()
	: Sketch_STRIPS_Problem( ), m_iw_bound(2), m_log_filename( "iw.log"), m_plan_filename( "plan.ipc" ) {
}

SIWR_Planner::SIWR_Planner( std::string domain_file, std::string instance_file )
	: Sketch_STRIPS_Problem( domain_file, instance_file ), m_iw_bound(2), m_log_filename( "iw.log" ), m_plan_filename( "plan.ipc" ) {
}

SIWR_Planner::~SIWR_Planner() {
}


void
SIWR_Planner::setup() {
	// MRJ: Call superclass method, then do you own thing here
	Sketch_STRIPS_Problem::setup();
	std::cout << "PDDL problem description loaded: " << std::endl;
	std::cout << "\tDomain: " << instance()->domain_name() << std::endl;
	std::cout << "\tProblem: " << instance()->problem_name() << std::endl;
	std::cout << "\t#Actions: " << instance()->num_actions() << std::endl;
	std::cout << "\t#Fluents: " << instance()->num_fluents() << std::endl;
	std::cout << "\t#Total fluents: " << instance()->num_total_fluents() << std::endl;
	std::cout << "\t#Total objects: " << instance()->num_objects() << std::endl;
	std::cout << instance()->problem_name() << std::endl;
	std::cout << instance()->domain_name() << std::endl;
	instance()->print_fluents(std::cout);
	instance()->print_static_fluents(std::cout);
}

float
SIWR_Planner::do_search( Sketch_SIW_Fwd& engine ) {

	engine.set_bound(1);
	engine.set_max_bound(m_iw_bound-1);
	engine.start();

    std::vector< std::string > sketch_plan;
    std::vector< std::vector<aptk::Action_Idx> > partial_plans;
	std::vector< unsigned > subproblem_widths;
	std::vector< aptk::Action_Idx > plan;
	float				cost;

	float ref = aptk::time_used();
	float t0 = aptk::time_used();

	unsigned expanded_0 = engine.expanded();
	unsigned generated_0 = engine.generated();

	std::ofstream	plan_stream( m_plan_filename.c_str() );

	if ( engine.find_solution( cost, plan, partial_plans, sketch_plan, subproblem_widths ) ) {
		std::cout << std::endl;
		std::cout << "Interleaved plan and sketch plan" << std::endl;
		unsigned k = 0;
		for ( unsigned i = 0; i < partial_plans.size(); ++i) {
			std::cout << i+1 << ". ";
			std::cout << "width = " << subproblem_widths[i] << ", ";
			std::cout << "rule = " << sketch_plan[i] << std::endl;
			for (unsigned j = 0; j < partial_plans[i].size(); ++j) {
                std::cout << "\t" << k+1 << ". ";
				const aptk::Action& a = *(instance()->actions()[ partial_plans[i][j] ]);
				std::cout << a.signature();
				std::cout << std::endl;
				++k;
			}
		}
		std::cout << std::endl;
		std::cout << "Sketch plan found" << std::endl;
		for (unsigned k = 0; k < sketch_plan.size(); ++k) {
			std::cout << k+1 << ". ";
			std::cout << "width = " << subproblem_widths[k] << ", ";
			std::cout << "rule = " << sketch_plan[k] << std::endl;
		}
		std::cout << std::endl;
		std::cout << "Plan found with cost: " << cost << std::endl;
		for ( unsigned k = 0; k < plan.size(); k++ ) {
			std::cout << k+1 << ". ";
			const aptk::Action& a = *(instance()->actions()[ plan[k] ]);
			std::cout << a.signature();
			std::cout << std::endl;
			plan_stream << a.signature() << std::endl;
		}
		std::cout << std::endl;
		float tf = aptk::time_used();
		unsigned expanded_f = engine.expanded();
		unsigned generated_f = engine.generated();
		std::cout << "Time: " << tf - t0 << std::endl;
		std::cout << "Generated: " << generated_f - generated_0 << std::endl;
		std::cout << "Expanded: " << expanded_f - expanded_0 << std::endl;
		t0 = tf;
		expanded_0 = expanded_f;
		generated_0 = generated_f;
		plan.clear();
	} else {
		std::cout << ";; NOT I-REACHABLE ;;" << std::endl;
	}
 	float total_time = aptk::time_used() - ref;
	std::cout << "Total time: " << total_time << std::endl;
	std::cout << "Nodes generated during search: " << engine.generated() << std::endl;
	std::cout << "Nodes expanded during search: " << engine.expanded() << std::endl;
	std::cout << "Nodes pruned by bound: " << engine.sum_pruned_by_bound() << std::endl;
	std::cout << "Average ef. width: " << engine.avg_B() << std::endl;
	std::cout << "Max ef. width: " << engine.max_B() << std::endl;
	plan_stream.close();
	return total_time;
}

void
SIWR_Planner::solve() {

	Fwd_Search_Problem	search_prob( instance() );

	// if ( !instance()->has_conditional_effects() ) {
	// 	H2_Fwd    h2( search_prob );
	// 	h2.compute_edeletes( *instance() );
	// }
	// else
	instance()->compute_edeletes();

	Gen_Lms_Fwd    gen_lms( search_prob );
	Landmarks_Graph graph( *instance() );

	gen_lms.set_only_goals( true );
	gen_lms.compute_lm_graph_set_additive( graph );

	std::cout << "Landmarks found: " << graph.num_landmarks() << std::endl;
	//graph.print( std::cout );

	std::cout << "Starting search with IW (time budget is 60 secs)..." << std::endl;

	Sketch_SIW_Fwd siw_engine( search_prob );
	siw_engine.set_goal_agenda( &graph );

	float iw_t = do_search( siw_engine );

	std::cout << "IW search completed in " << iw_t << " secs, check '" << m_log_filename << "' for details" << std::endl;

}
