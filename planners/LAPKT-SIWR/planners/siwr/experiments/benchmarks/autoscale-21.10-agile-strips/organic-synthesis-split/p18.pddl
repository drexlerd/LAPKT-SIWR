(define (problem INITIALBONDS15) (:domain CHEMICAL)
(:objects
	O50 - OXYGEN
	H50 - HYDROGEN
	H51 - HYDROGEN
	O51 - OXYGEN
	H52 - HYDROGEN
	H53 - HYDROGEN
	C1 - CARBON
	O1 - OXYGEN
	H1 - HYDROGEN
	H2 - HYDROGEN
	H3 - HYDROGEN
	H19 - HYDROGEN
	C2 - CARBON
	C3 - CARBON
	H4 - HYDROGEN
	H5 - HYDROGEN
	H6 - HYDROGEN
	H7 - HYDROGEN
	H8 - HYDROGEN
	H15 - HYDROGEN
	O2 - OXYGEN
	C4 - CARBON
	O3 - OXYGEN
	H16 - HYDROGEN
	H17 - HYDROGEN
	MG - MAGNESIUM
	MG2 - MAGNESIUM
	H18 - HYDROGEN
	P - PHOSPHORUS
	BR1 - BROMINE
	BR2 - BROMINE
	BR3 - BROMINE
	P2 - PHOSPHORUS
	BR4 - BROMINE
	BR5 - BROMINE
	BR6 - BROMINE
	P3 - PHOSPHORUS
	BR7 - BROMINE
	BR8 - BROMINE
	BR9 - BROMINE
	C12 - CARBON
	C13 - CARBON
	C14 - CARBON
	C15 - CARBON
	C16 - CARBON
	N4 - NITROGEN
	H9 - HYDROGEN
	H10 - HYDROGEN
	H11 - HYDROGEN
	H12 - HYDROGEN
	H13 - HYDROGEN
	H14 - HYDROGEN
	CR - CHROMIUM
	O4 - OXYGEN
	O5 - OXYGEN
	O6 - OXYGEN
	CL1 - CHLORINE
	C17 - CARBON
	C18 - CARBON
	C19 - CARBON
	C20 - CARBON
	C21 - CARBON
	N5 - NITROGEN
	H20 - HYDROGEN
	H21 - HYDROGEN
	H22 - HYDROGEN
	H23 - HYDROGEN
	H24 - HYDROGEN
	H25 - HYDROGEN
	CR2 - CHROMIUM
	O7 - OXYGEN
	O8 - OXYGEN
	O9 - OXYGEN
	CL2 - CHLORINE
	C22 - CARBON
	O10 - OXYGEN
	H26 - HYDROGEN
	H27 - HYDROGEN
	H28 - HYDROGEN
	H29 - HYDROGEN
	K1 - POTASSIUM
	C23 - CARBON
	N6 - NITROGEN
	LI1 - LITHIUM
	AL1 - ALUMINIUM
	H30 - HYDROGEN
	H31 - HYDROGEN
	H32 - HYDROGEN
	H33 - HYDROGEN
	H34 - HYDROGEN
	LI2 - LITHIUM
	AL2 - ALUMINIUM
	H35 - HYDROGEN
	H36 - HYDROGEN
	H37 - HYDROGEN
	H38 - HYDROGEN
)
(:init
	(BOND O50 H50)
	(BOND H50 O50)
	(BOND O50 H51)
	(BOND H51 O50)
	(BOND O51 H52)
	(BOND H52 O51)
	(BOND O51 H53)
	(BOND H53 O51)
	(BOND C1 O1)
	(BOND C1 H1)
	(BOND C1 H2)
	(BOND C1 H3)
	(BOND O1 C1)
	(BOND H1 C1)
	(BOND H2 C1)
	(BOND H3 C1)
	(BOND O1 H19)
	(BOND H19 O1)
	(BOND C2 C3)
	(BOND C3 C2)
	(BOND C3 O2)
	(BOND O2 C3)
	(BOND C2 H4)
	(BOND C2 H5)
	(BOND C2 H6)
	(BOND H4 C2)
	(BOND H5 C2)
	(BOND H6 C2)
	(BOND C3 H7)
	(BOND C3 H8)
	(BOND H7 C3)
	(BOND H8 C3)
	(BOND O2 H15)
	(BOND H15 O2)
	(BOND H16 C4)
	(BOND H17 C4)
	(BOND C4 H16)
	(BOND C4 H17)
	(DOUBLEBOND O3 C4)
	(DOUBLEBOND C4 O3)
	(BOND P BR1)
	(BOND P BR2)
	(BOND P BR3)
	(BOND BR1 P)
	(BOND BR2 P)
	(BOND BR3 P)
	(BOND P2 BR4)
	(BOND P2 BR5)
	(BOND P2 BR6)
	(BOND BR4 P2)
	(BOND BR5 P2)
	(BOND BR6 P2)
	(BOND P3 BR7)
	(BOND P3 BR8)
	(BOND P3 BR9)
	(BOND BR7 P3)
	(BOND BR8 P3)
	(BOND BR9 P3)
	(BOND N4 H9)
	(BOND H9 N4)
	(AROMATICBOND C12 N4)
	(AROMATICBOND C12 C13)
	(AROMATICBOND C13 C14)
	(AROMATICBOND C14 C15)
	(AROMATICBOND C15 C16)
	(AROMATICBOND C16 N4)
	(AROMATICBOND N4 C12)
	(AROMATICBOND C13 C12)
	(AROMATICBOND C14 C13)
	(AROMATICBOND C15 C14)
	(AROMATICBOND C16 C15)
	(AROMATICBOND N4 C16)
	(BOND H10 C12)
	(BOND H11 C13)
	(BOND H12 C14)
	(BOND H13 C15)
	(BOND H14 C16)
	(BOND C12 H10)
	(BOND C13 H11)
	(BOND C14 H12)
	(BOND C15 H13)
	(BOND C16 H14)
	(BOND O4 CR)
	(DOUBLEBOND CR O5)
	(DOUBLEBOND CR O6)
	(BOND CR CL1)
	(BOND CR O4)
	(DOUBLEBOND O5 CR)
	(DOUBLEBOND O6 CR)
	(BOND CL1 CR)
	(BOND N5 H20)
	(BOND H20 N5)
	(AROMATICBOND C17 N5)
	(AROMATICBOND C17 C18)
	(AROMATICBOND C18 C19)
	(AROMATICBOND C19 C20)
	(AROMATICBOND C20 C21)
	(AROMATICBOND C21 N5)
	(AROMATICBOND N5 C17)
	(AROMATICBOND C18 C17)
	(AROMATICBOND C19 C18)
	(AROMATICBOND C20 C19)
	(AROMATICBOND C21 C20)
	(AROMATICBOND N5 C21)
	(BOND H21 C17)
	(BOND H22 C18)
	(BOND H23 C19)
	(BOND H24 C20)
	(BOND H25 C21)
	(BOND C17 H21)
	(BOND C18 H22)
	(BOND C19 H23)
	(BOND C20 H24)
	(BOND C21 H25)
	(BOND O7 CR2)
	(DOUBLEBOND CR2 O8)
	(DOUBLEBOND CR2 O9)
	(BOND CR2 CL2)
	(BOND CR2 O7)
	(DOUBLEBOND O8 CR2)
	(DOUBLEBOND O9 CR2)
	(BOND CL2 CR2)
	(BOND C22 O10)
	(BOND C22 H26)
	(BOND C22 H27)
	(BOND C22 H28)
	(BOND O10 C22)
	(BOND H26 C22)
	(BOND H27 C22)
	(BOND H28 C22)
	(BOND O10 H29)
	(BOND H29 O10)
	(BOND K1 C23)
	(BOND C23 K1)
	(TRIPLEBOND C23 N6)
	(TRIPLEBOND N6 C23)
	(BOND AL1 H30)
	(BOND AL1 H31)
	(BOND AL1 H32)
	(BOND AL1 H33)
	(BOND H30 AL1)
	(BOND H31 AL1)
	(BOND H32 AL1)
	(BOND H33 AL1)
	(BOND AL2 H35)
	(BOND AL2 H36)
	(BOND AL2 H37)
	(BOND AL2 H38)
	(BOND H35 AL2)
	(BOND H36 AL2)
	(BOND H37 AL2)
	(BOND H38 AL2)
	(procnone)
(= (total-cost) 0)
)
(:goal (and (procnone) (BOND C2 H6)(BOND C2 H5)(BOND C2 H4)(BOND C3 H8)(BOND C3 H7)(BOND C1 H3)(BOND C1 H2)(BOND C1 H1)(BOND C4 H35)(BOND C23 H31)(BOND C23 H30)(BOND H28 C22)(BOND C22 H27)(BOND C22 H26)(BOND C3 C2)(BOND C4 C3)(BOND C1 C4)(BOND N6 C4)(BOND N6 H50)(BOND C23 N6)(BOND C22 C23)))
(:metric minimize (total-cost))

)
