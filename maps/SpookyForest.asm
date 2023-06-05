	object_const_def
	const SPOOKYFOREST_VIOLA
SpookyForest_MapScripts:
	def_scene_scripts

	def_callbacks

GraveyardViolaScript:
	faceplayer
	opentext
	writetext Violatext1
	waitbutton
	closetext
	winlosstext Violawinlosstext, Violawinlosstext
	loadtrainer VIOLA, VIOLA1
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmap
	special HealParty
	opentext
	writetext Violatext2
	waitbutton
	closetext
	disappear SPOOKYFOREST_VIOLA
	end

Violawinlosstext:
	text "Ohohoho"
	done

Violatext1:
	text "Battle Start"
	done

Violatext2:
	text "Battle Over"
	done

SpookyForest_MapEvents:
    db 0, 0 ; filler

	def_warp_events
	warp_event  0,  8, ROUTE_48S, 2
	warp_event  0,  9, ROUTE_48S, 3
	
	def_coord_events

	def_bg_events

	def_object_events
	object_event  6,  3, SPRITE_VIOLA, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 1, GraveyardViolaScript, -1