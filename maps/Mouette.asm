	object_const_def
	const FB_LORELEI
	const MOUETTE_SAILOR1
	const MOUETTE_SAILOR2
	const MOUETTE_SAILOR3
	const MOUETTE_SAILOR4
	const MOUETTE_SAILOR5
	const MOUETTE_FISHER1
	const MOUETTE_FISHER2
	const MOUETTE_FISHER3
	const MOUETTE_LASS1
	const MOUETTE_LADY1
	const MOUETTE_LADY2
	const MOUETTE_CLERK1
	const MOUETTE_CLERK2
	const MOUETTE_POLIWRATH	



Mouette_MapScripts:
	def_scene_scripts
	scene_script .DummyScene0 ; SCENE_TEST_MOUETTE
	scene_script .DummyScene1 ; SCENE_FOLLOWUP_MOUETTE


	def_callbacks

.DummyScene0
	end
.DummyScene1
	end


SceneTestMouetteScript:
	showemote EMOTE_SHOCK, PLAYER, 15
	opentext
	writetext MouetteSailor3MessageText
	waitbutton
	closetext
	setscene SCENE_FOLLOWUP_MOUETTE
	end


FbLoreleiBattleScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_LORELEI
	iftrue .FightDone
	writetext FbLoreleiSeenText
	waitbutton
	closetext
	winlosstext FbLoreleiSeenText, 0
	loadtrainer LORELEI, LORELEI1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_LORELEI
	opentext
	writetext FbLoreleiBeatenText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_RISINGBADGE
	readvar VAR_BADGES
	writetext FbLoreleiAfterText
	waitbutton
	closetext
	end

.FightDone:
	writetext FbLoreleiAfterText
	waitbutton
	closetext
	end
	
FbLoreleiSeenText:
	text "..."
	done
	
FbLoreleiBeatenText:
	text "..."
	done
	
FbLoreleiAfterText:
	text "..."
	done

MouetteSailor1MessageScript:
	faceplayer
	opentext
	writetext MouetteSailor1MessageText
	waitbutton
	closetext
	end

MouetteSailor1MessageText:
	text ".1."
	done

MouetteSailor2MessageScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_HM03_SURF
	iftrue .GotStrength
	writetext MouetteSailor2MessageText
	promptbutton
	verbosegiveitem HM_SURF
	setevent EVENT_GOT_HM03_SURF
.GotStrength:
	writetext MouetteSailor2MessageText
	waitbutton
	closetext
	end

MouetteSailor2MessageText:
	text ".2."
	done


MouetteSailor3MessageScript:
	faceplayer
	opentext
	writetext MouetteSailor3MessageText
	waitbutton
	closetext
	end

MouetteSailor3MessageText:
	text ".3e."
	done

MouetteSailor4MessageScript:
	faceplayer
	opentext
	writetext MouetteSailor4MessageText
	waitbutton
	closetext
	end

MouetteSailor4MessageText:
	text ".4."
	done

MouetteSailor5MessageScript:
	faceplayer
	opentext
	writetext MouetteSailor4MessageText
	waitbutton
	closetext
	end

MouetteSailor5MessageText:
	text "..."
	done

MouetteFisher1MessageScript:
	faceplayer
	opentext
	writetext MouetteFisher1MessageText
	waitbutton
	closetext
	end

MouetteFisher1MessageText:
	text ".1."
	done

MouetteFisher2MessageScript:
	faceplayer
	opentext
	writetext MouetteFisher2MessageText
	waitbutton
	closetext
	end

MouetteFisher2MessageText:
	text ".2."
	done

MouetteFisher3MessageScript:
	faceplayer
	opentext
	writetext MouetteFisher3MessageText
	waitbutton
	closetext
	end

MouetteFisher3MessageText:
	text "..."
	done

MouetteLass1MessageScript:
	faceplayer
	opentext
	writetext MouetteLass1MessageText
	waitbutton
	closetext
	end

MouetteLass1MessageText:
	text "..."
	done

MouetteLady1MessageScript:
	faceplayer
	opentext
	writetext MouetteLady1MessageText
	waitbutton
	closetext
	end
MouetteLady1MessageText:
	text ".1."
	done

MouetteLady2MessageScript:
	faceplayer
	opentext
	writetext MouetteLady2MessageText
	waitbutton
	closetext
	end
MouetteLady2MessageText:
	text "..."
	done

MouetteClerk1MessageScript:
	faceplayer
	opentext
	writetext MouetteClerk1MessageText
	waitbutton
	closetext
	end
