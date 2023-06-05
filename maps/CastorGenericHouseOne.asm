	object_const_def
	const TEST_ANNABELLE1
	const TEST_ANNABELLE2
	const TEST_ANNABELLE3

CastorGenericHouseOne_MapScripts:
	def_scene_scripts 

	def_callbacks

TestBattle1Script:
	trainer EXECUTIVEF, EXECUTIVEF_1, EVENT_BEAT_SAILOR_DAVEY, TestBattle1SeenText, TestBattle1BeatenText, 0, .Script

.Script
	endifjustbattled
	opentext
	writetext TestBattle1AfterText
	waitbutton
	closetext
	end

TestBattle1SeenText:
	text "YO HO HO"
	done
	
TestBattle1BeatenText:
	text "Maybe it's cause"
	done
	
TestBattle1AfterText:
	text "To hell with them!"

TestBattle2Script:
	trainer BEPPI, BEPPI1, EVENT_BEAT_SAILOR_DAVEY, TestBattle2SeenText, TestBattle2BeatenText, 0, .Script

.Script
	endifjustbattled
	opentext
	writetext TestBattle2AfterText
	waitbutton
	closetext
	end

TestBattle2SeenText:
	text "YO HO HO"
	done
	
TestBattle2BeatenText:
	text "Maybe it's cause"
	done
	
TestBattle2AfterText:
	text "To hell with them!"

TestBattle3Script:
	trainer EXECUTIVEM, EXECUTIVEM_1, EVENT_BEAT_SAILOR_DAVEY, TestBattle3SeenText, TestBattle3BeatenText, 0, .Script

.Script
	endifjustbattled
	opentext
	writetext TestBattle1AfterText
	waitbutton
	closetext
	end

TestBattle3SeenText:
	text "YO HO HO"
	done
	
TestBattle3BeatenText:
	text "Maybe it's cause"
	done
	
TestBattle3AfterText:
	text "To hell with them!"


CastorGenericHouseOne_MapEvents:
	db 0, 0 ; filler

	def_warp_events
    warp_event  4,  7, CASTOR, 8
    warp_event  5,  7, CASTOR, 8

	def_coord_events

	def_bg_events

	
	def_object_events
	object_event 7,  2, SPRITE_ANNABELLE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TestBattle1Script, -1
	object_event 7,  3, SPRITE_ANNABELLE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TestBattle2Script, -1
	object_event 7,  4, SPRITE_ANNABELLE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TestBattle3Script, -1