(define (problem TPP)
(:domain TPP-Propositional)
(:objects
	goods1 - goods
	truck1 - truck
	market1 market2 market3 - market
	depot1 - depot
	level0 level1 level2 - level)

(:init
	(next level1 level0)
	(next level2 level1)
	(ready-to-load goods1 market1 level0)
	(ready-to-load goods1 market2 level0)
	(ready-to-load goods1 market3 level0)
	(stored goods1 level0)
	(loaded goods1 truck1 level0)
	(connected market1 market3)
	(connected market2 market3)
	(connected market3 market1)
	(connected market3 market2)
	(connected depot1 market2)
	(connected market2 depot1)
	(on-sale goods1 market1 level1)
	(on-sale goods1 market2 level1)
	(on-sale goods1 market3 level1)
	(at truck1 depot1))

(:goal (and
	(stored goods1 level2)))

)
