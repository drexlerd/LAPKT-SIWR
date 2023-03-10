(define (problem INITIALBONDS17) (:domain CHEMICAL)
(:objects
	C1 - CARBON
	C2 - CARBON
	C3 - CARBON
	C4 - CARBON
	C5 - CARBON
	C6 - CARBON
	O1 - OXYGEN
	H1 - HYDROGEN
	H2 - HYDROGEN
	H3 - HYDROGEN
	H4 - HYDROGEN
	H5 - HYDROGEN
	H6 - HYDROGEN
	H7 - HYDROGEN
	H8 - HYDROGEN
	H27 - HYDROGEN
	H28 - HYDROGEN
	H29 - HYDROGEN
	H30 - HYDROGEN
	NA - SODIUM
	O50 - OXYGEN
	H50 - HYDROGEN
	O51 - OXYGEN
	H51 - HYDROGEN
	H52 - HYDROGEN
	C7 - CARBON
	C8 - CARBON
	C9 - CARBON
	O2 - OXYGEN
	H31 - HYDROGEN
	H32 - HYDROGEN
	H33 - HYDROGEN
	H34 - HYDROGEN
	H35 - HYDROGEN
	H36 - HYDROGEN
	H37 - HYDROGEN
	H38 - HYDROGEN
	C10 - CARBON
	C11 - CARBON
	C27 - CARBON
	O3 - OXYGEN
	H39 - HYDROGEN
	H40 - HYDROGEN
	H41 - HYDROGEN
	H42 - HYDROGEN
	H43 - HYDROGEN
	H44 - HYDROGEN
	H45 - HYDROGEN
	H46 - HYDROGEN
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
	CR1 - CHROMIUM
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
	H15 - HYDROGEN
	H16 - HYDROGEN
	H17 - HYDROGEN
	H18 - HYDROGEN
	H19 - HYDROGEN
	H20 - HYDROGEN
	CR2 - CHROMIUM
	O7 - OXYGEN
	O8 - OXYGEN
	O9 - OXYGEN
	CL2 - CHLORINE
	C22 - CARBON
	C23 - CARBON
	C24 - CARBON
	C25 - CARBON
	C26 - CARBON
	N6 - NITROGEN
	H21 - HYDROGEN
	H22 - HYDROGEN
	H23 - HYDROGEN
	H24 - HYDROGEN
	H25 - HYDROGEN
	H26 - HYDROGEN
	CR3 - CHROMIUM
	O10 - OXYGEN
	O11 - OXYGEN
	O12 - OXYGEN
	CL3 - CHLORINE
)
(:init
	(BOND C1 C2)
	(BOND C2 C3)
	(BOND C3 C4)
	(BOND C4 C5)
	(BOND C5 C6)
	(BOND C6 C1)
	(BOND C2 C1)
	(BOND C3 C2)
	(BOND C4 C3)
	(BOND C5 C4)
	(BOND C6 C5)
	(BOND C1 C6)
	(BOND C1 O1)
	(BOND O1 C1)
	(BOND C1 H1)
	(BOND H1 C1)
	(BOND C2 H2)
	(BOND C2 H3)
	(BOND C3 H4)
	(BOND C3 H5)
	(BOND C4 H6)
	(BOND C4 H7)
	(BOND C5 H8)
	(BOND C5 H27)
	(BOND C6 H28)
	(BOND C6 H29)
	(BOND H2 C2)
	(BOND H3 C2)
	(BOND H4 C3)
	(BOND H5 C3)
	(BOND H6 C4)
	(BOND H7 C4)
	(BOND H8 C5)
	(BOND H27 C5)
	(BOND H28 C6)
	(BOND H29 C6)
	(BOND O1 H30)
	(BOND H30 O1)
	(BOND C7 C8)
	(BOND C8 C9)
	(BOND C8 C7)
	(BOND C9 C8)
	(BOND C8 O2)
	(BOND O2 C8)
	(BOND C7 H31)
	(BOND C7 H32)
	(BOND C7 H33)
	(BOND H31 C7)
	(BOND H32 C7)
	(BOND H33 C7)
	(BOND C9 H34)
	(BOND C9 H35)
	(BOND C9 H36)
	(BOND H34 C9)
	(BOND H35 C9)
	(BOND H36 C9)
	(BOND C8 H37)
	(BOND H37 C8)
	(BOND O2 H38)
	(BOND H38 O2)
	(BOND C10 C11)
	(BOND C11 C27)
	(BOND C11 C10)
	(BOND C27 C11)
	(BOND C27 O3)
	(BOND O3 C27)
	(BOND C10 H39)
	(BOND C10 H40)
	(BOND C10 H41)
	(BOND H39 C10)
	(BOND H40 C10)
	(BOND H41 C10)
	(BOND C11 H42)
	(BOND C11 H43)
	(BOND H42 C11)
	(BOND H43 C11)
	(BOND C27 H44)
	(BOND C27 H45)
	(BOND H44 C27)
	(BOND H45 C27)
	(BOND O3 H46)
	(BOND H46 O3)
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
	(BOND O4 CR1)
	(DOUBLEBOND CR1 O5)
	(DOUBLEBOND CR1 O6)
	(BOND CR1 CL1)
	(BOND CR1 O4)
	(DOUBLEBOND O5 CR1)
	(DOUBLEBOND O6 CR1)
	(BOND CL1 CR1)
	(BOND N5 H15)
	(BOND H15 N5)
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
	(BOND H16 C17)
	(BOND H17 C18)
	(BOND H18 C19)
	(BOND H19 C20)
	(BOND H20 C21)
	(BOND C17 H16)
	(BOND C18 H17)
	(BOND C19 H18)
	(BOND C20 H19)
	(BOND C21 H20)
	(BOND O7 CR2)
	(DOUBLEBOND CR2 O8)
	(DOUBLEBOND CR2 O9)
	(BOND CR2 CL2)
	(BOND CR2 O7)
	(DOUBLEBOND O8 CR2)
	(DOUBLEBOND O9 CR2)
	(BOND CL2 CR2)
	(BOND N6 H21)
	(BOND H21 N6)
	(AROMATICBOND C22 N6)
	(AROMATICBOND C22 C23)
	(AROMATICBOND C23 C24)
	(AROMATICBOND C24 C25)
	(AROMATICBOND C25 C26)
	(AROMATICBOND C26 N6)
	(AROMATICBOND N6 C22)
	(AROMATICBOND C23 C22)
	(AROMATICBOND C24 C23)
	(AROMATICBOND C25 C24)
	(AROMATICBOND C26 C25)
	(AROMATICBOND N6 C26)
	(BOND H22 C22)
	(BOND H23 C23)
	(BOND H24 C24)
	(BOND H25 C25)
	(BOND H26 C26)
	(BOND C22 H22)
	(BOND C23 H23)
	(BOND C24 H24)
	(BOND C25 H25)
	(BOND C26 H26)
	(BOND O10 CR3)
	(DOUBLEBOND CR3 O11)
	(DOUBLEBOND CR3 O12)
	(BOND CR3 CL3)
	(BOND CR3 O10)
	(DOUBLEBOND O11 CR3)
	(DOUBLEBOND O12 CR3)
	(BOND CL3 CR3)
	(BOND NA O50)
	(BOND O50 NA)
	(BOND H50 O50)
	(BOND O50 H50)
	(BOND H52 O51)
	(BOND O51 H52)
	(BOND O51 H51)
	(BOND H51 O51)
	(procnone)
(= (total-cost) 0)
)
(:goal (and (procnone) (BOND C9 H36)(BOND C9 H35)(BOND C9 H34)(BOND C7 H33)(BOND C7 H28)(BOND C10 H41)(BOND C10 H40)(BOND C10 H39)(BOND C11 H43)(BOND C11 H42)(BOND C27 H45)(BOND C6 H29)(BOND C5 H27)(BOND C5 H8)(BOND C4 H7)(BOND C4 H6)(BOND C3 H5)(BOND C3 H4)(BOND C2 H3)(BOND C8 C9)(DOUBLEBOND C8 O2)(BOND C7 C8)(BOND C27 C7)(BOND C11 C10)(BOND C27 C11)(BOND C6 C27)(BOND C6 C1)(BOND C5 C6)(BOND C4 C5)(BOND C3 C4)(BOND C2 C3)(BOND C1 C2)(DOUBLEBOND C1 O1)))
(:metric minimize (total-cost))

)
