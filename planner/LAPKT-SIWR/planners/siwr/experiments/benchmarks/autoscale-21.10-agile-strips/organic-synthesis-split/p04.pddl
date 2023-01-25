(define (problem INITIALBONDS19) (:domain CHEMICAL)
(:objects
	C1 - CARBON
	C2 - CARBON
	H1 - HYDROGEN
	H2 - HYDROGEN
	H3 - HYDROGEN
	H4 - HYDROGEN
	H5 - HYDROGEN
	H6 - HYDROGEN
	O1 - OXYGEN
	H54 - HYDROGEN
	O50 - OXYGEN
	H50 - HYDROGEN
	H51 - HYDROGEN
	O51 - OXYGEN
	H52 - HYDROGEN
	H53 - HYDROGEN
	C5 - CARBON
	C6 - CARBON
	C7 - CARBON
	C8 - CARBON
	C9 - CARBON
	C10 - CARBON
	H7 - HYDROGEN
	H8 - HYDROGEN
	H9 - HYDROGEN
	H10 - HYDROGEN
	H11 - HYDROGEN
	H12 - HYDROGEN
	K1 - POTASSIUM
	MN1 - MANGANESE
	O2 - OXYGEN
	O3 - OXYGEN
	O4 - OXYGEN
	O5 - OXYGEN
	C3 - CARBON
	N1 - NITROGEN
	SU1 - SULFUR
	O6 - OXYGEN
	CL1 - CHLORINE
	CL3 - CHLORINE
	AL1 - ALUMINIUM
	CL4 - CHLORINE
	CL5 - CHLORINE
	CL6 - CHLORINE
	LI1 - LITHIUM
	AL2 - ALUMINIUM
	H22 - HYDROGEN
	H23 - HYDROGEN
	H24 - HYDROGEN
	H25 - HYDROGEN
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
	(BOND C1 C2)
	(BOND C2 C1)
	(BOND C2 O1)
	(BOND O1 C2)
	(BOND H1 C1)
	(BOND H2 C1)
	(BOND H3 C1)
	(BOND C1 H1)
	(BOND C1 H2)
	(BOND C1 H3)
	(BOND H4 C2)
	(BOND H5 C2)
	(BOND C2 H4)
	(BOND C2 H5)
	(BOND O1 H6)
	(BOND H6 O1)
	(AROMATICBOND C5 C6)
	(AROMATICBOND C6 C7)
	(AROMATICBOND C7 C8)
	(AROMATICBOND C8 C9)
	(AROMATICBOND C9 C10)
	(AROMATICBOND C10 C5)
	(AROMATICBOND C6 C5)
	(AROMATICBOND C7 C6)
	(AROMATICBOND C8 C7)
	(AROMATICBOND C9 C8)
	(AROMATICBOND C10 C9)
	(AROMATICBOND C5 C10)
	(BOND C5 H7)
	(BOND C6 H8)
	(BOND C7 H9)
	(BOND C8 H10)
	(BOND C9 H11)
	(BOND C10 H12)
	(BOND H7 C5)
	(BOND H8 C6)
	(BOND H9 C7)
	(BOND H10 C8)
	(BOND H11 C9)
	(BOND H12 C10)
	(DOUBLEBOND MN1 O2)
	(DOUBLEBOND MN1 O3)
	(DOUBLEBOND MN1 O4)
	(BOND MN1 O5)
	(DOUBLEBOND O2 MN1)
	(DOUBLEBOND O3 MN1)
	(DOUBLEBOND O4 MN1)
	(BOND O5 MN1)
	(BOND K1 MN1)
	(BOND MN1 K1)
	(BOND C3 H54)
	(BOND H54 C3)
	(TRIPLEBOND N1 C3)
	(TRIPLEBOND C3 N1)
	(DOUBLEBOND SU1 O6)
	(DOUBLEBOND O6 SU1)
	(BOND CL1 SU1)
	(BOND CL3 SU1)
	(BOND SU1 CL1)
	(BOND SU1 CL3)
	(BOND AL1 CL4)
	(BOND AL1 CL5)
	(BOND AL1 CL6)
	(BOND CL4 AL1)
	(BOND CL5 AL1)
	(BOND CL6 AL1)
	(BOND AL2 H22)
	(BOND AL2 H23)
	(BOND AL2 H24)
	(BOND AL2 H25)
	(BOND H22 AL2)
	(BOND H23 AL2)
	(BOND H24 AL2)
	(BOND H25 AL2)
	(procnone)
(= (total-cost) 0)
)
(:goal (and (procnone) (BOND N1 H52)(BOND N1 H50)(BOND C3 H23)(BOND C3 H22)(BOND C1 H3)(BOND C1 H2)(BOND C1 H1)(BOND O1 H54)(BOND C10 H12)(BOND C9 H11)(BOND C8 H10)(BOND H9 C7)(BOND H8 C6)(BOND C3 N1)(BOND C2 O1)(BOND C2 C3)(BOND C2 C1)(BOND C5 C2)(AROMATICBOND C10 C5)(AROMATICBOND C9 C10)(AROMATICBOND C8 C9)(AROMATICBOND C7 C8)(AROMATICBOND C6 C7)(AROMATICBOND C5 C6)))
(:metric minimize (total-cost))

)
