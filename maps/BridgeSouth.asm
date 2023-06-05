	object_const_def
	const BRIDGES_BIKER1
	const BRIDGES_CUEBALL1
	const BRIDGES_CUEBALL2

BridgeSouth_MapScripts:
	def_scene_scripts

	def_callbacks

BridgeSBiker1Script:
	trainer BIKER, DWAYNE, EVENT_BEAT_BIKER_DWAYNE, BridgeSBiker1SeenText, BridgeSBiker1BeatenText, 0, .Script

.Script
	endifjustbattled
	opentext
	writetext BridgeSBiker1AfterText
	waitbutton
	closetext
	end

BridgeSBiker1SeenText:
	text "HEY BITCH"
	done
		
BridgeSBiker1BeatenText:
	text "Maybe it's cause"
	done
	
BridgeSBiker1AfterText:
	text "To hell with them!"
	done

BridgeSCueBall1Script:
	trainer CUE_BALL, ALYX, EVENT_BEAT_CUEBALL_ALYX, BridgeSCueBall1SeenText, BridgeSCueBall1BeatenText, 0, .Script

.Script
	endifjustbattled
	opentext
	writetext BridgeSCueBall1AfterText
	waitbutton
	closetext
	end

BridgeSCueBall1SeenText:
	text "HEY BITCH"
	done
	
BridgeSCueBall1BeatenText:
	text "Maybe it's cause"
	done
	
BridgeSCueBall1AfterText:
	text "To hell with them!"
	done

BridgeSCueBall2Script:
	trainer CUE_BALL, ARCHIE, EVENT_BEAT_CUEBALL_ARCHIE, BridgeSCueBall2SeenText, BridgesCueBall2BeatenText, 0, .Script

.Script
	endifjustbattled
	opentext
	writetext BridgeSCueBall2AfterText
	waitbutton
	closetext
	end

BridgeSCueBall2SeenText:
	text "HEY BITCH"
	done
	
BridgesCueBall2BeatenText:
	text "Maybe it's cause"
	done

BridgeSCueBall2AfterText:
	text "abjed"
	done

BridgeSouth_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events

	def_object_events

	object_event  3, 41, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, BridgeSBiker1Script, -1
	object_event 20, 25, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 5, BridgeSCueBall1Script, -1
	object_event 22,  4, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_LEFT, 3, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 5, BridgeSCueBall2Script, -1
	
