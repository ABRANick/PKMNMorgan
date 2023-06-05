	object_const_def
	const DIAMANT_CAVES_UNOWN1
	const DIAMANT_CAVES_HIKER1

Route48N_Cave_MapScripts:
	def_scene_scripts
	scene_script .DummyScene0 ; SCENE_NEED_WINTER_COAT
	scene_script .DummyScene1 ; SCENE_ROUTE48N_CAVE_NOTHING


	def_callbacks

.DummyScene0
	end
.DummyScene1
	end

DiamantCavesUnown1Script:
	cry UNOWN
	showemote EMOTE_SHOCK, PLAYER, 15
	opentext
	verbosegiveitem UNOWN_TOKEN
	waitbutton
	closetext
	cry UNOWN
	playsound SFX_WARP_TO 
	disappear DIAMANT_CAVES_UNOWN1
	opentext
	writetext DiamantCavesUnownText
	waitbutton
	closetext
	setevent EVENT_BEAT_DIAMANT_CAVES_UNOWN1
	end

DiamantCavesUnownText:
	text "It vanished..."
	done


TrainerHikerPhillip:
	trainer HIKER, PHILLIP, EVENT_BEAT_HIKER_PHILLIP, HikerPhillipSeenText, HikerPhillipBeatenText, 0, .Script

.Script:
	checkevent EVENT_BEAT_DIAMANT_CAVES_UNOWN1
	iftrue .UnownChat 
	opentext
	writetext HikerPhillipAfterBattleText
	waitbutton
	closetext
	end

.UnownChat 
	opentext
	writetext HikerPhillipAfterBattleText2
	waitbutton
	closetext
	end

HikerPhillipSeenText:

HikerPhillipBeatenText:

HikerPhillipAfterBattleText:

HikerPhillipAfterBattleText2:

NoWinterCoatScript:
	opentext
	writetext NoWinterCoatText
	waitbutton
	closetext
	applymovement PLAYER, MorganStepBackMovementCave
	end

MorganStepBackMovementCave:
	step DOWN
	step DOWN
	step_end

NoWinterCoatText:
	text "Theres a cold"
	line "chill coming from"
	cont "the cave! I need"
	cont "something warm to"
	cont "go in."
	done

Route48N_Cave_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 19, 27, ROUTE_48N, 2

	def_coord_events
	coord_event 22, 20, SCENE_NEED_WINTER_COAT, NoWinterCoatScript
	coord_event 23, 20, SCENE_NEED_WINTER_COAT, NoWinterCoatScript

	def_bg_events

	def_object_events
	object_event 16,  4, SPRITE_UNOWN, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_OW_BLUE, OBJECTTYPE_SCRIPT, 0, DiamantCavesUnown1Script, EVENT_BEAT_DIAMANT_CAVES_UNOWN1