OA_SUNSCREEN_PRICE EQU 9800

	object_const_def
	const OA_POKEFANM1
	const OA_POKEFANM2
	const OA_COOLTRAINER1
	const OA_LASS1
	const OA_CLERK1
	const OA_CLERK2
	const OA_POKEFANF1

OmekataAlley_MapScripts:
	def_scene_scripts

	def_callbacks


OAPokeFanM1MessageScript:
	faceplayer
	opentext
	writetext OAPokeFanM1MessageText
	waitbutton
	closetext
	end

OAPokeFanM1MessageText:
	text "1"
	done

OAPokeFanM2MessageScript:
	faceplayer
	opentext
	writetext OAPokeFanM2MessageText
	waitbutton
	closetext
	end

OAPokeFanM2MessageText:
	text "2"
	done

OACoolTrainer1MessageScript:
	faceplayer
	opentext
	writetext OACoolTrainer1MessageText
	waitbutton
	closetext
	end

OACoolTrainer1MessageText:
	text "1"
	done

OALass1MessageScript:
	faceplayer
	opentext
	writetext OALass1MessageText
	waitbutton
	closetext
	end

OALass1MessageText:
	text "1"
	done

OAClerk1MessageScript:
	checkevent EVENT_BEAT_TSUBAKI
	iffalse .StillUnpacking
	faceplayer
	opentext
	writetext OAClerk1MessageText
	waitbutton
	closetext
	end

.StillUnpacking
	faceplayer
	opentext
	writetext OAClerk1StillPackingText
	waitbutton
	closetext
	end

OAClerk1MessageText:
	text "Welcome!"

	para "Tired of you and"
	line "your pokemon gett-"

	done

OAClerk1StillPackingText:
	text "I hate to turn"
	line "away a customer"

	para "but, do you mind"
	line "coming back later?"

	para "I'm still unpack-"
	cont "ing."
	done

OAClerk2MessageScript:
	faceplayer
	opentext
	writetext OAClerk2MessageText
	waitbutton
	closetext
	end

OAClerk2MessageText:
	text "2"
	done

OAPokeFanF1MessageScript:
	faceplayer
	opentext
	writetext OAPokeFanF1MessageText
	waitbutton
	closetext
	end

OAPokeFanF1MessageText:
	text "1"
	done

OmekataHiddenFireStone:	
	hiddenitem FIRE_STONE, EVENT_OMEKATA_HIDDEN_FIRE_STONE

OmekataHiddenMaxRevive:
	hiddenitem MAX_REVIVE, EVENT_OMEKATA_HIDDEN_MAX_REVIVE

OmekataAlley_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 17,	3, OMEKATA_BLACK_MARKET, 1

	def_coord_events

	def_bg_events
	
	bg_event  3,  2, BGEVENT_ITEM, OmekataHiddenFireStone
	bg_event 12, 13, BGEVENT_ITEM, OmekataHiddenMaxRevive

	def_object_events
	object_event 23,  7, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 1, OAPokeFanM1MessageScript, -1
	object_event 19,  5, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 1, OAPokeFanM2MessageScript, -1
	object_event  8,  4, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 1, OACoolTrainer1MessageScript, -1
	object_event 17, 10, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 1, OALass1MessageScript, -1
	object_event 25, 11, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 1, OAClerk1MessageScript, -1
	object_event  7,  7, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 1, OAClerk2MessageScript, -1
	object_event 22,  7, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 1, OAPokeFanF1MessageScript, -1
	