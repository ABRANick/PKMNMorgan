	object_const_def
	const O_MISTY
	const O_BLUE
	const O_KIMONOGIRL1
	const O_KIMONOGIRL2
	const O_POKEFANM1
	const O_POKEFANM2
	const O_POKEFANM3
	const O_COOLTRAINER1
	const O_COOLTRAINER2
	const O_COOLTRAINER3
	const O_LASS1
	const O_LASS2
	const O_POKEFANF1
	const O_POKEFANF2


Omekata_MapScripts:
	def_scene_scripts

	def_callbacks


OMistyScript:
	faceplayer
	opentext
	checkflag ENGINE_CASCADEBADGE
	iftrue .FightDone
	writetext MistyIntro2Text
	waitbutton
	closetext
	winlosstext MistyIntro2Text, 0
	loadtrainer MISTY, MISTY1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_MISTY
	opentext
	writetext MistyIntro2Text
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_CASCADEBADGE
	readvar VAR_BADGES
	writetext MistyIntro2Text
	waitbutton
	closetext
	end
.FightDone:
	writetext MistyIntro2Text
	waitbutton
	closetext


	
MistyIntro2Text:
	text "..."
	done

ViridianGymBlue2Script:
	faceplayer
	opentext
	checkflag ENGINE_EARTHBADGE
	iftrue .FightDone
	writetext LeaderBlueBefore2Text
	waitbutton
	closetext
	winlosstext LeaderBlueBefore2Text, 0
	loadtrainer BLUE, BLUE1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_BLUE
	opentext
	writetext LeaderBlueBefore2Text
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_EARTHBADGE
	writetext LeaderBlueBefore2Text
	waitbutton
	closetext
	end

.FightDone:
	writetext LeaderBlueBefore2Text
	waitbutton
	closetext
	end

LeaderBlueBefore2Text:
	text "..."
	done

OKimonoGirl1MessageScript:
	faceplayer
	opentext
	writetext OKimonoGirl1MessageText
	waitbutton
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_CASCADEBADGE
	closetext
	end

OKimonoGirl1MessageText:
	text "1"
	done

OKimonoGirl2MessageScript:
	faceplayer
	opentext
	writetext OKimonoGirl2MessageText
	waitbutton
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_EARTHBADGE
	closetext
	end

OKimonoGirl2MessageText:
	text "2"
	done

OPokeFanM1MessageScript:
	faceplayer
	opentext
	writetext OPokeFanM1MessageText
	waitbutton
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_MARSHBADGE
	closetext
	end

OPokeFanM1MessageText:
	text "1"
	done

OPokeFanM2MessageScript:
	faceplayer
	opentext
	writetext OPokeFanM2MessageText
	waitbutton
	closetext
	end

OPokeFanM2MessageText:
	text "2"
	done

OPokeFanM3MessageScript:
	faceplayer
	opentext
	writetext OPokeFanM3MessageText
	waitbutton
	closetext
	end

OPokeFanM3MessageText:
	text ".3."
	done

OCooltrainer1MessageScript:
	faceplayer
	opentext
	writetext OCooltrainer1MessageText
	waitbutton
	closetext
	end

OCooltrainer1MessageText:
	text "1"
	done

OCooltrainer2MessageScript:
	faceplayer
	opentext
	writetext OCooltrainer2MessageText
	waitbutton
	closetext
	end

OCooltrainer2MessageText:
	text "2"
	done

OCooltrainer3MessageScript:
	faceplayer
	opentext
	writetext OCooltrainer3MessageText
	waitbutton
	closetext
	end

OCooltrainer3MessageText:
	text "3"
	done

OLass1MessageScript:
	faceplayer
	opentext
	writetext OLass1MessageText
	waitbutton
	closetext
	end

OLass1MessageText:
	text "1"
	done

OLass2MessageScript:
	faceplayer
	opentext
	writetext OLass2MessageText
	waitbutton
	closetext
	end

OLass2MessageText:
	text "2"
	done

OPokeFanF1MessageScript:
	faceplayer
	opentext
	writetext OPokeFanF1MessageText
	waitbutton
	closetext
	end

OPokeFanF1MessageText:
	text "1"
	done

OPokeFanF2MessageScript:
	faceplayer
	opentext
	writetext OPokeFanF2MessageText
	waitbutton
	closetext
	end

OPokeFanF2MessageText:
	text "2"
	done

OmekataHiddenCalcium:
	hiddenitem CALCIUM, EVENT_OMEKATA_HIDDEN_CALCIUM

OmekataHiddenGoldBerry:
	hiddenitem GOLD_BERRY, EVENT_OMEKATA_HIDDEN_GOLD_BERRY

OmekataHiddenMiracleBerry:
	hiddenitem MIRACLEBERRY, EVENT_OMEKATA_HIDDEN_MIRACLE_BERRY

OmekataHiddenRareCandy:
	hiddenitem RARE_CANDY, EVENT_OMEKATA_HIDDEN_RARE_CANDY

OmekataHiddenCarbos:	
	hiddenitem CARBOS, EVENT_OMEKATA_HIDDEN_CARBOS

OmekataHiddenBigMushroom:
	hiddenitem BIG_MUSHROOM, EVENT_OMEKATA_HIDDEN_MUSHROOM

Omekata_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  8, 15, OMEKATA_POKECENTER_1F, 1
	warp_event  9, 15, OMEKATA_POKECENTER_1F, 2
	warp_event  13, 15, OMEKATA_MART, 1
	warp_event	43, 17, OMEKATA_TRAIN_STATION, 1
	warp_event 44, 18, OMEKATA_TRAIN_STATION, 2
	def_coord_events

	def_bg_events
	bg_event  5, 24, BGEVENT_ITEM, OmekataHiddenCalcium
	bg_event 36, 12, BGEVENT_ITEM, OmekataHiddenGoldBerry
	bg_event 36,  4, BGEVENT_ITEM, OmekataHiddenMiracleBerry
	bg_event 27, 14, BGEVENT_ITEM, OmekataHiddenRareCandy
	bg_event 18, 19, BGEVENT_ITEM, OmekataHiddenCarbos
	bg_event 37, 25, BGEVENT_ITEM, OmekataHiddenBigMushroom

	def_object_events

	object_event 47,  2, SPRITE_MISTY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 1, OMistyScript, -1
	object_event 46,  2, SPRITE_BLUE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 1, ViridianGymBlue2Script, -1
	object_event 33,  9, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 1, OKimonoGirl1MessageScript, -1
	object_event 24, 13, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 1, OKimonoGirl2MessageScript, -1
	object_event 12, 20, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 1, OPokeFanM1MessageScript, -1
	object_event 43, 20, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 1, OPokeFanM2MessageScript, -1
	object_event 26, 24, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 1, OPokeFanM3MessageScript, -1
	object_event 21,  9, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 1, OCooltrainer1MessageScript, -1
	object_event 25, 13, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 1, OCooltrainer2MessageScript, -1
	object_event 10, 10, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 1, OCooltrainer3MessageScript, -1
	object_event 41, 10, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 1, OLass1MessageScript, -1
	object_event 17, 23, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 1, OLass2MessageScript, -1
	object_event  5, 25, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 1, OPokeFanF1MessageScript, -1
	object_event 38,  2, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 1, OPokeFanF2MessageScript, -1

