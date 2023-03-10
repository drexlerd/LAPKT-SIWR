from __future__ import print_function

from collections import defaultdict

from . import build_model
from . import pddl_to_prolog
from . import pddl
from . import fact_groups
from . import timers
import sys

from . import normalize


USE_PARTIAL_ENCODING = True

def get_fluent_facts(task, model):
	fluent_predicates = set()
	for action in task.actions:
		for effect in action.effects:
			fluent_predicates.add(effect.literal.predicate)
	for axiom in task.axioms:
		fluent_predicates.add(axiom.name)
	return set([fact for fact in model
			if fact.predicate in fluent_predicates])

def get_objects_by_type(typed_objects, types):
	result = defaultdict(list)
	supertypes = {}
	for type in types:
		supertypes[type.name] = type.supertype_names
	for obj in typed_objects:
		result[obj.type].append(obj.name)
		for type in supertypes[obj.type]:
			result[type].append(obj.name)
	return result

def instantiate(task, model):
	relaxed_reachable = False
	fluent_facts = get_fluent_facts(task, model)
	init_facts = set(task.init)

	type_to_objects = get_objects_by_type(task.objects, task.types)

	instantiated_actions = []
	instantiated_axioms = []
	reachable_action_parameters = defaultdict(list)
	for atom in model:
		if isinstance(atom.predicate, pddl.Action):
			action = atom.predicate
			parameters = action.parameters
			inst_parameters = atom.args[:len(parameters)]
			# Note: It's important that we use the action object
			# itself as the key in reachable_action_parameters (rather
			# than action.name) since we can have multiple different
			# actions with the same name after normalization, and we
			# want to distinguish their instantiations.
			reachable_action_parameters[action].append(inst_parameters)
			variable_mapping = dict([(par.name, arg)
						for par, arg in zip(parameters, atom.args)])
			inst_action = action.instantiate(variable_mapping, init_facts,
							fluent_facts, type_to_objects)
			if inst_action:
				instantiated_actions.append(inst_action)
		elif isinstance(atom.predicate, pddl.Axiom):
			axiom = atom.predicate
			variable_mapping = dict([(par.name, arg)
						for par, arg in zip(axiom.parameters, atom.args)])
			inst_axiom = axiom.instantiate(variable_mapping, init_facts, fluent_facts)
			if inst_axiom:
				instantiated_axioms.append(inst_axiom)
		elif atom.predicate == "@goal-reachable":
			relaxed_reachable = True

	return (relaxed_reachable, init_facts, fluent_facts, instantiated_actions,
		sorted(instantiated_axioms), reachable_action_parameters)

def explore(task):
	prog = pddl_to_prolog.translate(task)
	model = build_model.compute_model(prog)
	with timers.timing("Completing instantiation"):
		return instantiate(task, model)


class PropositionalDetAction :

	def __init__( self, name, cost ) :
		self.name = name
		self.cost = cost
		self.precondition = []
		self.effects = []

	def set_precondition( self, prec, atom_table ) :
		for p in prec :
			self.precondition.append( ( atom_table[p.text()], p.negated ) )

	def add_effect( self, adds, dels, atom_table ) :
		effs = []
		for _, lit in adds :
			effs.append( ( atom_table[lit.text()], False )  )
		for _, lit in dels :
			effs.append( (atom_table[lit.text()], True) )
		self.effects.append( effs )

def encode( lits, atom_table ) :
	encoded = []
	if isinstance( lits, pddl.Atom ) or isinstance( lits, pddl.NegatedAtom ) :
		# singleton
		index = atom_table[lits.text()]
		encoded.append( (index, lits.negated) )
		return encoded

	if isinstance( lits, pddl.Conjunction ) :
		lits = [ p for p in lits.parts ]

	for p in lits :
		try :
			index = atom_table[p.text()]
		except KeyError :
			continue
		encoded.append( (index, p.negated) )
	return encoded

def default( domain_file, problem_file, output_task ) :
	parsing_timer = timers.Timer()
	print("Domain: %s Problem: %s"%(domain_file, problem_file) )

	task = pddl.open( problem_file, domain_file)

	relaxed_reachable, init_facts, atoms, actions, axioms, reachable_action_params = explore(task)
	print("goal relaxed reachable: %s" % relaxed_reachable)
	if not relaxed_reachable :
		print("No weak plan exists")
		sys.exit(2)

	print("%d atoms" % len(atoms))

	with timers.timing("Computing fact groups", block=True):
		groups, mutex_groups, translation_key = fact_groups.compute_groups(
			task, atoms, reachable_action_params,
			partial_encoding=USE_PARTIAL_ENCODING)

	index = 0
	atom_table = {}


	for atom in atoms :
		atom.index = index
		atom_table[ atom.text() ] = index
		output_task.add_atom( atom.text() )
		index += 1

	print("Invariants %d"%len(mutex_groups))
	for group in mutex_groups :
		if len(group) >= 2 :
			print("{%s}" % ", ".join(map(str, group)))
			output_task.add_invariant( encode( group, atom_table ) )
			#print( encode( group, atom_table ) )

	print("Deterministic %d actions" % len(actions))
	nd_actions = {}
	for action in actions :
		nd_action = PropositionalDetAction( action.name, action.cost )
		nd_action.set_precondition( action.precondition, atom_table )
		nd_action.add_effect( action.add_effects, action.del_effects, atom_table )
		nd_actions[ nd_action.name ] = nd_action

	index = 0
	for action in nd_actions.values() :
		output_task.add_action( action.name )
		output_task.add_precondition( index, action.precondition )
		text_prec = []
		for p, v in action.precondition :
			text_prec.append( "%s=%s"%(output_task.get_atom_name( p ),  not v) )
		for eff in action.effects :
			output_task.add_effect( index, eff )
			text_eff = []
			for p, v in eff :
				text_eff.append( "%s=%s"%(output_task.get_atom_name( p ), not v) )
		index += 1
	output_task.set_domain_name( task.domain_name )
	output_task.set_problem_name( task.task_name )
	output_task.set_init( encode( task.init, atom_table ) )
	output_task.set_goal( encode( task.goal, atom_table ) )
	output_task.parsing_time = parsing_timer.report()



