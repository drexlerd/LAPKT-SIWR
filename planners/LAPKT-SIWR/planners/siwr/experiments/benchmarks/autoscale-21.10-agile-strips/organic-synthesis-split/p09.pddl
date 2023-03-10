(define (problem P14_LATEST) (:domain CHEMICAL)
(:objects
	H50 - HYDROGEN
	H51 - HYDROGEN
	O10 - OXYGEN
	H1 - HYDROGEN
	H2 - HYDROGEN
	H3 - HYDROGEN
	H4 - HYDROGEN
	H5 - HYDROGEN
	H6 - HYDROGEN
	H7 - HYDROGEN
	H8 - HYDROGEN
	O1 - OXYGEN
	C1 - CARBON
	C2 - CARBON
	C3 - CARBON
	H15 - HYDROGEN
	H16 - HYDROGEN
	H17 - HYDROGEN
	H18 - HYDROGEN
	H19 - HYDROGEN
	H20 - HYDROGEN
	H21 - HYDROGEN
	H22 - HYDROGEN
	O2 - OXYGEN
	C4 - CARBON
	C5 - CARBON
	C6 - CARBON
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
	P1 - PHOSPHORUS
	BR1 - BROMINE
	BR2 - BROMINE
	BR3 - BROMINE
	N1 - NITROGEN
	LI1 - LITHIUM
	C17 - CARBON
	C18 - CARBON
	C19 - CARBON
	C20 - CARBON
	C21 - CARBON
	C22 - CARBON
	H23 - HYDROGEN
	H24 - HYDROGEN
	H25 - HYDROGEN
	H26 - HYDROGEN
	H27 - HYDROGEN
	H28 - HYDROGEN
	H29 - HYDROGEN
	H30 - HYDROGEN
	H31 - HYDROGEN
	H32 - HYDROGEN
	H33 - HYDROGEN
	H34 - HYDROGEN
	H35 - HYDROGEN
	H36 - HYDROGEN
	LI2 - LITHIUM
	AL2 - ALUMINIUM
	H37 - HYDROGEN
	H38 - HYDROGEN
	H39 - HYDROGEN
	H40 - HYDROGEN
)
(:init
	(BOND O10 H50)
	(BOND O10 H51)
	(BOND H50 O10)
	(BOND H51 O10)
	(BOND C1 C2)
	(BOND C2 C1)
	(BOND C2 O1)
	(BOND O1 C2)
	(BOND C2 C3)
	(BOND C3 C2)
	(BOND C1 H1)
	(BOND C1 H2)
	(BOND C1 H3)
	(BOND H1 C1)
	(BOND H2 C1)
	(BOND H3 C1)
	(BOND C2 H4)
	(BOND H4 C2)
	(BOND C3 H6)
	(BOND C3 H7)
	(BOND C3 H8)
	(BOND H6 C3)
	(BOND H7 C3)
	(BOND H8 C3)
	(BOND O1 H5)
	(BOND H5 O1)
	(BOND C4 C5)
	(BOND C5 C4)
	(BOND C5 O2)
	(BOND O2 C5)
	(BOND C5 C6)
	(BOND C6 C5)
	(BOND C4 H15)
	(BOND C4 H16)
	(BOND C4 H17)
	(BOND H15 C4)
	(BOND H16 C4)
	(BOND H17 C4)
	(BOND C5 H18)
	(BOND H18 C5)
	(BOND C6 H20)
	(BOND C6 H21)
	(BOND C6 H22)
	(BOND H20 C6)
	(BOND H21 C6)
	(BOND H22 C6)
	(BOND O2 H19)
	(BOND H19 O2)
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
	(BOND N4 O4)
	(BOND O4 N4)
	(BOND P1 BR1)
	(BOND P1 BR2)
	(BOND P1 BR3)
	(BOND BR1 P1)
	(BOND BR2 P1)
	(BOND BR3 P1)
	(BOND N1 LI1)
	(BOND N1 C17)
	(BOND N1 C18)
	(BOND LI1 N1)
	(BOND C17 N1)
	(BOND C18 N1)
	(BOND C17 C19)
	(BOND C17 C20)
	(BOND C19 C17)
	(BOND C20 C17)
	(BOND C18 C21)
	(BOND C18 C22)
	(BOND C21 C18)
	(BOND C22 C18)
	(BOND C17 H23)
	(BOND H23 C17)
	(BOND C18 H24)
	(BOND H24 C18)
	(BOND C19 H25)
	(BOND C19 H26)
	(BOND C19 H27)
	(BOND H25 C19)
	(BOND H26 C19)
	(BOND H27 C19)
	(BOND C20 H28)
	(BOND C20 H29)
	(BOND C20 H30)
	(BOND H28 C20)
	(BOND H29 C20)
	(BOND H30 C20)
	(BOND C21 H31)
	(BOND C21 H32)
	(BOND C21 H33)
	(BOND H31 C21)
	(BOND H32 C21)
	(BOND H33 C21)
	(BOND C22 H34)
	(BOND C22 H35)
	(BOND C22 H36)
	(BOND H34 C22)
	(BOND H35 C22)
	(BOND H36 C22)
	(BOND AL2 H37)
	(BOND AL2 H38)
	(BOND AL2 H39)
	(BOND AL2 H40)
	(BOND H37 AL2)
	(BOND H38 AL2)
	(BOND H39 AL2)
	(BOND H40 AL2)
	(procnone)
(= (total-cost) 0)
)
(:goal (and (procnone) (BOND H50 O1)(BOND O1 H50)(BOND H8 C3)(BOND C3 H8)(BOND H7 C3)(BOND C3 H7)(BOND H6 C3)(BOND C3 H6)(BOND H22 C6)(BOND C6 H22)(BOND H21 C6)(BOND C6 H21)(BOND H20 C6)(BOND C6 H20)(BOND H17 C4)(BOND C4 H17)(BOND H16 C4)(BOND C4 H16)(BOND H15 C4)(BOND C4 H15)(BOND H18 C5)(BOND C5 H18)(BOND C6 C5)(BOND C5 C6)(BOND C4 C5)(BOND C5 C4)(BOND H3 C1)(BOND C1 H3)(BOND H2 C1)(BOND C1 H2)(BOND C5 C1)(BOND C1 C5)(BOND O1 C2)(BOND C2 O1)(BOND H37 C2)(BOND C2 H37)(BOND C3 C2)(BOND C2 C3)(BOND C1 C2)(BOND C2 C1)))
(:metric minimize (total-cost))

)
