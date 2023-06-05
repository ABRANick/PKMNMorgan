	object_const_def
    const SAFARI_GATE_GUARD_1
    const SAFARI_GATE_GUARD_2
    const SAFARI_GATE_GUARD_3
    const SAFARI_GATE_GUARD_4
    const SAFARI_GATE_CAMPER_1

SafariGate_MapScripts:
	def_scene_scripts

	def_callbacks

SafariGatePlainsGuardScript:
	opentext
	yesorno
	iffalse .DontGoOnSafari
	closetext
	applymovement SAFARI_GATE_GUARD_1, SafariGateGuardMovement
	pause 20
	applymovement PLAYER, SafariGateWalkIntoMovement
	warpcheck
	end

.DontGoOnSafari
	writetext SafariGateDontGoOnSafariText
	waitbutton
	closetext
	end

SafariGateDontGoOnSafariText:
	text "Please let me know"
	line "whenever you're"
	cont "ready."
	done

SafariGateGuardMovement:
	step UP
	step RIGHT
	turn_head LEFT
	step_end

SafariGateWalkIntoMovement:
	step UP
	step UP
	step UP
	step_end

SafariGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 15,  4, SAFARI, 6
    warp_event 15,  5, SAFARI, 7
	warp_event	0,	0, SAFARI_PLAINS, 1

  

	def_coord_events

	def_bg_events
	
	

	def_object_events
	object_event  0,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_OW_GREEN, OBJECTTYPE_SCRIPT, 0, SafariGatePlainsGuardScript, -1
    object_event 3,  2, SPRITE_OFFICER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_OW_RED, OBJECTTYPE_SCRIPT, 0, -1, -1
    object_event 6,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_OW_BLUE, OBJECTTYPE_SCRIPT, 0, -1, -1
    object_event 9,  2, SPRITE_OFFICER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_OW_BROWN, OBJECTTYPE_SCRIPT, 0, -1, -1

    