def sketch(domain_file, problem_file, sketch_name, output_task):
    parsing_timer = timers.Timer()
    print("Domain: %s Problem: %s" % (domain_file, problem_file))

    task = pddl.open( problem_file, domain_file)
    normalize.normalize(task)

    relaxed_reachable, init_facts, atoms, actions, axioms, reachable_action_params = explore(task)
    print("goal relaxed reachable: %s" % relaxed_reachable)
    if not relaxed_reachable :
        print("No weak plan exists")
        sys.exit(2)

    print("%d atoms" % len(atoms))

    with timers.timing("Computing fact groups", block=True):
        groups, mutex_groups, translation_key = fact_groups.compute_groups(
            task, atoms, reachable_action_params)


    # Sketch: add fol information for state feature evaluation
    atoms = sorted(atoms, key=lambda x : x.text())
    atom_names = []
    atom_table = {}
    index = 0
    predicates_idx = dict()
    objects_idx = dict()
    for atom in atoms:
        # Note: we only consider atoms relevant for state features
        if not isinstance(atom, pddl.Atom): continue
        p_signature = atom.text()
        atom_names.append(p_signature)
        p_name = atom.predicate
        # print("[%s] [%s]" % (p_name, p_signature))
        objects = []
        try:
            p_idx = predicates_idx[p_name]
        except KeyError:
            p_idx = len(predicates_idx)
            predicates_idx[p_name] = p_idx
        for object_name in atom.args:
            try:
                o_idx = objects_idx[object_name]
            except KeyError:
                o_idx = len(objects_idx)
                objects_idx[object_name] = o_idx
            objects.append((o_idx, object_name))
        atom_table[p_signature] = index
        index += 1
        output_task.add_atom_ext(p_signature.encode('utf8'), p_idx, p_name.encode('utf8'), objects)

   # print("Invariants %d"%len(mutex_groups))
   # for group in mutex_groups:
   #     if len(group) >= 2 :
   #         print("{%s}" % ", ".join(map(str, group)))
   #         output_task.add_invariant( encode( group, atom_table ) )
   #         #print( encode( group, atom_table ) )

    print("Deterministic %d actions" % len(actions))
    nd_actions = {}
    for action in actions :
        nd_action = PropositionalDetAction( action.name, action.cost )
        nd_action.set_precondition( action.precondition, atom_table )
        nd_action.add_effect( action.add_effects, action.del_effects, atom_table )
        nd_actions[ nd_action.name ] = nd_action

    output_task.create_negated_fluents()

    index = 0
    for action in nd_actions.values() :
        output_task.add_action( action.name )
        # output_task.add_precondition( index, action.precondition )
        text_prec = []
        for p, v in action.precondition :
            text_prec.append( "%s=%s"%(output_task.get_atom_name( p ),  not v) )
        for eff in action.effects :
            output_task.add_effect( index, eff )
            text_eff = []
            for p, v in eff :
                text_eff.append( "%s=%s"%(output_task.get_atom_name( p ), not v) )
        index += 1
    #output_task.set_domain_name( task.domain_name )
    #output_task.set_problem_name( task.task_name )
    #output_task.set_init( encode( task.init, atom_table ) )
    #output_task.set_goal( encode( task.goal, atom_table ) )
    #output_task.parsing_time = parsing_timer.report()

    # add init_facts
    for atom in init_facts:
        # Note: we only consider atoms relevant for state features
        if not isinstance(atom, pddl.Atom): continue
        p_signature = atom.text()
        # dont add fluents that were already added.
        if p_signature in atom_names: continue
        p_name = atom.predicate
        # print("[%s] [%s]" % (p_name, p_signature))
        objects = []
        try:
            p_idx = predicates_idx[p_name]
        except KeyError:
            p_idx = len(predicates_idx)
            predicates_idx[p_name] = p_idx
        for object_name in atom.args:
            try:
                o_idx = objects_idx[object_name]
            except KeyError:
                o_idx = len(objects_idx)
                objects_idx[object_name] = o_idx
            objects.append((o_idx, object_name))
        index += 1
        output_task.add_init_atom_ext(p_signature.encode('utf8'), p_idx, p_name.encode('utf8'), objects)

    # Sketch: parse file
    output_task.set_sketch_name(sketch_name)
