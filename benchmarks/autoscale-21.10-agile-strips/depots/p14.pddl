(define (problem depot-68-2-2-70-70-21) (:domain depots)
(:objects
	depot0 depot1 depot2 depot3 depot4 depot5 depot6 depot7 depot8 depot9 depot10 depot11 depot12 depot13 depot14 depot15 depot16 depot17 depot18 depot19 depot20 depot21 depot22 depot23 depot24 depot25 depot26 depot27 depot28 depot29 depot30 depot31 depot32 depot33 depot34 depot35 depot36 depot37 depot38 depot39 depot40 depot41 depot42 depot43 depot44 depot45 depot46 depot47 depot48 depot49 depot50 depot51 depot52 depot53 depot54 depot55 depot56 depot57 depot58 depot59 depot60 depot61 depot62 depot63 depot64 depot65 depot66 depot67 - Depot
	distributor0 distributor1 - Distributor
	truck0 truck1 - Truck
	pallet0 pallet1 pallet2 pallet3 pallet4 pallet5 pallet6 pallet7 pallet8 pallet9 pallet10 pallet11 pallet12 pallet13 pallet14 pallet15 pallet16 pallet17 pallet18 pallet19 pallet20 pallet21 pallet22 pallet23 pallet24 pallet25 pallet26 pallet27 pallet28 pallet29 pallet30 pallet31 pallet32 pallet33 pallet34 pallet35 pallet36 pallet37 pallet38 pallet39 pallet40 pallet41 pallet42 pallet43 pallet44 pallet45 pallet46 pallet47 pallet48 pallet49 pallet50 pallet51 pallet52 pallet53 pallet54 pallet55 pallet56 pallet57 pallet58 pallet59 pallet60 pallet61 pallet62 pallet63 pallet64 pallet65 pallet66 pallet67 pallet68 pallet69 - Pallet
	crate0 crate1 crate2 crate3 crate4 crate5 crate6 crate7 crate8 crate9 crate10 crate11 crate12 crate13 crate14 crate15 crate16 crate17 crate18 crate19 crate20 - Crate
	hoist0 hoist1 hoist2 hoist3 hoist4 hoist5 hoist6 hoist7 hoist8 hoist9 hoist10 hoist11 hoist12 hoist13 hoist14 hoist15 hoist16 hoist17 hoist18 hoist19 hoist20 hoist21 hoist22 hoist23 hoist24 hoist25 hoist26 hoist27 hoist28 hoist29 hoist30 hoist31 hoist32 hoist33 hoist34 hoist35 hoist36 hoist37 hoist38 hoist39 hoist40 hoist41 hoist42 hoist43 hoist44 hoist45 hoist46 hoist47 hoist48 hoist49 hoist50 hoist51 hoist52 hoist53 hoist54 hoist55 hoist56 hoist57 hoist58 hoist59 hoist60 hoist61 hoist62 hoist63 hoist64 hoist65 hoist66 hoist67 hoist68 hoist69 - Hoist)
(:init
	(at pallet0 depot0)
	(clear pallet0)
	(at pallet1 depot1)
	(clear pallet1)
	(at pallet2 depot2)
	(clear pallet2)
	(at pallet3 depot3)
	(clear crate20)
	(at pallet4 depot4)
	(clear crate3)
	(at pallet5 depot5)
	(clear crate16)
	(at pallet6 depot6)
	(clear crate11)
	(at pallet7 depot7)
	(clear pallet7)
	(at pallet8 depot8)
	(clear pallet8)
	(at pallet9 depot9)
	(clear pallet9)
	(at pallet10 depot10)
	(clear pallet10)
	(at pallet11 depot11)
	(clear pallet11)
	(at pallet12 depot12)
	(clear pallet12)
	(at pallet13 depot13)
	(clear pallet13)
	(at pallet14 depot14)
	(clear pallet14)
	(at pallet15 depot15)
	(clear pallet15)
	(at pallet16 depot16)
	(clear pallet16)
	(at pallet17 depot17)
	(clear pallet17)
	(at pallet18 depot18)
	(clear pallet18)
	(at pallet19 depot19)
	(clear crate19)
	(at pallet20 depot20)
	(clear pallet20)
	(at pallet21 depot21)
	(clear pallet21)
	(at pallet22 depot22)
	(clear crate10)
	(at pallet23 depot23)
	(clear pallet23)
	(at pallet24 depot24)
	(clear pallet24)
	(at pallet25 depot25)
	(clear pallet25)
	(at pallet26 depot26)
	(clear crate12)
	(at pallet27 depot27)
	(clear pallet27)
	(at pallet28 depot28)
	(clear pallet28)
	(at pallet29 depot29)
	(clear crate15)
	(at pallet30 depot30)
	(clear pallet30)
	(at pallet31 depot31)
	(clear crate9)
	(at pallet32 depot32)
	(clear pallet32)
	(at pallet33 depot33)
	(clear pallet33)
	(at pallet34 depot34)
	(clear crate4)
	(at pallet35 depot35)
	(clear crate14)
	(at pallet36 depot36)
	(clear pallet36)
	(at pallet37 depot37)
	(clear pallet37)
	(at pallet38 depot38)
	(clear pallet38)
	(at pallet39 depot39)
	(clear crate18)
	(at pallet40 depot40)
	(clear pallet40)
	(at pallet41 depot41)
	(clear pallet41)
	(at pallet42 depot42)
	(clear pallet42)
	(at pallet43 depot43)
	(clear crate7)
	(at pallet44 depot44)
	(clear crate0)
	(at pallet45 depot45)
	(clear pallet45)
	(at pallet46 depot46)
	(clear crate8)
	(at pallet47 depot47)
	(clear pallet47)
	(at pallet48 depot48)
	(clear pallet48)
	(at pallet49 depot49)
	(clear crate1)
	(at pallet50 depot50)
	(clear crate5)
	(at pallet51 depot51)
	(clear pallet51)
	(at pallet52 depot52)
	(clear pallet52)
	(at pallet53 depot53)
	(clear pallet53)
	(at pallet54 depot54)
	(clear pallet54)
	(at pallet55 depot55)
	(clear pallet55)
	(at pallet56 depot56)
	(clear pallet56)
	(at pallet57 depot57)
	(clear pallet57)
	(at pallet58 depot58)
	(clear crate6)
	(at pallet59 depot59)
	(clear pallet59)
	(at pallet60 depot60)
	(clear crate17)
	(at pallet61 depot61)
	(clear pallet61)
	(at pallet62 depot62)
	(clear pallet62)
	(at pallet63 depot63)
	(clear pallet63)
	(at pallet64 depot64)
	(clear pallet64)
	(at pallet65 depot65)
	(clear pallet65)
	(at pallet66 depot66)
	(clear crate13)
	(at pallet67 depot67)
	(clear pallet67)
	(at pallet68 distributor0)
	(clear pallet68)
	(at pallet69 distributor1)
	(clear crate2)
	(at truck0 depot58)
	(at truck1 depot48)
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
	(at hoist27 depot27)
	(available hoist27)
	(at hoist28 depot28)
	(available hoist28)
	(at hoist29 depot29)
	(available hoist29)
	(at hoist30 depot30)
	(available hoist30)
	(at hoist31 depot31)
	(available hoist31)
	(at hoist32 depot32)
	(available hoist32)
	(at hoist33 depot33)
	(available hoist33)
	(at hoist34 depot34)
	(available hoist34)
	(at hoist35 depot35)
	(available hoist35)
	(at hoist36 depot36)
	(available hoist36)
	(at hoist37 depot37)
	(available hoist37)
	(at hoist38 depot38)
	(available hoist38)
	(at hoist39 depot39)
	(available hoist39)
	(at hoist40 depot40)
	(available hoist40)
	(at hoist41 depot41)
	(available hoist41)
	(at hoist42 depot42)
	(available hoist42)
	(at hoist43 depot43)
	(available hoist43)
	(at hoist44 depot44)
	(available hoist44)
	(at hoist45 depot45)
	(available hoist45)
	(at hoist46 depot46)
	(available hoist46)
	(at hoist47 depot47)
	(available hoist47)
	(at hoist48 depot48)
	(available hoist48)
	(at hoist49 depot49)
	(available hoist49)
	(at hoist50 depot50)
	(available hoist50)
	(at hoist51 depot51)
	(available hoist51)
	(at hoist52 depot52)
	(available hoist52)
	(at hoist53 depot53)
	(available hoist53)
	(at hoist54 depot54)
	(available hoist54)
	(at hoist55 depot55)
	(available hoist55)
	(at hoist56 depot56)
	(available hoist56)
	(at hoist57 depot57)
	(available hoist57)
	(at hoist58 depot58)
	(available hoist58)
	(at hoist59 depot59)
	(available hoist59)
	(at hoist60 depot60)
	(available hoist60)
	(at hoist61 depot61)
	(available hoist61)
	(at hoist62 depot62)
	(available hoist62)
	(at hoist63 depot63)
	(available hoist63)
	(at hoist64 depot64)
	(available hoist64)
	(at hoist65 depot65)
	(available hoist65)
	(at hoist66 depot66)
	(available hoist66)
	(at hoist67 depot67)
	(available hoist67)
	(at hoist68 distributor0)
	(available hoist68)
	(at hoist69 distributor1)
	(available hoist69)
	(at crate0 depot44)
	(on crate0 pallet44)
	(at crate1 depot49)
	(on crate1 pallet49)
	(at crate2 distributor1)
	(on crate2 pallet69)
	(at crate3 depot4)
	(on crate3 pallet4)
	(at crate4 depot34)
	(on crate4 pallet34)
	(at crate5 depot50)
	(on crate5 pallet50)
	(at crate6 depot58)
	(on crate6 pallet58)
	(at crate7 depot43)
	(on crate7 pallet43)
	(at crate8 depot46)
	(on crate8 pallet46)
	(at crate9 depot31)
	(on crate9 pallet31)
	(at crate10 depot22)
	(on crate10 pallet22)
	(at crate11 depot6)
	(on crate11 pallet6)
	(at crate12 depot26)
	(on crate12 pallet26)
	(at crate13 depot66)
	(on crate13 pallet66)
	(at crate14 depot35)
	(on crate14 pallet35)
	(at crate15 depot29)
	(on crate15 pallet29)
	(at crate16 depot5)
	(on crate16 pallet5)
	(at crate17 depot60)
	(on crate17 pallet60)
	(at crate18 depot39)
	(on crate18 pallet39)
	(at crate19 depot19)
	(on crate19 pallet19)
	(at crate20 depot3)
	(on crate20 pallet3)
)

(:goal (and
		(on crate0 pallet32)
		(on crate1 pallet28)
		(on crate2 pallet36)
		(on crate3 crate5)
		(on crate4 pallet59)
		(on crate5 pallet54)
		(on crate6 pallet19)
		(on crate7 pallet46)
		(on crate8 pallet52)
		(on crate9 crate1)
		(on crate10 pallet2)
		(on crate11 pallet50)
		(on crate12 pallet63)
		(on crate14 pallet24)
		(on crate15 pallet64)
		(on crate16 crate0)
		(on crate17 pallet3)
		(on crate18 pallet16)
		(on crate19 crate15)
		(on crate20 pallet9)
	)
))
