	object_const_def
	const BD_JAMZ1
	const BD_JAMZ2
	const BD_JAMZ3
	const BD_JAMZF1
	const BD_JAMZF2
	const BD_LORELEI
	const BD_WEEDLE

BeedrillDungeon_MapScripts:
	def_scene_scripts 

	def_callbacks

BDJamz1Script:
	trainer JAMZM, JAMZM1, EVENT_BEAT_JAMZM1, JamzTestText, JamzTestText, 0, .script

.script
	clearevent EVENT_LORELEI_FOREST_DUNGEON
	clearevent EVENT_CASTOR_WOODS_DANGER
	clearevent EVENT_FOUGHT_LUDICOLO
	opentext
	writetext JamzTestText
	waitbutton
	closetext
	appear BD_LORELEI
	applymovement BD_LORELEI, LoreleiWalkToMorgan
	special FadeBlackQuickly
	clearflag ENGINE_MARCHESI_IN_CASTOR_WOODS
	special ReloadSpritesNoPalettes 
	disappear BD_JAMZ1
	warp MORGAN_HOUSE_1F, 4, 4
	pause 15
	special FadeInQuickly
	end

LoreleiWalkToMorgan:
	step LEFT
	step LEFT
	step LEFT
	step_end

BDJamz2Script:
	trainer JAMZM, JAMZM2, EVENT_BEAT_JAMZM2, JamzTestText, JamzTestText, 0, .script

.script
	opentext
	writetext JamzTestText
	waitbutton
	closetext
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes 
	disappear BD_JAMZ2
	special FadeInQuickly
	end

BDJamz3Script:
	trainer JAMZM, JAMZM3, EVENT_BEAT_JAMZM3, JamzTestText, JamzTestText, 0, .script

.script
	opentext
	writetext JamzTestText
	waitbutton
	closetext
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes 
	disappear BD_JAMZ3
	special FadeInQuickly
	end

BDJamzF1Script:
	trainer JAMZF, JAMZF1, EVENT_BEAT_JAMZF1, JamzTestText, JamzTestText, 0, .script

.script
	opentext
	writetext JamzTestText
	waitbutton
	closetext
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	disappear BD_JAMZF1
	special FadeInQuickly
	end

BDJamzF2Script:
	trainer JAMZF, JAMZF2, EVENT_BEAT_JAMZF2, JamzTestText, JamzTestText, 0, .script

.script
	opentext
	writetext JamzTestText
	waitbutton
	closetext
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	disappear BD_JAMZF2
	special FadeInQuickly
	end

JamzTestText:
	text "The Gym leader"
	line "lost to some pro"
	done

BDShinyWeedleScript:
	cry WEEDLE
	loadvar VAR_BATTLETYPE, BATTLETYPE_SHINY
	loadwildmon WEEDLE, 10
	startbattle
	reloadmapafterbattle
	disappear BD_WEEDLE
	setevent EVENT_FOUGHT_BD_WEEDLE
	end

BeedrillDungeonVineTrigger:
	applymovement PLAYER, BeedrillDungeonForceLookUp
	end

BeedrillDungeonVineTriggerDone:
	applymovement PLAYER, BeedrillDungeonRemovedFF
	end

BeedrillDungeonForceLookUp:
	turn_head UP
	fix_facing
	step_end 

BeedrillDungeonRemovedFF:
	remove_fixed_facing
	step_end

BeedrillDungeon_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  4, FOREST_DUNGEON, 3          ;3

	def_coord_events

	coord_event 17, 23, -1, BeedrillDungeonVineTrigger
	coord_event 17,  5, -1, BeedrillDungeonVineTrigger
	coord_event 17,  4, -1, BeedrillDungeonVineTriggerDone
	coord_event 17, 24, -1, BeedrillDungeonVineTriggerDone

	def_bg_events

	def_object_events
	object_event 22,  4, SPRITE_JAMZ_M, SPRITEMOVEDATA_SPINRANDOM_FAST, 1, 0, -1, -1, PAL_OW_RED, OBJECTTYPE_TRAINER, 1, BDJamz1Script, EVENT_BEAT_JAMZM1
	object_event 28, 12, SPRITE_JAMZ_M, SPRITEMOVEDATA_SPINRANDOM_FAST, 3, 0, -1, -1, PAL_OW_RED, OBJECTTYPE_TRAINER, 3, BDJamz2Script, EVENT_BEAT_JAMZM2
	object_event 18,  4, SPRITE_JAMZ_M, SPRITEMOVEDATA_SPINRANDOM_FAST, 3, 0, -1, -1, PAL_OW_RED, OBJECTTYPE_TRAINER, 3, BDJamz3Script, EVENT_BEAT_JAMZM3
	object_event 26, 24, SPRITE_JAMZ_F, SPRITEMOVEDATA_SPINRANDOM_FAST, 3, 0, -1, -1, PAL_OW_RED, OBJECTTYPE_TRAINER, 3, BDJamzF1Script, EVENT_BEAT_JAMZF1
	object_event  6, 14, SPRITE_JAMZ_F, SPRITEMOVEDATA_SPINRANDOM_FAST, 3, 0, -1, -1, PAL_OW_RED, OBJECTTYPE_TRAINER, 3, BDJamzF2Script, EVENT_BEAT_JAMZF2
	object_event 27,  4, SPRITE_LORELEI, SPRITEMOVEDATA_STANDING_DOWN, 3, 0, -1, -1, PAL_OW_RED, OBJECTTYPE_SCRIPT, 3, -1, EVENT_LORELEI_FOREST_DUNGEON
	object_event  8, 14, SPRITE_WEEDLE, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, BDShinyWeedleScript, EVENT_FOUGHT_BD_WEEDLE