MouetteClerk1MessageText:
	text ".B."
	done

MouetteClerk2MessageScript:
	faceplayer
	opentext
	writetext MouetteClerk2MessageText
	waitbutton
	closetext
	end
MouetteClerk2MessageText:
	text "..."
	done

MouettePoliwrathScript:
	cry POLIWRATH
	loadwildmon POLIWRATH, 35
	startbattle
	reloadmapafterbattle
	disappear MOUETTE_POLIWRATH	
	setevent EVENT_FOUGHT_POLIWRATH
	end

MouetteHiddenGoldBerry:
	hiddenitem GOLD_BERRY, EVENT_MOUETTE_HIDDEN_GOLD_BERRY

MouetteHiddenNugget:
	hiddenitem NUGGET, EVENT_MOUETTE_HIDDEN_NUGGET

MouetteHiddenRareCandy:
	hiddenitem RARE_CANDY, EVENT_MOUETTE_HIDDEN_RARE_CANDY

MouetteHiddenGoldBerry2:
	hiddenitem GOLD_BERRY, EVENT_MOUETTE_HIDDEN_GOLD_BERRY2

MouetteHiddenMintBerry:
	hiddenitem MINT_BERRY, EVENT_MOUETTE_HIDDEN_MINT_BERRY

MouetteHiddenMintBerry2:
	hiddenitem MINT_BERRY, EVENT_MOUETTE_HIDDEN_MINT_BERRY2


Mouette_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 51,  8, BRIDGE_SOUTH_WEST, 1
	warp_event 51,  9, BRIDGE_SOUTH_WEST, 2
	warp_event 37,	19, MOUETTE_POKECENTER_1F, 1
	warp_event 38,	19, MOUETTE_POKECENTER_1F, 2
	warp_event 49, 39, MOUETTE_LIGHTHOUSE_1F, 1
	warp_event  3, 35, MOUETTE_GYM, 1
	warp_event 39, 29, OMEKATA, 1
	warp_event 43, 19, MOUETTE_MART, 1


	def_coord_events
	coord_event 46,  9, SCENE_TEST_MOUETTE, SceneTestMouetteScript
	coord_event 46, 10, SCENE_TEST_MOUETTE, SceneTestMouetteScript


	def_bg_events
	bg_event 23, 26, BGEVENT_ITEM, MouetteHiddenGoldBerry
	bg_event 24, 18, BGEVENT_ITEM, MouetteHiddenGoldBerry2
	bg_event 11, 22, BGEVENT_ITEM, MouetteHiddenNugget
	bg_event 19,  4, BGEVENT_ITEM, MouetteHiddenRareCandy
	bg_event 28, 12, BGEVENT_ITEM, MouetteHiddenMintBerry
	bg_event 37, 27, BGEVENT_ITEM, MouetteHiddenMintBerry2
	def_object_events

	

	object_event 13, 10, SPRITE_LORELEI, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 1, FbLoreleiBattleScript, -1
	object_event 11, 19, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 1, MouetteSailor1MessageScript, -1
	object_event 21,  7, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 1, MouetteSailor2MessageScript, -1
	object_event 27, 12, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 1, MouetteSailor3MessageScript, -1
	object_event 24, 28, SPRITE_SAILOR, SPRITEMOVEDATA_WALK_LEFT_RIGHT , 2, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 1, MouetteSailor4MessageScript, -1
	object_event 34, 22, SPRITE_SAILOR, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 1, MouetteSailor5MessageScript, -1
	object_event 38, 43, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 1, MouetteFisher1MessageScript, -1
	object_event 32, 36, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 1, MouetteFisher2MessageScript, -1
	object_event  4, 23, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 1, MouetteFisher3MessageScript, -1
	object_event 40, 32, SPRITE_LASS, SPRITEMOVEDATA_WALK_LEFT_RIGHT , 2, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 1, MouetteLass1MessageScript, -1
	object_event 32, 37, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 1, MouetteLady1MessageScript, -1
	object_event 38, 11, SPRITE_POKEFAN_F, SPRITEMOVEDATA_WALK_UP_DOWN , 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 1, MouetteLady2MessageScript, -1
	object_event 30,  5, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 1, MouetteClerk1MessageScript, -1
	object_event 12, 29, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 1, MouetteClerk2MessageScript, -1
	object_event 52, 13, SPRITE_POLIWRATH, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_OW_BLUE, OBJECTTYPE_SCRIPT, 0, MouettePoliwrathScript, EVENT_FOUGHT_POLIWRATH

