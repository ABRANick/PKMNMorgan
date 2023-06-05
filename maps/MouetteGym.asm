	object_const_def
	const MOUETTE_ANNABELLE
	const MOUETTE_KAREN
	const BOAT_SAILOR1
	const BOAT_SAILOR2
	const MOUETTE_GYM_GUIDE

MouetteGym_MapScripts:
	def_scene_scripts

	def_callbacks

MouetteLAnnabelleBattleScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_ANNABELLE
	iftrue .FightDone
	writetext MouetteLAnnabelleSeenText
	waitbutton
	closetext
	winlosstext MouetteLAnnabelleSeenText, 0
	loadtrainer ANNABELLE, ANNABELLE1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_ANNABELLE
	opentext
	writetext MouetteLAnnabelleBeatenText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_PLAINBADGE
	readvar VAR_BADGES
	writetext MouetteLAnnabelleAfterText
	waitbutton
	closetext
	end

.FightDone:
	checkevent EVENT_GOT_TM08_BUBBLEBEAM
	iftrue .AlreadyGotTM
	writetext MouetteLAnnabelleAfterText
	promptbutton
	verbosegiveitem TM_BUBBLEBEAM
	iffalse .BagFull
	setevent EVENT_GOT_TM08_BUBBLEBEAM
	writetext MouetteLAnnabelleAfterText
	waitbutton
	closetext
	end

.AlreadyGotTM:
	writetext MouetteLAnnabelleSeenText
	waitbutton
.BagFull:
	closetext
	end

	
MouetteLAnnabelleSeenText:
	text "..."
	done
	
MouetteLAnnabelleBeatenText:
	text "..."
	done
	
MouetteLAnnabelleAfterText:
	text "..."
	done

BoatSailor1Script:
	trainer SAILOR, DAVEY, EVENT_BEAT_SAILOR_DAVEY, BoatSailor1SeenText, BoatSailor1BeatenText, 0, .Script

.Script
	opentext
	writetext BoatSailor1AfterText
	waitbutton
	closetext
	clearevent EVENT_ANNABELLE_LOCKED
	end

BoatSailor1SeenText:
	text "YO HO HO"
	done
	
BoatSailor1BeatenText:
	text "Maybe it's cause"
	done
	
BoatSailor1AfterText:
	text "To hell with them!"
	done

BoatSailor2Script:
	trainer SAILOR, HURLEY, EVENT_BEAT_SAILOR_HURLEY, BoatSailor2SeenText, BoatSailor2BeatenText, 0, .Script

.Script
	opentext
	writetext BoatSailor2AfterText
	waitbutton
	closetext
	clearevent EVENT_ANNABELLE_LOCKED
	end

BoatSailor2SeenText:
	text "YO HO HO"
	done
	
BoatSailor2BeatenText:
	text "Maybe it's cause"
	done
	
BoatSailor2AfterText:
	text "To hell with them!"
	done

MouetteGymGuideScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_ANNABELLE
	iftrue .MouetteGymGuideWinScript
	writetext MouetteGymGuideText
	waitbutton
	closetext
	end


.MouetteGymGuideWinScript:
	faceplayer
	opentext
	writetext MouetteGymGuideWinText
	waitbutton
	closetext
	end


MouetteGymGuideText:
	text "Ahoy! Champ in the"
	line "making!"

	para "To best these fear"
	line "some swashbucklin'"
	cont "seadogs, ye best"
	cont "be launching a ba-"
	cont "rrage o' Electric"
	cont "n' Psychic attacks"

	para "Lest ye be walkin'"
	line "the plank!"

	para "Yarr harr harr!"

	done

MouetteGymGuideWinText:
	text "Begad lassie!"

	para "Ye 'av sent Cap'n"
	line "Annabelle stright"
	cont "to the Davy Jones"
	cont "Locker, n' claimed"
	cont "her bounty!"

	done

MouetteGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 10,  0, MOUETTE, 6

	def_coord_events

	def_bg_events

	def_object_events

	object_event 25,  8, SPRITE_ANNABELLE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 1, MouetteLAnnabelleBattleScript, EVENT_ANNABELLE_LOCKED
		object_event  4,  7, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_DOWN, 3, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, BoatSailor1Script, -1
	object_event 11,  6, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_DOWN, 3, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 5, BoatSailor2Script, -1
	object_event 20,  7, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MouetteGymGuideScript, -1
