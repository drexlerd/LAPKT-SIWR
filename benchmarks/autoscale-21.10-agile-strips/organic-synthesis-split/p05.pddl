(define (problem INITIALBONDS10AROM) (:domain CHEMICAL)
(:objects
	C1 - CARBON
	C2 - CARBON
	C3 - CARBON
	C4 - CARBON
	H1 - HYDROGEN
	H2 - HYDROGEN
	O1 - OXYGEN
	O2 - OXYGEN
	O3 - OXYGEN
	C5 - CARBON
	C6 - CARBON
	C7 - CARBON
	C8 - CARBON
	C9 - CARBON
	C14 - CARBON
	H3 - HYDROGEN
	H4 - HYDROGEN
	H5 - HYDROGEN
	H6 - HYDROGEN
	H7 - HYDROGEN
	H8 - HYDROGEN
	H9 - HYDROGEN
	H10 - HYDROGEN
	H29 - HYDROGEN
	H30 - HYDROGEN
	H31 - HYDROGEN
	O50 - OXYGEN
	H50 - HYDROGEN
	H51 - HYDROGEN
	O51 - OXYGEN
	H52 - HYDROGEN
	H53 - HYDROGEN
	O52 - OXYGEN
	LI1 - LITHIUM
	AL1 - ALUMINIUM
	H25 - HYDROGEN
	H11 - HYDROGEN
	H12 - HYDROGEN
	H13 - HYDROGEN
	H14 - HYDROGEN
	C10 - CARBON
	C11 - CARBON
	C12 - CARBON
	C13 - CARBON
	O4 - OXYGEN
	O5 - OXYGEN
	O6 - OXYGEN
	O7 - OXYGEN
	HG1 - MERCURY
	H15 - HYDROGEN
	H16 - HYDROGEN
	H17 - HYDROGEN
	H18 - HYDROGEN
	H19 - HYDROGEN
	H20 - HYDROGEN
	NA1 - SODIUM
	B1 - BORON
	H21 - HYDROGEN
	H22 - HYDROGEN
	H23 - HYDROGEN
	H24 - HYDROGEN
	LI2 - LITHIUM
	AL2 - ALUMINIUM
	H26 - HYDROGEN
	H27 - HYDROGEN
	H28 - HYDROGEN
)
(:init
	(BOND O1 C1)
	(BOND O1 C2)
	(BOND C1 O1)
	(BOND C2 O1)
	(DOUBLEBOND O2 C1)
	(DOUBLEBOND O3 C2)
	(DOUBLEBOND C1 O2)
	(DOUBLEBOND C2 O3)
	(BOND C1 C3)
	(BOND C2 C4)
	(BOND C3 C1)
	(BOND C4 C2)
	(DOUBLEBOND C3 C4)
	(DOUBLEBOND C4 C3)
	(BOND H1 C3)
	(BOND H2 C4)
	(BOND C3 H1)
	(BOND C4 H2)
	(BOND C5 C6)
	(DOUBLEBOND C6 C7)
	(BOND C7 C8)
	(DOUBLEBOND C8 C9)
	(BOND C6 C5)
	(DOUBLEBOND C7 C6)
	(BOND C8 C7)
	(DOUBLEBOND C9 C8)
	(BOND C8 C14)
	(BOND C14 C8)
	(BOND H3 C5)
	(BOND H4 C5)
	(BOND H5 C5)
	(BOND C5 H3)
	(BOND C5 H4)
	(BOND C5 H5)
	(BOND H6 C6)
	(BOND C6 H6)
	(BOND H7 C7)
	(BOND C7 H7)
	(BOND C9 H9)
	(BOND C9 H10)
	(BOND H9 C9)
	(BOND H10 C9)
	(BOND C14 H29)
	(BOND C14 H30)
	(BOND C14 H31)
	(BOND H29 C14)
	(BOND H30 C14)
	(BOND H31 C14)
	(BOND O50 H50)
	(BOND H50 O50)
	(BOND O50 H51)
	(BOND H51 O50)
	(BOND O51 H52)
	(BOND H52 O51)
	(BOND O51 H53)
	(BOND H53 O51)
	(BOND AL1 H11)
	(BOND AL1 H12)
	(BOND AL1 H13)
	(BOND AL1 H14)
	(BOND H11 AL1)
	(BOND H12 AL1)
	(BOND H13 AL1)
	(BOND H14 AL1)
	(BOND C10 C11)
	(BOND C11 C10)
	(BOND H15 C10)
	(BOND H16 C10)
	(BOND H17 C10)
	(BOND C10 H15)
	(BOND C10 H16)
	(BOND C10 H17)
	(DOUBLEBOND C11 O4)
	(DOUBLEBOND O4 C11)
	(BOND C11 O5)
	(BOND O5 C11)
	(BOND O5 HG1)
	(BOND HG1 O5)
	(BOND C12 C13)
	(BOND C13 C12)
	(BOND H18 C12)
	(BOND H19 C12)
	(BOND H20 C12)
	(BOND C12 H18)
	(BOND C12 H19)
	(BOND C12 H20)
	(DOUBLEBOND C13 O6)
	(DOUBLEBOND O6 C13)
	(BOND C13 O7)
	(BOND O7 C13)
	(BOND O7 HG1)
	(BOND HG1 O7)
	(BOND B1 H21)
	(BOND B1 H22)
	(BOND B1 H23)
	(BOND B1 H24)
	(BOND H21 B1)
	(BOND H22 B1)
	(BOND H23 B1)
	(BOND H24 B1)
	(BOND AL2 H25)
	(BOND AL2 H26)
	(BOND AL2 H27)
	(BOND AL2 H28)
	(BOND H25 AL2)
	(BOND H26 AL2)
	(BOND H27 AL2)
	(BOND H28 AL2)
	(procnone)
(= (total-cost) 0)
)
(:goal (and (procnone) (BOND C4 H2)(BOND C9 H10)(BOND C9 H9)(BOND C2 H12)(BOND C2 H11)(BOND C14 H31)(BOND C14 H30)(BOND C14 H29)(BOND C7 H21)(BOND C7 H7)(BOND C5 H5)(BOND C5 H4)(BOND C5 H3)(BOND C6 H6)(BOND O2 H51)(BOND C1 H13)(BOND C1 H14)(BOND C3 H1)(BOND C2 C4)(BOND C3 C4)(BOND C9 C4)(BOND C8 C9)(BOND O3 C2)(BOND C8 O3)(BOND C8 C14)(BOND C7 C8)(BOND C6 C7)(BOND C6 C5)(BOND C3 C6)(BOND C1 O2)(BOND C3 C1)))
(:metric minimize (total-cost))

)
