; Domain designed by Alfonso Gerevini and Alessandro Saetti
; This file has been automatically generated by the generator available from
; http://zeus.ing.unibs.it/ipc-5/generators/index.html

(define (problem TPP)
(:domain TPP-Propositional)
(:objects
	goods1 goods2 goods3 goods4 goods5 goods6 goods7 goods8 goods9 goods10 goods11 - goods
	truck1 truck2 truck3 truck4 truck5 - truck
	market1 market2 market3 - market
	depot1 depot2 depot3 depot4 depot5 depot6 depot7 depot8 depot9 depot10 depot11 depot12 depot13 depot14 depot15 depot16 depot17 depot18 depot19 depot20 - depot
	level0 level1 level2 level3 level4 level5 level6 level7 level8 - level)

(:init
	(next level1 level0)
	(next level2 level1)
	(next level3 level2)
	(next level4 level3)
	(next level5 level4)
	(next level6 level5)
	(next level7 level6)
	(next level8 level7)
	(ready-to-load goods1 market1 level0)
	(ready-to-load goods1 market2 level0)
	(ready-to-load goods1 market3 level0)
	(ready-to-load goods2 market1 level0)
	(ready-to-load goods2 market2 level0)
	(ready-to-load goods2 market3 level0)
	(ready-to-load goods3 market1 level0)
	(ready-to-load goods3 market2 level0)
	(ready-to-load goods3 market3 level0)
	(ready-to-load goods4 market1 level0)
	(ready-to-load goods4 market2 level0)
	(ready-to-load goods4 market3 level0)
	(ready-to-load goods5 market1 level0)
	(ready-to-load goods5 market2 level0)
	(ready-to-load goods5 market3 level0)
	(ready-to-load goods6 market1 level0)
	(ready-to-load goods6 market2 level0)
	(ready-to-load goods6 market3 level0)
	(ready-to-load goods7 market1 level0)
	(ready-to-load goods7 market2 level0)
	(ready-to-load goods7 market3 level0)
	(ready-to-load goods8 market1 level0)
	(ready-to-load goods8 market2 level0)
	(ready-to-load goods8 market3 level0)
	(ready-to-load goods9 market1 level0)
	(ready-to-load goods9 market2 level0)
	(ready-to-load goods9 market3 level0)
	(ready-to-load goods10 market1 level0)
	(ready-to-load goods10 market2 level0)
	(ready-to-load goods10 market3 level0)
	(ready-to-load goods11 market1 level0)
	(ready-to-load goods11 market2 level0)
	(ready-to-load goods11 market3 level0)
	(stored goods1 level0)
	(stored goods2 level0)
	(stored goods3 level0)
	(stored goods4 level0)
	(stored goods5 level0)
	(stored goods6 level0)
	(stored goods7 level0)
	(stored goods8 level0)
	(stored goods9 level0)
	(stored goods10 level0)
	(stored goods11 level0)
	(loaded goods1 truck1 level0)
	(loaded goods1 truck2 level0)
	(loaded goods1 truck3 level0)
	(loaded goods1 truck4 level0)
	(loaded goods1 truck5 level0)
	(loaded goods2 truck1 level0)
	(loaded goods2 truck2 level0)
	(loaded goods2 truck3 level0)
	(loaded goods2 truck4 level0)
	(loaded goods2 truck5 level0)
	(loaded goods3 truck1 level0)
	(loaded goods3 truck2 level0)
	(loaded goods3 truck3 level0)
	(loaded goods3 truck4 level0)
	(loaded goods3 truck5 level0)
	(loaded goods4 truck1 level0)
	(loaded goods4 truck2 level0)
	(loaded goods4 truck3 level0)
	(loaded goods4 truck4 level0)
	(loaded goods4 truck5 level0)
	(loaded goods5 truck1 level0)
	(loaded goods5 truck2 level0)
	(loaded goods5 truck3 level0)
	(loaded goods5 truck4 level0)
	(loaded goods5 truck5 level0)
	(loaded goods6 truck1 level0)
	(loaded goods6 truck2 level0)
	(loaded goods6 truck3 level0)
	(loaded goods6 truck4 level0)
	(loaded goods6 truck5 level0)
	(loaded goods7 truck1 level0)
	(loaded goods7 truck2 level0)
	(loaded goods7 truck3 level0)
	(loaded goods7 truck4 level0)
	(loaded goods7 truck5 level0)
	(loaded goods8 truck1 level0)
	(loaded goods8 truck2 level0)
	(loaded goods8 truck3 level0)
	(loaded goods8 truck4 level0)
	(loaded goods8 truck5 level0)
	(loaded goods9 truck1 level0)
	(loaded goods9 truck2 level0)
	(loaded goods9 truck3 level0)
	(loaded goods9 truck4 level0)
	(loaded goods9 truck5 level0)
	(loaded goods10 truck1 level0)
	(loaded goods10 truck2 level0)
	(loaded goods10 truck3 level0)
	(loaded goods10 truck4 level0)
	(loaded goods10 truck5 level0)
	(loaded goods11 truck1 level0)
	(loaded goods11 truck2 level0)
	(loaded goods11 truck3 level0)
	(loaded goods11 truck4 level0)
	(loaded goods11 truck5 level0)
	(connected market1 market2)
	(connected market2 market1)
	(connected market2 market3)
	(connected market3 market2)
	(connected depot1 market1)
	(connected market1 depot1)
	(connected depot2 market3)
	(connected market3 depot2)
	(connected depot3 market1)
	(connected market1 depot3)
	(connected depot4 market1)
	(connected market1 depot4)
	(connected depot5 market1)
	(connected market1 depot5)
	(connected depot6 market1)
	(connected market1 depot6)
	(connected depot7 market1)
	(connected market1 depot7)
	(connected depot8 market1)
	(connected market1 depot8)
	(connected depot9 market1)
	(connected market1 depot9)
	(connected depot10 market3)
	(connected market3 depot10)
	(connected depot11 market1)
	(connected market1 depot11)
	(connected depot12 market1)
	(connected market1 depot12)
	(connected depot13 market3)
	(connected market3 depot13)
	(connected depot14 market1)
	(connected market1 depot14)
	(connected depot15 market3)
	(connected market3 depot15)
	(connected depot16 market1)
	(connected market1 depot16)
	(connected depot17 market2)
	(connected market2 depot17)
	(connected depot18 market2)
	(connected market2 depot18)
	(connected depot19 market3)
	(connected market3 depot19)
	(connected depot20 market1)
	(connected market1 depot20)
	(on-sale goods1 market1 level4)
	(on-sale goods2 market1 level4)
	(on-sale goods3 market1 level5)
	(on-sale goods4 market1 level1)
	(on-sale goods5 market1 level2)
	(on-sale goods6 market1 level2)
	(on-sale goods7 market1 level3)
	(on-sale goods8 market1 level6)
	(on-sale goods9 market1 level4)
	(on-sale goods10 market1 level7)
	(on-sale goods11 market1 level4)
	(on-sale goods1 market2 level4)
	(on-sale goods2 market2 level0)
	(on-sale goods3 market2 level3)
	(on-sale goods4 market2 level0)
	(on-sale goods5 market2 level0)
	(on-sale goods6 market2 level2)
	(on-sale goods7 market2 level0)
	(on-sale goods8 market2 level2)
	(on-sale goods9 market2 level4)
	(on-sale goods10 market2 level1)
	(on-sale goods11 market2 level0)
	(on-sale goods1 market3 level0)
	(on-sale goods2 market3 level0)
	(on-sale goods3 market3 level0)
	(on-sale goods4 market3 level5)
	(on-sale goods5 market3 level6)
	(on-sale goods6 market3 level0)
	(on-sale goods7 market3 level0)
	(on-sale goods8 market3 level0)
	(on-sale goods9 market3 level0)
	(on-sale goods10 market3 level0)
	(on-sale goods11 market3 level0)
	(at truck1 depot12)
	(at truck2 depot11)
	(at truck3 depot16)
	(at truck4 depot18)
	(at truck5 depot17))

(:goal (and
	(stored goods1 level5)
	(stored goods2 level2)
	(stored goods3 level8)
	(stored goods4 level3)
	(stored goods5 level5)
	(stored goods6 level1)
	(stored goods7 level3)
	(stored goods8 level4)
	(stored goods9 level7)
	(stored goods10 level5)
	(stored goods11 level4)))

)
