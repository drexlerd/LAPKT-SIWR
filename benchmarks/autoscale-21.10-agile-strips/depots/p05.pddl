(define (problem depot-27-2-2-29-29-8) (:domain depots)
(:objects
	depot0 depot1 depot2 depot3 depot4 depot5 depot6 depot7 depot8 depot9 depot10 depot11 depot12 depot13 depot14 depot15 depot16 depot17 depot18 depot19 depot20 depot21 depot22 depot23 depot24 depot25 depot26 - Depot
	distributor0 distributor1 - Distributor
	truck0 truck1 - Truck
	pallet0 pallet1 pallet2 pallet3 pallet4 pallet5 pallet6 pallet7 pallet8 pallet9 pallet10 pallet11 pallet12 pallet13 pallet14 pallet15 pallet16 pallet17 pallet18 pallet19 pallet20 pallet21 pallet22 pallet23 pallet24 pallet25 pallet26 pallet27 pallet28 - Pallet
	crate0 crate1 crate2 crate3 crate4 crate5 crate6 crate7 - Crate
	hoist0 hoist1 hoist2 hoist3 hoist4 hoist5 hoist6 hoist7 hoist8 hoist9 hoist10 hoist11 hoist12 hoist13 hoist14 hoist15 hoist16 hoist17 hoist18 hoist19 hoist20 hoist21 hoist22 hoist23 hoist24 hoist25 hoist26 hoist27 hoist28 - Hoist)
(:init
	(at pallet0 depot0)
	(clear pallet0)
	(at pallet1 depot1)
	(clear crate5)
	(at pallet2 depot2)
	(clear crate1)
	(at pallet3 depot3)
	(clear pallet3)
	(at pallet4 depot4)
	(clear pallet4)
	(at pallet5 depot5)
	(clear pallet5)
	(at pallet6 depot6)
	(clear pallet6)
	(at pallet7 depot7)
	(clear pallet7)
	(at pallet8 depot8)
	(clear pallet8)
	(at pallet9 depot9)
	(clear pallet9)
	(at pallet10 depot10)
	(clear pallet10)
	(at pallet11 depot11)
	(clear crate4)
	(at pallet12 depot12)
	(clear pallet12)
	(at pallet13 depot13)
	(clear crate7)
	(at pallet14 depot14)
	(clear pallet14)
	(at pallet15 depot15)
	(clear crate6)
	(at pallet16 depot16)
	(clear pallet16)
	(at pallet17 depot17)
	(clear pallet17)
	(at pallet18 depot18)
	(clear pallet18)
	(at pallet19 depot19)
	(clear pallet19)
	(at pallet20 depot20)
	(clear crate2)
	(at pallet21 depot21)
	(clear pallet21)
	(at pallet22 depot22)
	(clear crate0)
	(at pallet23 depot23)
	(clear crate3)
	(at pallet24 depot24)
	(clear pallet24)
	(at pallet25 depot25)
	(clear pallet25)
	(at pallet26 depot26)
	(clear pallet26)
	(at pallet27 distributor0)
	(clear pallet27)
	(at pallet28 distributor1)
	(clear pallet28)
	(at truck0 depot4)
	(at truck1 depot7)
	(at hoist0 depot0)
	(available hoist0)
	(at hoist1 depot1)
	(available hoist1)
	(at hoist2 depot2)
	(available hoist2)
	(at hoist3 depot3)
	(available hoist3)
	(at hoist4 depot4)
	(available hoist4)
	(at hoist5 depot5)
	(available hoist5)
	(at hoist6 depot6)
	(available hoist6)
	(at hoist7 depot7)
	(available hoist7)
	(at hoist8 depot8)
	(available hoist8)
	(at hoist9 depot9)
	(available hoist9)
	(at hoist10 depot10)
	(available hoist10)
	(at hoist11 depot11)
	(available hoist11)
	(at hoist12 depot12)
	(available hoist12)
	(at hoist13 depot13)
	(available hoist13)
	(at hoist14 depot14)
	(available hoist14)
	(at hoist15 depot15)
	(available hoist15)
	(at hoist16 depot16)
	(available hoist16)
	(at hoist17 depot17)
	(available hoist17)
	(at hoist18 depot18)
	(available hoist18)
	(at hoist19 depot19)
	(available hoist19)
	(at hoist20 depot20)
	(available hoist20)
	(at hoist21 depot21)
	(available hoist21)
	(at hoist22 depot22)
	(available hoist22)
	(at hoist23 depot23)
	(available hoist23)
	(at hoist24 depot24)
	(available hoist24)
	(at hoist25 depot25)
	(available hoist25)
	(at hoist26 depot26)
	(available hoist26)
	(at hoist27 distributor0)
	(available hoist27)
	(at hoist28 distributor1)
	(available hoist28)
	(at crate0 depot22)
	(on crate0 pallet22)
	(at crate1 depot2)
	(on crate1 pallet2)
	(at crate2 depot20)
	(on crate2 pallet20)
	(at crate3 depot23)
	(on crate3 pallet23)
	(at crate4 depot11)
	(on crate4 pallet11)
	(at crate5 depot1)
	(on crate5 pallet1)
	(at crate6 depot15)
	(on crate6 pallet15)
	(at crate7 depot13)
	(on crate7 pallet13)
)

(:goal (and
		(on crate0 crate4)
		(on crate1 pallet26)
		(on crate2 pallet4)
		(on crate3 pallet22)
		(on crate4 pallet14)
		(on crate6 pallet17)
	)
))
