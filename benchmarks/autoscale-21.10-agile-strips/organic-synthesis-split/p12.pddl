(define (problem INITIALBONDS16) (:domain CHEMICAL)
(:objects
	O50 - OXYGEN
	H50 - HYDROGEN
	H51 - HYDROGEN
	C1 - CARBON
	C2 - CARBON
	C3 - CARBON
	O1 - OXYGEN
	H1 - HYDROGEN
	H2 - HYDROGEN
	H3 - HYDROGEN
	H4 - HYDROGEN
	H5 - HYDROGEN
	H6 - HYDROGEN
	C4 - CARBON
	C5 - CARBON
	C6 - CARBON
	C7 - CARBON
	C8 - CARBON
	C9 - CARBON
	C10 - CARBON
	O2 - OXYGEN
	O3 - OXYGEN
	O4 - OXYGEN
	O5 - OXYGEN
	H7 - HYDROGEN
	H8 - HYDROGEN
	H9 - HYDROGEN
	H10 - HYDROGEN
	H11 - HYDROGEN
	H12 - HYDROGEN
	H13 - HYDROGEN
	H14 - HYDROGEN
	H15 - HYDROGEN
	H16 - HYDROGEN
	H17 - HYDROGEN
	H18 - HYDROGEN
	C11 - CARBON
	C12 - CARBON
	C13 - CARBON
	O6 - OXYGEN
	H19 - HYDROGEN
	H20 - HYDROGEN
	H21 - HYDROGEN
	H22 - HYDROGEN
	H23 - HYDROGEN
	H24 - HYDROGEN
	NA1 - SODIUM
	H52 - HYDROGEN
	C14 - CARBON
	O7 - OXYGEN
	H25 - HYDROGEN
	H26 - HYDROGEN
	H27 - HYDROGEN
)
(:init
	(BOND O50 H50)
	(BOND H50 O50)
	(BOND O50 H51)
	(BOND H51 O50)
	(BOND C1 C2)
	(BOND C2 C1)
	(BOND C3 C2)
	(BOND C2 C3)
	(DOUBLEBOND C2 O1)
	(DOUBLEBOND O1 C2)
	(BOND C1 H1)
	(BOND C1 H2)
	(BOND C1 H3)
	(BOND H1 C1)
	(BOND H2 C1)
	(BOND H3 C1)
	(BOND C3 H4)
	(BOND C3 H5)
	(BOND C3 H6)
	(BOND H4 C3)
	(BOND H5 C3)
	(BOND H6 C3)
	(BOND C4 C5)
	(BOND C5 C4)
	(BOND C5 O2)
	(BOND O2 C5)
	(BOND O2 C6)
	(BOND C6 O2)
	(DOUBLEBOND C6 O3)
	(DOUBLEBOND O3 C6)
	(BOND C6 C7)
	(BOND C7 C6)
	(BOND C7 C8)
	(BOND C8 C7)
	(DOUBLEBOND C8 O4)
	(DOUBLEBOND O4 C8)
	(BOND C8 O5)
	(BOND O5 C8)
	(BOND O5 C9)
	(BOND C9 O5)
	(BOND C10 C9)
	(BOND C9 C10)
	(BOND C4 H7)
	(BOND C4 H8)
	(BOND C4 H9)
	(BOND H7 C4)
	(BOND H8 C4)
	(BOND H9 C4)
	(BOND C5 H10)
	(BOND C5 H11)
	(BOND H10 C5)
	(BOND H11 C5)
	(BOND C7 H12)
	(BOND C7 H13)
	(BOND H12 C7)
	(BOND H13 C7)
	(BOND C9 H14)
	(BOND C9 H15)
	(BOND H14 C9)
	(BOND H15 C9)
	(BOND C10 H16)
	(BOND C10 H17)
	(BOND C10 H18)
	(BOND H16 C10)
	(BOND H17 C10)
	(BOND H18 C10)
	(BOND C11 C12)
	(BOND C12 C11)
	(BOND C13 C12)
	(BOND C12 C13)
	(DOUBLEBOND C12 O6)
	(DOUBLEBOND O6 C12)
	(BOND C11 H19)
	(BOND C11 H20)
	(BOND C11 H21)
	(BOND H19 C11)
	(BOND H20 C11)
	(BOND H21 C11)
	(BOND C13 H22)
	(BOND C13 H23)
	(BOND C13 H24)
	(BOND H22 C13)
	(BOND H23 C13)
	(BOND H24 C13)
	(BOND NA1 O7)
	(BOND O7 NA1)
	(BOND O7 H52)
	(BOND H52 O7)
	(BOND C14 H25)
	(BOND C14 H26)
	(BOND C14 H27)
	(BOND H25 C14)
	(BOND H26 C14)
	(BOND H27 C14)
	(procnone)
(= (total-cost) 0)
)
(:goal (and (procnone) (BOND C11 H21)(BOND C11 H20)(BOND C13 H24)(BOND C13 H23)(BOND C7 H19)(BOND C7 H51)(BOND C3 H6)(BOND C3 H5)(BOND C3 H4)(BOND C1 H3)(BOND C1 H2)(BOND C1 H1)(BOND C2 C11)(BOND C12 C11)(DOUBLEBOND C12 O6)(BOND C13 C12)(BOND C8 C13)(DOUBLEBOND C8 O4)(BOND C7 C8)(BOND C2 C7)(BOND C2 C3)(BOND C2 C1)))
(:metric minimize (total-cost))

)
