	object_const_def
	const ERABLETOWN_VULPIX
	const ERABLETOWN_VULPIX_2
	const ERABLETOWN_NINETALES
	const ERABLETOWN_TEACHER
	const ERABLETOWN_LASS_TRAINER
	const ERABLETOWN_COOL_TRAINER
	const ERABLE_TOWN_HIKER
	const ERABLETOWN_BOULDER

ErableTown_MapScripts:
	def_scene_scripts 
	scene_script .DummyScene0 ; SCENE_RESCUE_GRANDMA 
	scene_script .DummyScene1 ; SCENE_ERABLE_TOWN_NOTHING

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .Flypoint

.DummyScene0:
 	end

.DummyScene1:
	end

.Flypoint:
	setflag ENGINE_FLYPOINT_ERABLE
	endcallback

ErableTeacherRegularScript:
	faceplayer
	opentext 
	writetext ErableTeacherRegularPokemonText
	waitbutton
	closetext
	showemote EMOTE_SAD, PLAYER, 15
	end

ErableTeacherRegularPokemonText:
	text "I've noticed more"
	line "Zigzagoon running"
	cont "around town at"
	cont "night lately."
	cont "Morgan have you"
	cont "been forgetting to"
	cont "cover your garbage"
	cont "bin? Please be"
	cont "more careful."
	cont "I don't want to"
	cont "tell your"
	cont "grandparents about"
	cont "this."
	done

ErableLassTrainerMessageScript:
	faceplayer
	opentext
	writetext ErableLassTrainerMessageText
	waitbutton
	closetext
	end

ErableLassTrainerMessageText:
	text "Glacier Mountain"
	line "lies just ahead"
	cont "of this ledge."
	cont "It's huuuuge!"
	cont "There are paths"
	cont "tunnels that lead"
	cont "all over the snowy"
	cont "part of Etalon."
	cont "Buuut there's no"
	cont "way to enter"
	cont "from Erable."
	done

LoreleiCaveBoulder:
	jumpstd StrengthBoulderScript

AlolanVuplixScript:
	cry VULPIX
	end

ErableCoolTrainerMessageScript:
	faceplayer
	checkevent EVENT_GRAMPS_GIVE_GROWLITHE
	iftrue .RonaldNotGiven
	checkevent EVENT_COOLTRAINER_GIVE_PINK_BOW
	iffalse .CoolTrainerGivePinkBow  
	opentext
	writetext ErableCoolTrainerTwoMessage3Text
	waitbutton
	closetext
	end

.RonaldNotGiven
	opentext
	writetext ErableCoolTrainerTwoMessageText
	waitbutton
	closetext
	end

.CoolTrainerGivePinkBow
	opentext
	writetext ErableCoolTrainerTwoMessage2Text
	waitbutton
	getitemname STRING_BUFFER_3, PINK_BOW
	writetext ReceivedSilkScarfText
	waitbutton
	giveitem PINK_BOW
	setevent EVENT_COOLTRAINER_GIVE_PINK_BOW
	closetext
	end

ErableCoolTrainerTwoMessageText:
	text "<PLAYER> taking"
    line "Ronald for a walk?"
    cont "Careful I remember"
    cont "last time he was"
    cont "dragging you"
    cont "around everywhere."
	cont "Ha ha!"
	done

ErableCoolTrainerTwoMessage2Text:
	text "<PLAYER> finally"
    line "got a #MON of"
    cont "your own eh?"
    cont "Wait.. don't tell"
    cont "me you're going out"
    cont "dressed like that!?"
    cont "you'll freeze to"
    cont "death! Here take"
    cont "this."
	done

ErableCoolTrainerTwoMessage3Text:
	text "Not only is the"
    line "silk scarf warm,"
    cont "Any #MON"
    cont "holding it will"
    cont "have the power of"
    cont "it's Normal type"
    cont "moves boosted."
    cont "The perfect item"
    cont "for Normal type"
    cont "or junior #MON!"
	done

ReceivedSilkScarfText:
	text "<PLAYER> received"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

ErableHikerMessageScript:
	faceplayer
	opentext
	writetext ErableHikerTextOne
	waitbutton
	closetext
	turnobject ERABLE_TOWN_HIKER, UP
	end

ErableHikerTextOne:
	text "I took an hour" 
	line "ride on the subway"
	cont "then hiked all the"
	cont "way up here."
	cont "My reward?"
	cont "Waiting outside"
	cont "in the snow until"
	cont "the shop is less"
	cont "full."
	cont "Good grief!"
	done

RescueGrandmaPartOneScript:
	showemote EMOTE_SHOCK, PLAYER, 15
	opentext 
	writetext RescueGrandmaPartOneText
	waitbutton
	closetext
	applymovement PLAYER, StepBackMorganMovement
	end

RescueGrandmaPartOneText:
	text "No time to wander"
	line "off! I need to"
	cont "find grandma!"
	done

StepBackMorganMovement:
	step LEFT
	step_end

ErableTownHiddenFullHeal:
	hiddenitem FULL_HEAL, EVENT_ERABLE_TOWN_HIDDEN_FULL_HEAL

ErableTownHiddenBerry:
	hiddenitem BERRY, EVENT_ERABLE_TOWN_HIDDEN_BERRY

ErableTown_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 21, 23, MORGAN_HOUSE_1F, 1
	warp_event  7, 35, INTERLUDE_ERABLE, 1
	warp_event  8, 35, INTERLUDE_ERABLE, 2
	warp_event 15, 25, ERABLE_GENERIC_HOUSE_ONE, 1
	warp_event 13, 31, ERABLE_GENERIC_HOUSE_TWO, 1

	def_coord_events
	; coord_event 29, 30, SCENE_RESCUE_GRANDMA, RescueGrandmaPartOneScript
	; coord_event 29, 31, SCENE_RESCUE_GRANDMA, RescueGrandmaPartOneScript

	def_bg_events
	bg_event 20, 32, BGEVENT_ITEM, ErableTownHiddenFullHeal
	bg_event 17, 24, BGEVENT_ITEM, ErableTownHiddenBerry
	
	def_object_events
	object_event 18, 30, SPRITE_AVULPIX, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_OW_SILVER, OBJECTTYPE_SCRIPT, 0, AlolanVuplixScript, -1
	object_event 24, 35, SPRITE_AVULPIX, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_OW_SILVER, OBJECTTYPE_SCRIPT, 0, -1, -1
	object_event 24, 36, SPRITE_ANINETALES, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_OW_SILVER, OBJECTTYPE_SCRIPT, 0, -1, -1
	object_event 15, 28, SPRITE_POKEFAN_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT,  1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ErableTeacherRegularScript, -1
	object_event 12, 21, SPRITE_LASS, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ErableLassTrainerMessageScript, -1
	object_event 19, 30, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ErableCoolTrainerMessageScript, -1
	object_event  6, 27, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ErableHikerMessageScript, -1
	object_event 11, 12, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LoreleiCaveBoulder, -1
