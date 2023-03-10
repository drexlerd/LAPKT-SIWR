(define (problem roverprob2023) (:domain Rover)
(:objects
	general - Lander
	colour high_res low_res - Mode
	rover0 - Rover
	rover0store - Store
	waypoint0 waypoint1 waypoint2 waypoint3 waypoint4 waypoint5 waypoint6 waypoint7 waypoint8 waypoint9 waypoint10 waypoint11 waypoint12 - Waypoint
	camera0 camera1 camera2 camera3 camera4 camera5 camera6 camera7 camera8 camera9 camera10 camera11 camera12 camera13 camera14 camera15 camera16 camera17 camera18 camera19 camera20 camera21 - Camera
	objective0 - Objective
	)
(:init
	(visible waypoint0 waypoint4)
	(visible waypoint4 waypoint0)
	(visible waypoint0 waypoint6)
	(visible waypoint6 waypoint0)
	(visible waypoint0 waypoint9)
	(visible waypoint9 waypoint0)
	(visible waypoint0 waypoint10)
	(visible waypoint10 waypoint0)
	(visible waypoint1 waypoint0)
	(visible waypoint0 waypoint1)
	(visible waypoint1 waypoint3)
	(visible waypoint3 waypoint1)
	(visible waypoint1 waypoint4)
	(visible waypoint4 waypoint1)
	(visible waypoint1 waypoint11)
	(visible waypoint11 waypoint1)
	(visible waypoint2 waypoint5)
	(visible waypoint5 waypoint2)
	(visible waypoint2 waypoint7)
	(visible waypoint7 waypoint2)
	(visible waypoint2 waypoint10)
	(visible waypoint10 waypoint2)
	(visible waypoint3 waypoint7)
	(visible waypoint7 waypoint3)
	(visible waypoint4 waypoint7)
	(visible waypoint7 waypoint4)
	(visible waypoint4 waypoint10)
	(visible waypoint10 waypoint4)
	(visible waypoint4 waypoint11)
	(visible waypoint11 waypoint4)
	(visible waypoint4 waypoint12)
	(visible waypoint12 waypoint4)
	(visible waypoint5 waypoint9)
	(visible waypoint9 waypoint5)
	(visible waypoint5 waypoint12)
	(visible waypoint12 waypoint5)
	(visible waypoint6 waypoint1)
	(visible waypoint1 waypoint6)
	(visible waypoint6 waypoint5)
	(visible waypoint5 waypoint6)
	(visible waypoint6 waypoint8)
	(visible waypoint8 waypoint6)
	(visible waypoint8 waypoint0)
	(visible waypoint0 waypoint8)
	(visible waypoint8 waypoint4)
	(visible waypoint4 waypoint8)
	(visible waypoint9 waypoint3)
	(visible waypoint3 waypoint9)
	(visible waypoint9 waypoint6)
	(visible waypoint6 waypoint9)
	(visible waypoint9 waypoint7)
	(visible waypoint7 waypoint9)
	(visible waypoint10 waypoint1)
	(visible waypoint1 waypoint10)
	(visible waypoint10 waypoint5)
	(visible waypoint5 waypoint10)
	(visible waypoint10 waypoint9)
	(visible waypoint9 waypoint10)
	(visible waypoint11 waypoint3)
	(visible waypoint3 waypoint11)
	(visible waypoint11 waypoint7)
	(visible waypoint7 waypoint11)
	(visible waypoint11 waypoint10)
	(visible waypoint10 waypoint11)
	(visible waypoint12 waypoint0)
	(visible waypoint0 waypoint12)
	(visible waypoint12 waypoint2)
	(visible waypoint2 waypoint12)
	(visible waypoint12 waypoint3)
	(visible waypoint3 waypoint12)
	(visible waypoint12 waypoint10)
	(visible waypoint10 waypoint12)
	(visible waypoint12 waypoint11)
	(visible waypoint11 waypoint12)
	(at_soil_sample waypoint0)
	(at_rock_sample waypoint0)
	(at_soil_sample waypoint1)
	(at_rock_sample waypoint2)
	(at_soil_sample waypoint3)
	(at_rock_sample waypoint4)
	(at_rock_sample waypoint5)
	(at_soil_sample waypoint6)
	(at_soil_sample waypoint8)
	(at_rock_sample waypoint8)
	(at_rock_sample waypoint9)
	(at_rock_sample waypoint12)
	(at_lander general waypoint12)
	(channel_free general)
	(at rover0 waypoint1)
	(available rover0)
	(store_of rover0store rover0)
	(empty rover0store)
	(equipped_for_rock_analysis rover0)
	(equipped_for_imaging rover0)
	(can_traverse rover0 waypoint1 waypoint0)
	(can_traverse rover0 waypoint0 waypoint1)
	(can_traverse rover0 waypoint1 waypoint3)
	(can_traverse rover0 waypoint3 waypoint1)
	(can_traverse rover0 waypoint1 waypoint6)
	(can_traverse rover0 waypoint6 waypoint1)
	(can_traverse rover0 waypoint1 waypoint10)
	(can_traverse rover0 waypoint10 waypoint1)
	(can_traverse rover0 waypoint1 waypoint11)
	(can_traverse rover0 waypoint11 waypoint1)
	(can_traverse rover0 waypoint0 waypoint4)
	(can_traverse rover0 waypoint4 waypoint0)
	(can_traverse rover0 waypoint0 waypoint9)
	(can_traverse rover0 waypoint9 waypoint0)
	(can_traverse rover0 waypoint0 waypoint12)
	(can_traverse rover0 waypoint12 waypoint0)
	(can_traverse rover0 waypoint3 waypoint7)
	(can_traverse rover0 waypoint7 waypoint3)
	(can_traverse rover0 waypoint6 waypoint8)
	(can_traverse rover0 waypoint8 waypoint6)
	(can_traverse rover0 waypoint10 waypoint2)
	(can_traverse rover0 waypoint2 waypoint10)
	(can_traverse rover0 waypoint10 waypoint5)
	(can_traverse rover0 waypoint5 waypoint10)
	(on_board camera0 rover0)
	(calibration_target camera0 objective0)
	(supports camera0 high_res)
	(supports camera0 low_res)
	(on_board camera1 rover0)
	(calibration_target camera1 objective0)
	(supports camera1 colour)
	(supports camera1 high_res)
	(on_board camera2 rover0)
	(calibration_target camera2 objective0)
	(supports camera2 colour)
	(supports camera2 high_res)
	(on_board camera3 rover0)
	(calibration_target camera3 objective0)
	(supports camera3 colour)
	(supports camera3 high_res)
	(on_board camera4 rover0)
	(calibration_target camera4 objective0)
	(supports camera4 high_res)
	(on_board camera5 rover0)
	(calibration_target camera5 objective0)
	(supports camera5 high_res)
	(supports camera5 low_res)
	(on_board camera6 rover0)
	(calibration_target camera6 objective0)
	(supports camera6 high_res)
	(on_board camera7 rover0)
	(calibration_target camera7 objective0)
	(supports camera7 colour)
	(supports camera7 high_res)
	(supports camera7 low_res)
	(on_board camera8 rover0)
	(calibration_target camera8 objective0)
	(supports camera8 colour)
	(supports camera8 high_res)
	(on_board camera9 rover0)
	(calibration_target camera9 objective0)
	(supports camera9 colour)
	(supports camera9 high_res)
	(supports camera9 low_res)
	(on_board camera10 rover0)
	(calibration_target camera10 objective0)
	(supports camera10 high_res)
	(supports camera10 low_res)
	(on_board camera11 rover0)
	(calibration_target camera11 objective0)
	(supports camera11 high_res)
	(supports camera11 low_res)
	(on_board camera12 rover0)
	(calibration_target camera12 objective0)
	(supports camera12 high_res)
	(on_board camera13 rover0)
	(calibration_target camera13 objective0)
	(supports camera13 colour)
	(supports camera13 low_res)
	(on_board camera14 rover0)
	(calibration_target camera14 objective0)
	(supports camera14 high_res)
	(supports camera14 low_res)
	(on_board camera15 rover0)
	(calibration_target camera15 objective0)
	(supports camera15 colour)
	(on_board camera16 rover0)
	(calibration_target camera16 objective0)
	(supports camera16 colour)
	(supports camera16 high_res)
	(supports camera16 low_res)
	(on_board camera17 rover0)
	(calibration_target camera17 objective0)
	(supports camera17 colour)
	(on_board camera18 rover0)
	(calibration_target camera18 objective0)
	(supports camera18 high_res)
	(supports camera18 low_res)
	(on_board camera19 rover0)
	(calibration_target camera19 objective0)
	(supports camera19 colour)
	(on_board camera20 rover0)
	(calibration_target camera20 objective0)
	(supports camera20 colour)
	(on_board camera21 rover0)
	(calibration_target camera21 objective0)
	(supports camera21 low_res)
	(visible_from objective0 waypoint1)
	(visible_from objective0 waypoint2)
	(visible_from objective0 waypoint4)
	(visible_from objective0 waypoint7)
	(visible_from objective0 waypoint8)
	(visible_from objective0 waypoint10)
	(visible_from objective0 waypoint11)
	(visible_from objective0 waypoint12)
)

(:goal (and
(communicated_rock_data waypoint5)
(communicated_rock_data waypoint4)
(communicated_rock_data waypoint0)
(communicated_rock_data waypoint8)
(communicated_rock_data waypoint9)
(communicated_rock_data waypoint2)
(communicated_rock_data waypoint12)
(communicated_image_data objective0 low_res)
(communicated_image_data objective0 high_res)
(communicated_image_data objective0 colour)
	)
)
)
