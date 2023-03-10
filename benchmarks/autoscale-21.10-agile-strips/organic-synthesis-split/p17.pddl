(define (problem INITIALBONDS12) (:domain CHEMICAL)
(:objects
	H1 - HYDROGEN
	H2 - HYDROGEN
	H3 - HYDROGEN
	H4 - HYDROGEN
	H5 - HYDROGEN
	H6 - HYDROGEN
	H7 - HYDROGEN
	H8 - HYDROGEN
	C1 - CARBON
	C2 - CARBON
	C3 - CARBON
	C4 - CARBON
	C5 - CARBON
	C6 - CARBON
	C7 - CARBON
	C8 - CARBON
	C9 - CARBON
	H33 - HYDROGEN
	H9 - HYDROGEN
	H10 - HYDROGEN
	H11 - HYDROGEN
	H12 - HYDROGEN
	H13 - HYDROGEN
	H14 - HYDROGEN
	O1 - OXYGEN
	C22 - CARBON
	C23 - CARBON
	H34 - HYDROGEN
	H35 - HYDROGEN
	H36 - HYDROGEN
	O5 - OXYGEN
	C24 - CARBON
	C25 - CARBON
	H37 - HYDROGEN
	H38 - HYDROGEN
	H39 - HYDROGEN
	O6 - OXYGEN
	H15 - HYDROGEN
	H16 - HYDROGEN
	PD1 - PALLADIUM
	H18 - HYDROGEN
	H19 - HYDROGEN
	O2 - OXYGEN
	NA1 - SODIUM
	NA2 - SODIUM
	CR1 - CHROMIUM
	CR2 - CHROMIUM
	O7 - OXYGEN
	O8 - OXYGEN
	O9 - OXYGEN
	O10 - OXYGEN
	O11 - OXYGEN
	O12 - OXYGEN
	O13 - OXYGEN
	SU1 - SULFUR
	O4 - OXYGEN
	CL1 - CHLORINE
	CL2 - CHLORINE
	C10 - CARBON
	C11 - CARBON
	C12 - CARBON
	C13 - CARBON
	C14 - CARBON
	C15 - CARBON
	H20 - HYDROGEN
	H21 - HYDROGEN
	H22 - HYDROGEN
	H23 - HYDROGEN
	H24 - HYDROGEN
	H25 - HYDROGEN
	C16 - CARBON
	C17 - CARBON
	C18 - CARBON
	C19 - CARBON
	C20 - CARBON
	C21 - CARBON
	H26 - HYDROGEN
	H27 - HYDROGEN
	H28 - HYDROGEN
	H29 - HYDROGEN
	H30 - HYDROGEN
	H31 - HYDROGEN
	FE1 - IRON
	BR1 - BROMINE
	BR2 - BROMINE
	BR3 - BROMINE
	BR4 - BROMINE
	BR5 - BROMINE
	BR9 - BROMINE
	BR10 - BROMINE
	MG1 - MAGNESIUM
	MG2 - MAGNESIUM
	H32 - HYDROGEN
)
(:init
	(DOUBLEBOND C1 C2)
	(BOND C2 C3)
	(DOUBLEBOND C3 C4)
	(BOND C4 C5)
	(DOUBLEBOND C2 C1)
	(BOND C3 C2)
	(DOUBLEBOND C4 C3)
	(BOND C5 C4)
	(BOND C1 H1)
	(BOND C1 H2)
	(BOND C2 H3)
	(BOND C3 H4)
	(BOND C4 H5)
	(BOND C5 H6)
	(BOND C5 H7)
	(BOND C5 H8)
	(BOND H1 C1)
	(BOND H2 C1)
	(BOND H3 C2)
	(BOND H4 C3)
	(BOND H5 C4)
	(BOND H6 C5)
	(BOND H7 C5)
	(BOND H8 C5)
	(BOND C6 C7)
	(DOUBLEBOND C7 C8)
	(BOND C9 H33)
	(BOND H33 C9)
	(BOND C8 C9)
	(BOND C7 C6)
	(DOUBLEBOND C8 C7)
	(BOND C9 C8)
	(BOND C6 H9)
	(BOND C6 H10)
	(BOND C6 H11)
	(BOND H9 C6)
	(BOND H10 C6)
	(BOND H11 C6)
	(BOND C7 H12)
	(BOND C8 H13)
	(BOND C9 H14)
	(BOND H12 C7)
	(BOND H13 C8)
	(BOND H14 C9)
	(DOUBLEBOND O1 C9)
	(DOUBLEBOND C9 O1)
	(BOND C22 C23)
	(BOND C23 C22)
	(BOND C22 H34)
	(BOND H34 C22)
	(BOND C22 H35)
	(BOND H35 C22)
	(BOND C22 O5)
	(BOND O5 C22)
	(BOND O5 H36)
	(BOND H36 O5)
	(BOND C24 C25)
	(BOND C25 C24)
	(BOND C24 H37)
	(BOND H37 C24)
	(BOND C24 H38)
	(BOND H38 C24)
	(BOND C24 O6)
	(BOND O6 C24)
	(BOND O6 H39)
	(BOND H39 O6)
	(BOND H15 H16)
	(BOND H16 H15)
	(BOND O2 H18)
	(BOND O2 H19)
	(BOND H18 O2)
	(BOND H19 O2)
	(BOND CR1 O7)
	(BOND CR2 O7)
	(BOND O7 CR1)
	(BOND O7 CR2)
	(DOUBLEBOND CR1 O8)
	(DOUBLEBOND CR1 O9)
	(BOND CR1 O10)
	(DOUBLEBOND O8 CR1)
	(DOUBLEBOND O9 CR1)
	(BOND O10 CR1)
	(BOND CR2 O11)
	(DOUBLEBOND CR2 O12)
	(DOUBLEBOND CR2 O13)
	(BOND O11 CR2)
	(DOUBLEBOND O12 CR2)
	(DOUBLEBOND O13 CR2)
	(BOND NA1 O10)
	(BOND NA2 O11)
	(BOND O10 NA1)
	(BOND O11 NA2)
	(DOUBLEBOND SU1 O4)
	(DOUBLEBOND O4 SU1)
	(BOND CL1 SU1)
	(BOND CL2 SU1)
	(BOND SU1 CL1)
	(BOND SU1 CL2)
	(AROMATICBOND C10 C11)
	(AROMATICBOND C11 C10)
	(AROMATICBOND C11 C12)
	(AROMATICBOND C12 C11)
	(AROMATICBOND C12 C13)
	(AROMATICBOND C13 C12)
	(AROMATICBOND C13 C14)
	(AROMATICBOND C14 C13)
	(AROMATICBOND C14 C15)
	(AROMATICBOND C15 C14)
	(AROMATICBOND C10 C15)
	(AROMATICBOND C15 C10)
	(BOND C10 H20)
	(BOND H20 C10)
	(BOND C11 H21)
	(BOND H21 C11)
	(BOND C12 H22)
	(BOND H22 C12)
	(BOND C13 H23)
	(BOND H23 C13)
	(BOND C14 H24)
	(BOND H24 C14)
	(BOND C15 H25)
	(BOND H25 C15)
	(AROMATICBOND C16 C17)
	(AROMATICBOND C17 C16)
	(AROMATICBOND C17 C18)
	(AROMATICBOND C18 C17)
	(AROMATICBOND C18 C19)
	(AROMATICBOND C19 C18)
	(AROMATICBOND C19 C20)
	(AROMATICBOND C20 C19)
	(AROMATICBOND C20 C21)
	(AROMATICBOND C21 C20)
	(AROMATICBOND C16 C21)
	(AROMATICBOND C21 C16)
	(BOND C16 H26)
	(BOND H26 C16)
	(BOND C17 H27)
	(BOND H27 C17)
	(BOND C18 H28)
	(BOND H28 C18)
	(BOND C19 H29)
	(BOND H29 C19)
	(BOND C20 H30)
	(BOND H30 C20)
	(BOND C21 H31)
	(BOND H31 C21)
	(BOND FE1 BR1)
	(BOND FE1 BR2)
	(BOND FE1 BR3)
	(BOND BR1 FE1)
	(BOND BR2 FE1)
	(BOND BR3 FE1)
	(BOND BR4 BR5)
	(BOND BR5 BR4)
	(BOND BR9 BR10)
	(BOND BR10 BR9)
	(procnone)
(= (total-cost) 0)
)
(:goal (and (procnone) (BOND O2 H14)(BOND C21 H31)(BOND C20 H30)(BOND C19 H29)(BOND C18 H28)(BOND C17 H27)(BOND C15 H25)(BOND C14 H24)(BOND C13 H23)(BOND C12 H22)(BOND C11 H21)(BOND C8 H13)(BOND C6 H11)(BOND C6 H10)(BOND C6 H9)(BOND C7 H12)(BOND C1 H2)(BOND C1 H1)(BOND C2 H15)(BOND C2 H3)(BOND C3 H16)(BOND C3 H4)(BOND C5 H8)(BOND C5 H7)(BOND C5 H6)(BOND C4 H5)(BOND C9 O2)(AROMATICBOND C21 C16)(AROMATICBOND C20 C21)(AROMATICBOND C19 C20)(AROMATICBOND C18 C19)(AROMATICBOND C17 C18)(AROMATICBOND C16 C17)(BOND C9 C16)(AROMATICBOND C15 C10)(AROMATICBOND C14 C15)(AROMATICBOND C13 C14)(AROMATICBOND C12 C13)(AROMATICBOND C11 C12)(AROMATICBOND C10 C11)(BOND C9 C10)(BOND C8 C9)(BOND C4 C8)(BOND C7 C8)(BOND C7 C6)(BOND C1 C7)(BOND C2 C1)(BOND C3 C2)(BOND C4 C3)(BOND C4 C5)))
(:metric minimize (total-cost))

)
