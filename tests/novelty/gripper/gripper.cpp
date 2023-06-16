#include <gtest/gtest.h>

#include "../../../include/dlplan/state_space.h"
#include "../../../include/dlplan/novelty.h"

#include <iostream>

using namespace dlplan::core;
using namespace dlplan::state_space;
using namespace dlplan::novelty;


namespace dlplan::tests::novelty {

TEST(DLPTests, NoveltyGripperTest) {
    auto result = generate_state_space("domain.pddl", "p-1-0.pddl");
    auto state_space = std::make_shared<StateSpace>(std::move(result.state_space));

    auto novelty_base_0 = std::make_shared<NoveltyBase>(
        state_space->get_instance_info()->get_atoms().size(),
        0);
    EXPECT_EQ(TupleGraph(novelty_base_0, state_space, 0).compute_repr(), "TupleGraph(\n  root_state_index=0,\n  tuple_nodes=[    TupleNode(index=0, tuple_index=0, state_indices=[0], predecessors=[], successors=[]),\n    TupleNode(index=1, tuple_index=0, state_indices=[1], predecessors=[], successors=[]),\n    TupleNode(index=2, tuple_index=0, state_indices=[2], predecessors=[], successors=[]),\n    TupleNode(index=3, tuple_index=0, state_indices=[3], predecessors=[], successors=[])\n  ],\n  node_indices_by_distance=[\n    [0],\n    [1, 2, 3]\n  ],\n  state_indices_by_distance=[\n    [0],\n    [1, 2, 3]\n  ]\n)");
    EXPECT_EQ(TupleGraph(novelty_base_0, state_space, 1).compute_repr(), "TupleGraph(\n  root_state_index=1,\n  tuple_nodes=[    TupleNode(index=0, tuple_index=0, state_indices=[0], predecessors=[], successors=[]),\n    TupleNode(index=1, tuple_index=0, state_indices=[1], predecessors=[], successors=[])\n  ],\n  node_indices_by_distance=[\n    [1],\n    [0]\n  ],\n  state_indices_by_distance=[\n    [1],\n    [0]\n  ]\n)");
    EXPECT_EQ(TupleGraph(novelty_base_0, state_space, 2).compute_repr(), "TupleGraph(\n  root_state_index=2,\n  tuple_nodes=[    TupleNode(index=0, tuple_index=0, state_indices=[0], predecessors=[], successors=[]),\n    TupleNode(index=1, tuple_index=0, state_indices=[2], predecessors=[], successors=[]),\n    TupleNode(index=2, tuple_index=0, state_indices=[4], predecessors=[], successors=[])\n  ],\n  node_indices_by_distance=[\n    [1],\n    [0, 2]\n  ],\n  state_indices_by_distance=[\n    [2],\n    [0, 4]\n  ]\n)");
    EXPECT_EQ(TupleGraph(novelty_base_0, state_space, 3).compute_repr(), "TupleGraph(\n  root_state_index=3,\n  tuple_nodes=[    TupleNode(index=0, tuple_index=0, state_indices=[0], predecessors=[], successors=[]),\n    TupleNode(index=1, tuple_index=0, state_indices=[3], predecessors=[], successors=[]),\n    TupleNode(index=2, tuple_index=0, state_indices=[5], predecessors=[], successors=[])\n  ],\n  node_indices_by_distance=[\n    [1],\n    [0, 2]\n  ],\n  state_indices_by_distance=[\n    [3],\n    [0, 5]\n  ]\n)");
    EXPECT_EQ(TupleGraph(novelty_base_0, state_space, 4).compute_repr(), "TupleGraph(\n  root_state_index=4,\n  tuple_nodes=[    TupleNode(index=0, tuple_index=0, state_indices=[2], predecessors=[], successors=[]),\n    TupleNode(index=1, tuple_index=0, state_indices=[4], predecessors=[], successors=[]),\n    TupleNode(index=2, tuple_index=0, state_indices=[6], predecessors=[], successors=[])\n  ],\n  node_indices_by_distance=[\n    [1],\n    [0, 2]\n  ],\n  state_indices_by_distance=[\n    [4],\n    [2, 6]\n  ]\n)");
    EXPECT_EQ(TupleGraph(novelty_base_0, state_space, 5).compute_repr(), "TupleGraph(\n  root_state_index=5,\n  tuple_nodes=[    TupleNode(index=0, tuple_index=0, state_indices=[3], predecessors=[], successors=[]),\n    TupleNode(index=1, tuple_index=0, state_indices=[5], predecessors=[], successors=[]),\n    TupleNode(index=2, tuple_index=0, state_indices=[6], predecessors=[], successors=[])\n  ],\n  node_indices_by_distance=[\n    [1],\n    [0, 2]\n  ],\n  state_indices_by_distance=[\n    [5],\n    [3, 6]\n  ]\n)");
    EXPECT_EQ(TupleGraph(novelty_base_0, state_space, 6).compute_repr(), "TupleGraph(\n  root_state_index=6,\n  tuple_nodes=[    TupleNode(index=0, tuple_index=0, state_indices=[4], predecessors=[], successors=[]),\n    TupleNode(index=1, tuple_index=0, state_indices=[5], predecessors=[], successors=[]),\n    TupleNode(index=2, tuple_index=0, state_indices=[6], predecessors=[], successors=[]),\n    TupleNode(index=3, tuple_index=0, state_indices=[7], predecessors=[], successors=[])\n  ],\n  node_indices_by_distance=[\n    [2],\n    [0, 1, 3]\n  ],\n  state_indices_by_distance=[\n    [6],\n    [4, 5, 7]\n  ]\n)");
    EXPECT_EQ(TupleGraph(novelty_base_0, state_space, 7).compute_repr(), "TupleGraph(\n  root_state_index=7,\n  tuple_nodes=[    TupleNode(index=0, tuple_index=0, state_indices=[6], predecessors=[], successors=[]),\n    TupleNode(index=1, tuple_index=0, state_indices=[7], predecessors=[], successors=[])\n  ],\n  node_indices_by_distance=[\n    [1],\n    [0]\n  ],\n  state_indices_by_distance=[\n    [7],\n    [6]\n  ]\n)");

    auto novelty_base_1 = std::make_shared<NoveltyBase>(
        state_space->get_instance_info()->get_atoms().size(),
        1);

    std::cout << TupleGraph(novelty_base_1, state_space, 0).to_dot(1) << std::endl;
    EXPECT_EQ(TupleGraph(novelty_base_1, state_space, 0).compute_repr(), "TupleGraph(\n  root_state_index=0,\n  tuple_nodes=[    TupleNode(index=0, tuple_index=0, state_indices=[0], predecessors=[], successors=[5, 6, 7]),\n    TupleNode(index=1, tuple_index=2, state_indices=[0], predecessors=[], successors=[5, 6, 7]),\n    TupleNode(index=2, tuple_index=3, state_indices=[0], predecessors=[], successors=[5, 6, 7]),\n    TupleNode(index=3, tuple_index=4, state_indices=[0], predecessors=[], successors=[5, 6, 7]),\n    TupleNode(index=4, tuple_index=8, state_indices=[0], predecessors=[], successors=[5, 6, 7]),\n    TupleNode(index=5, tuple_index=1, state_indices=[1], predecessors=[0, 1, 2, 3, 4], successors=[]),\n    TupleNode(index=6, tuple_index=6, state_indices=[2], predecessors=[0, 1, 2, 3, 4], successors=[]),\n    TupleNode(index=7, tuple_index=7, state_indices=[3], predecessors=[0, 1, 2, 3, 4], successors=[])\n  ],\n  node_indices_by_distance=[\n    [0, 1, 2, 3, 4],\n    [5, 6, 7]\n  ],\n  state_indices_by_distance=[\n    [0],\n    [1, 2, 3]\n  ]\n)");
    EXPECT_EQ(TupleGraph(novelty_base_1, state_space, 1).compute_repr(), "TupleGraph(\n  root_state_index=1,\n  tuple_nodes=[    TupleNode(index=0, tuple_index=0, state_indices=[0], predecessors=[1, 2, 3, 4, 5], successors=[6, 7]),\n    TupleNode(index=1, tuple_index=1, state_indices=[1], predecessors=[], successors=[0]),\n    TupleNode(index=2, tuple_index=2, state_indices=[1], predecessors=[], successors=[0]),\n    TupleNode(index=3, tuple_index=3, state_indices=[1], predecessors=[], successors=[0]),\n    TupleNode(index=4, tuple_index=4, state_indices=[1], predecessors=[], successors=[0]),\n    TupleNode(index=5, tuple_index=8, state_indices=[1], predecessors=[], successors=[0]),\n    TupleNode(index=6, tuple_index=6, state_indices=[2], predecessors=[0], successors=[]),\n    TupleNode(index=7, tuple_index=7, state_indices=[3], predecessors=[0], successors=[])\n  ],\n  node_indices_by_distance=[\n    [1, 2, 3, 4, 5],\n    [0],\n    [6, 7]\n  ],\n  state_indices_by_distance=[\n    [1],\n    [0],\n    [2, 3]\n  ]\n)");
    EXPECT_EQ(TupleGraph(novelty_base_1, state_space, 2).compute_repr(), "TupleGraph(\n  root_state_index=2,\n  tuple_nodes=[    TupleNode(index=0, tuple_index=2, state_indices=[0], predecessors=[2, 3, 4, 5], successors=[6]),\n    TupleNode(index=1, tuple_index=4, state_indices=[0], predecessors=[2, 3, 4, 5], successors=[6]),\n    TupleNode(index=2, tuple_index=0, state_indices=[2], predecessors=[], successors=[0, 1, 7]),\n    TupleNode(index=3, tuple_index=3, state_indices=[2], predecessors=[], successors=[0, 1, 7]),\n    TupleNode(index=4, tuple_index=6, state_indices=[2], predecessors=[], successors=[0, 1, 7]),\n    TupleNode(index=5, tuple_index=8, state_indices=[2], predecessors=[], successors=[0, 1, 7]),\n    TupleNode(index=6, tuple_index=7, state_indices=[3], predecessors=[0, 1], successors=[]),\n    TupleNode(index=7, tuple_index=1, state_indices=[4], predecessors=[2, 3, 4, 5], successors=[8]),\n    TupleNode(index=8, tuple_index=5, state_indices=[6], predecessors=[7], successors=[])\n  ],\n  node_indices_by_distance=[\n    [2, 3, 4, 5],\n    [0, 1, 7],\n    [6, 8]\n  ],\n  state_indices_by_distance=[\n    [2],\n    [0, 4],\n    [1, 3, 6]\n  ]\n)");
    EXPECT_EQ(TupleGraph(novelty_base_1, state_space, 3).compute_repr(), "TupleGraph(\n  root_state_index=3,\n  tuple_nodes=[    TupleNode(index=0, tuple_index=3, state_indices=[0], predecessors=[3, 4, 5, 6], successors=[2]),\n    TupleNode(index=1, tuple_index=4, state_indices=[0], predecessors=[3, 4, 5, 6], successors=[2]),\n    TupleNode(index=2, tuple_index=6, state_indices=[2], predecessors=[0, 1], successors=[]),\n    TupleNode(index=3, tuple_index=0, state_indices=[3], predecessors=[], successors=[0, 1, 7]),\n    TupleNode(index=4, tuple_index=2, state_indices=[3], predecessors=[], successors=[0, 1, 7]),\n    TupleNode(index=5, tuple_index=7, state_indices=[3], predecessors=[], successors=[0, 1, 7]),\n    TupleNode(index=6, tuple_index=8, state_indices=[3], predecessors=[], successors=[0, 1, 7]),\n    TupleNode(index=7, tuple_index=1, state_indices=[5], predecessors=[3, 4, 5, 6], successors=[8]),\n    TupleNode(index=8, tuple_index=5, state_indices=[6], predecessors=[7], successors=[])\n  ],\n  node_indices_by_distance=[\n    [3, 4, 5, 6],\n    [0, 1, 7],\n    [2, 8]\n  ],\n  state_indices_by_distance=[\n    [3],\n    [0, 5],\n    [1, 2, 6]\n  ]\n)");
    EXPECT_EQ(TupleGraph(novelty_base_1, state_space, 4).compute_repr(), "TupleGraph(\n  root_state_index=4,\n  tuple_nodes=[    TupleNode(index=0, tuple_index=4, state_indices=[0], predecessors=[1], successors=[]),\n    TupleNode(index=1, tuple_index=0, state_indices=[2], predecessors=[2, 3, 4, 5], successors=[0]),\n    TupleNode(index=2, tuple_index=1, state_indices=[4], predecessors=[], successors=[1, 7, 8]),\n    TupleNode(index=3, tuple_index=3, state_indices=[4], predecessors=[], successors=[1, 7, 8]),\n    TupleNode(index=4, tuple_index=6, state_indices=[4], predecessors=[], successors=[1, 7, 8]),\n    TupleNode(index=5, tuple_index=8, state_indices=[4], predecessors=[], successors=[1, 7, 8]),\n    TupleNode(index=6, tuple_index=7, state_indices=[5], predecessors=[7, 8], successors=[]),\n    TupleNode(index=7, tuple_index=2, state_indices=[6], predecessors=[2, 3, 4, 5], successors=[6]),\n    TupleNode(index=8, tuple_index=5, state_indices=[6], predecessors=[2, 3, 4, 5], successors=[6])\n  ],\n  node_indices_by_distance=[\n    [2, 3, 4, 5],\n    [1, 7, 8],\n    [0, 6]\n  ],\n  state_indices_by_distance=[\n    [4],\n    [2, 6],\n    [0, 5, 7]\n  ]\n)");
    EXPECT_EQ(TupleGraph(novelty_base_1, state_space, 5).compute_repr(), "TupleGraph(\n  root_state_index=5,\n  tuple_nodes=[    TupleNode(index=0, tuple_index=4, state_indices=[0], predecessors=[1], successors=[]),\n    TupleNode(index=1, tuple_index=0, state_indices=[3], predecessors=[3, 4, 5, 6], successors=[0]),\n    TupleNode(index=2, tuple_index=6, state_indices=[4], predecessors=[7, 8], successors=[]),\n    TupleNode(index=3, tuple_index=1, state_indices=[5], predecessors=[], successors=[1, 7, 8]),\n    TupleNode(index=4, tuple_index=2, state_indices=[5], predecessors=[], successors=[1, 7, 8]),\n    TupleNode(index=5, tuple_index=7, state_indices=[5], predecessors=[], successors=[1, 7, 8]),\n    TupleNode(index=6, tuple_index=8, state_indices=[5], predecessors=[], successors=[1, 7, 8]),\n    TupleNode(index=7, tuple_index=3, state_indices=[6], predecessors=[3, 4, 5, 6], successors=[2]),\n    TupleNode(index=8, tuple_index=5, state_indices=[6], predecessors=[3, 4, 5, 6], successors=[2])\n  ],\n  node_indices_by_distance=[\n    [3, 4, 5, 6],\n    [1, 7, 8],\n    [0, 2]\n  ],\n  state_indices_by_distance=[\n    [5],\n    [3, 6],\n    [0, 4, 7]\n  ]\n)");
    EXPECT_EQ(TupleGraph(novelty_base_1, state_space, 6).compute_repr(), "TupleGraph(\n  root_state_index=6,\n  tuple_nodes=[    TupleNode(index=0, tuple_index=6, state_indices=[4], predecessors=[2, 3, 4, 5, 6], successors=[]),\n    TupleNode(index=1, tuple_index=7, state_indices=[5], predecessors=[2, 3, 4, 5, 6], successors=[]),\n    TupleNode(index=2, tuple_index=1, state_indices=[6], predecessors=[], successors=[0, 1, 7]),\n    TupleNode(index=3, tuple_index=2, state_indices=[6], predecessors=[], successors=[0, 1, 7]),\n    TupleNode(index=4, tuple_index=3, state_indices=[6], predecessors=[], successors=[0, 1, 7]),\n    TupleNode(index=5, tuple_index=5, state_indices=[6], predecessors=[], successors=[0, 1, 7]),\n    TupleNode(index=6, tuple_index=8, state_indices=[6], predecessors=[], successors=[0, 1, 7]),\n    TupleNode(index=7, tuple_index=0, state_indices=[7], predecessors=[2, 3, 4, 5, 6], successors=[])\n  ],\n  node_indices_by_distance=[\n    [2, 3, 4, 5, 6],\n    [0, 1, 7]\n  ],\n  state_indices_by_distance=[\n    [6],\n    [4, 5, 7]\n  ]\n)");
    EXPECT_EQ(TupleGraph(novelty_base_1, state_space, 7).compute_repr(), "TupleGraph(\n  root_state_index=7,\n  tuple_nodes=[    TupleNode(index=0, tuple_index=6, state_indices=[4], predecessors=[2], successors=[]),\n    TupleNode(index=1, tuple_index=7, state_indices=[5], predecessors=[2], successors=[]),\n    TupleNode(index=2, tuple_index=1, state_indices=[6], predecessors=[3, 4, 5, 6, 7], successors=[0, 1]),\n    TupleNode(index=3, tuple_index=0, state_indices=[7], predecessors=[], successors=[2]),\n    TupleNode(index=4, tuple_index=2, state_indices=[7], predecessors=[], successors=[2]),\n    TupleNode(index=5, tuple_index=3, state_indices=[7], predecessors=[], successors=[2]),\n    TupleNode(index=6, tuple_index=5, state_indices=[7], predecessors=[], successors=[2]),\n    TupleNode(index=7, tuple_index=8, state_indices=[7], predecessors=[], successors=[2])\n  ],\n  node_indices_by_distance=[\n    [3, 4, 5, 6, 7],\n    [2],\n    [0, 1]\n  ],\n  state_indices_by_distance=[\n    [7],\n    [6],\n    [4, 5]\n  ]\n)");
}

}
