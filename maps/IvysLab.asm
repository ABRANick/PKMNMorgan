	object_const_def
	const IVYLAB_IVY
	const IVYLAB_INDIGO
	const IVYLAB_SCIENTIST1
	const IVYLAB_SCIENTIST2
	const IVYLAB_SCIENTIST3
IvysLab_MapScripts:
	def_scene_scripts


	def_callbacks

ProfIvyScript:
	playsound SFX_GLASS_TING_2
	showemote EMOTE_SHOCK, IVYLAB_IVY, 20
	faceplayer
	opentext
	writetext FillerText
	waitbutton
	closetext
	playsound SFX_GLASS_TING_2
	showemote EMOTE_SHOCK, PLAYER, 20
	playmusic MUSIC_RIVAL_ENCOUNTER
	disappear IVYLAB_INDIGO
	moveobject IVYLAB_INDIGO, 13, 10
	appear IVYLAB_INDIGO
	applymovement IVYLAB_INDIGO, IvyLabIndigoWalkToMorgan
	turnobject IVYLAB_INDIGO, LEFT
	faceplayer
	opentext
	writetext FillerText
	waitbutton
	closetext
	winlosstext Filler2Text, Filler2Text
	loadtrainer INDIGO, INDIGO1
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmap
	special HealParty
	setevent EVENT_FOUGHT_INDIGO
	applymovement IVYLAB_INDIGO, IvyLabIndigoWalkOut
	disappear IVYLAB_INDIGO
	end

IvyLabIndigoWalkToMorgan:
	step UP
	step UP
	step UP
	step UP
	step_end

IvyLabIndigoWalkOut:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

FillerText:
	text "Change Me!!"
	done

Filler2Text:
	text "Change now!"
	done


IvysLab_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  8, 13, SYROP, 3
	warp_event  9, 13, SYROP, 4
	
	def_coord_events

	def_bg_events

	def_object_events
	object_event 15,  6, SPRITE_IVY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, ProfIvyScript, -1
	object_event  0,  0, SPRITE_INDIGO, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, -1, -1
	object_event  7,  7, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, -1, EVENT_GOT_RALTS
	object_event  4,  6, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, -1, EVENT_GOT_RALTS
	object_event  7,  5, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, -1, EVENT_GOT_RALTS
