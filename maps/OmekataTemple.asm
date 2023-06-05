	object_const_def
	const OMEKATA_TSUBAKI
	const OMEKATA_GYM_GUIDE

OmekataTemple_MapScripts:
	def_scene_scripts

	def_callbacks

OmekataTsubakiBattleScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_TSUBAKI
	iftrue .FightDone
	writetext OmekataTsubakiSeenText
	waitbutton
	closetext
	winlosstext OmekataTsubakiSeenText, 0
	loadtrainer TSUBAKI, TSUBAKI1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_TSUBAKI
	opentext
	writetext OmekataTsubakiBeatenText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_MINERALBADGE
	readvar VAR_BADGES
	writetext OmekataTsubakiAfterText
	waitbutton
	closetext
	end

.FightDone:
	writetext OmekataTsubakiAfterText
	waitbutton
	closetext
	end
	
OmekataTsubakiSeenText:
	text "..."
	done
	
OmekataTsubakiBeatenText:
	text "..."
	done
	
OmekataTsubakiAfterText:
	text "..."
	done

OmekataTempleGymGuideScript:
	checkevent EVENT_OMEKATA_GYM_GUIDE_OUT_OF_THE_WAY
	iftrue .StandThere
	checkevent EVENT_BEAT_TSUBAKI
	iftrue .OutOfTheWay
	faceplayer
	opentext 
	writetext OmketataTempleGymGuideText
	waitbutton
	closetext
	end

.StandThere
	faceplayer
	opentext
	writetext OmekataTempleGymGuideWinText
	waitbutton
	closetext
	end

.OutOfTheWay
	faceplayer
	opentext
	writetext OmekataTempleGymGuideWinText
	waitbutton
	closetext
	applymovement OMEKATA_GYM_GUIDE, OmekataGymGuideOutOfTheWay
	setevent EVENT_OMEKATA_GYM_GUIDE_OUT_OF_THE_WAY
	end

OmketataTempleGymGuideText:
	text "Greetings Etalon"
	line "League Challenger."

	para "Lady Tsubaki is"
	line "currently battling"
	cont "her 6th opponnet of"
	cont "the day."

	para "Do visit Omekata"
	line "Temple until the"
	cont "challenger can no"
	cont "longer endure the"
	cont "heat."
	done

OmekataTempleGymGuideWinText:
	text "The bond you share"
	line "with your #MON"
	cont "mirror's Lady Tsu-"
	cont "baki's."

	para "It is that which"
	line "brought you vict-"
	cont "ory on this day."
	done

OmekataGymGuideOutOfTheWay:
	step DOWN
	step RIGHT
	step RIGHT
	step_end

OmekataTemple_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events

	def_object_events

	object_event  4,  4, SPRITE_TSUBAKI, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 1, OmekataTsubakiBattleScript, -1
	object_event  9,  7, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, OmekataTempleGymGuideScript, -1
