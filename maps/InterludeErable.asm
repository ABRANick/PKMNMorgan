	object_const_def
	const INTERLUDE_ERABLE_OFFICER

InterludeErable_MapScripts:
	def_scene_scripts 
	scene_script .DummyScene0 ; SCENE_ROUTE48_GATE
	scene_script .DummyScene1 ; SCENE_ROUTE48_GATE_NOTHING

	def_callbacks

.DummyScene0:
 	end

.DummyScene1:
	end

ErableGateOfficerWestScript:
	showemote EMOTE_SHOCK, INTERLUDE_ERABLE_OFFICER, 60
	opentext 
	writetext ErableGateOfficerEntranceText
	waitbutton
	closetext
	showemote EMOTE_QUESTION, PLAYER, 60
	applymovement PLAYER, ErableGateMorganMovementWest
	turnobject PLAYER, LEFT
	opentext
	writetext ErableGateOfficerWarningText
	waitbutton
	closetext
	showemote EMOTE_SAD, PLAYER, 60
	opentext 
	writetext ErableGateOfficerWarningTwoText
	waitbutton
	closetext
	showemote EMOTE_SHOCK, PLAYER, 60
	opentext 
	writetext ErableGateOfficerWarningThreeText
	waitbutton
	closetext
	turnobject INTERLUDE_ERABLE_OFFICER, DOWN
	opentext
	writetext ErableGateOfficerWarningFourText
	waitbutton
	closetext
	turnobject INTERLUDE_ERABLE_OFFICER, RIGHT
	showemote EMOTE_HAPPY, PLAYER, 60
	setscene SCENE_ROUTE48_GATE_NOTHING
	end

ErableGateOfficerEastScript:
	showemote EMOTE_SHOCK, INTERLUDE_ERABLE_OFFICER, 60
	opentext 
	writetext ErableGateOfficerEntranceText
	waitbutton
	closetext
	showemote EMOTE_QUESTION, PLAYER, 60
	applymovement PLAYER, ErableGateMorganMovementEast
	turnobject PLAYER, LEFT
	opentext
	writetext ErableGateOfficerWarningText
	waitbutton
	closetext
	showemote EMOTE_SAD, PLAYER, 60
	opentext 
	writetext ErableGateOfficerWarningTwoText
	waitbutton
	closetext
	showemote EMOTE_SHOCK, PLAYER, 60
	opentext 
	writetext ErableGateOfficerWarningThreeText
	waitbutton
	closetext
	turnobject INTERLUDE_ERABLE_OFFICER, DOWN
	opentext
	writetext ErableGateOfficerWarningFourText
	waitbutton
	closetext
	turnobject INTERLUDE_ERABLE_OFFICER, RIGHT
	showemote EMOTE_HAPPY, PLAYER, 60
	setscene SCENE_ROUTE48_GATE_NOTHING
	end

ErableGateOfficerFurtherEastScript:
	showemote EMOTE_SHOCK, INTERLUDE_ERABLE_OFFICER, 60
	opentext 
	writetext ErableGateOfficerEntranceText
	waitbutton
	closetext
	showemote EMOTE_QUESTION, PLAYER, 60
	applymovement PLAYER, ErableGateMorganMovementEast
	turnobject PLAYER, LEFT
	opentext
	writetext ErableGateOfficerWarningText
	waitbutton
	closetext
	showemote EMOTE_SAD, PLAYER, 60
	opentext 
	writetext ErableGateOfficerWarningTwoText
	waitbutton
	closetext
	showemote EMOTE_SHOCK, PLAYER, 60
	opentext 
	writetext ErableGateOfficerWarningThreeText
	waitbutton
	closetext
	turnobject INTERLUDE_ERABLE_OFFICER, DOWN
	opentext
	writetext ErableGateOfficerWarningFourText
	waitbutton
	closetext
	turnobject INTERLUDE_ERABLE_OFFICER, RIGHT
	showemote EMOTE_HAPPY, PLAYER, 60
	setscene SCENE_ROUTE48_GATE_NOTHING
	end

ErableGateOfficerEntranceText: 
	text "You again?"
	done

ErableGateOfficerWarningText:
	text "How many times"
	line "do I have to tell"
	cont "you, you can't"
	cont "pass through here"
	cont "without either"
	cont "supervision or"
	cont "your own #MON"
	cont "In your case"
	cont "I'd recommend both"
	done 

ErableGateOfficerWarningTwoText:
	text "..."
	line "..."
	cont "Your grandfathers"
	cont "#MON huh?"
	cont "Will that thing"
	cont "even listen"
	cont "to you?"
	done

ErableGateOfficerWarningThreeText:
	text "Your grandma hasn't"
	line "hasn't been back"
	cont "since yesterday?"
	done

ErableGateOfficerWarningFourText:
	text "Castor city isn't"
	line "too far from here"
	cont "just don't do"
	cont "anything stupid"
	cont "or reckless.. Or"
	cont "anything else you"
	cont "normally do, like"
	cont "riding your bike"
	cont "down hill and"
	cont "breaking it… twice"
	done 

ErableGateMorganMovementWest:
	step DOWN
	step DOWN 
	step DOWN 
	step DOWN
	step_end

ErableGateMorganMovementEast:
	step DOWN
	step DOWN 
	step DOWN
	step DOWN
	step LEFT 
	step_end

ErableGateMorganMovementFurtherEast:
	step DOWN 
	step DOWN
	step DOWN
	step DOWN
	step LEFT 
	step LEFT
	step_end
	
InterludeErable_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  0, ERABLE_TOWN, 2
	warp_event  3,  0, ERABLE_TOWN, 3
	warp_event  2,  9, ROUTE_48N, 1
	warp_event  3,  9, ROUTE_48N, 1

	def_coord_events
	coord_event  2,  1, SCENE_ROUTE48_GATE, ErableGateOfficerWestScript
	coord_event  3,  1, SCENE_ROUTE48_GATE, ErableGateOfficerEastScript
	coord_event  4,  1, SCENE_ROUTE48_GATE, ErableGateOfficerFurtherEastScript

	def_bg_events

	def_object_events
	object_event  0,  5, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, -1, -1
