	object_const_def
	const CASTOR_WOODS_BEEDRILL
	const CASTOR_WOODS_BUGCATCHER
	const CASTOR_WOODS_LUDICOLO
	const CASTOR_WOODS_BUGCATCHER2
	const CASTOR_WOODS_BUGCATCHER3
	const CASTOR_WOODS_POKEFAN_F
	const CASTOR_WOODS_LASS
	const CASTOR_WOODS_UNOWN

ForestDungeon_MapScripts:
	def_scene_scripts 
	scene_script .DummyScene0 ; SCENE_CASTOR_WOODS_ANGERED
	scene_script .DummyScene1 ; SCENE_CASTOR_WOODS_SAVED

	def_callbacks

.DummyScene0
	end
.DummyScene1
	end

BeedrillAttack1a:
	checkevent EVENT_CASTOR_WOODS_BEEDRILL_ATTACK_1
	iftrue NoBeedrillAttack
	cry BEEDRILL
	pause 10
	playsound SFX_GLASS_TING_2
	showemote EMOTE_SHOCK, PLAYER, 20
	moveobject CASTOR_WOODS_BEEDRILL, 23, 8
	appear CASTOR_WOODS_BEEDRILL
	applymovement CASTOR_WOODS_BEEDRILL, BeedrillAttacksMorgan
	cry BEEDRILL
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	loadwildmon BEEDRILL, 10
	startbattle
	reloadmapafterbattle
	setevent EVENT_CASTOR_WOODS_BEEDRILL_ATTACK_1
	disappear CASTOR_WOODS_BEEDRILL
	end

BeedrillAttack1b:
	checkevent EVENT_CASTOR_WOODS_BEEDRILL_ATTACK_1
	iftrue NoBeedrillAttack
	cry BEEDRILL
	pause 10
	playsound SFX_GLASS_TING_2
	showemote EMOTE_SHOCK, PLAYER, 20
	moveobject CASTOR_WOODS_BEEDRILL, 23, 8
	appear CASTOR_WOODS_BEEDRILL
	applymovement CASTOR_WOODS_BEEDRILL, BeedrillAttacks1Morgan
	cry BEEDRILL
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	loadwildmon BEEDRILL, 10
	startbattle
	reloadmapafterbattle
	setevent EVENT_CASTOR_WOODS_BEEDRILL_ATTACK_1
	disappear CASTOR_WOODS_BEEDRILL
	end

BeedrillAttack2:
	checkevent EVENT_CASTOR_WOODS_BEEDRILL_ATTACK_2
	iftrue NoBeedrillAttack
	cry BEEDRILL
	pause 10
	playsound SFX_GLASS_TING_2
	showemote EMOTE_SHOCK, PLAYER, 20
	moveobject CASTOR_WOODS_BEEDRILL, 40, 11
	appear CASTOR_WOODS_BEEDRILL
	applymovement CASTOR_WOODS_BEEDRILL, BeedrillAttacks2Morgan
	cry BEEDRILL
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	loadwildmon BEEDRILL, 10
	startbattle
	reloadmapafterbattle
	setevent EVENT_CASTOR_WOODS_BEEDRILL_ATTACK_2
	disappear CASTOR_WOODS_BEEDRILL
	end

BeedrillAttack3:
	checkevent EVENT_CASTOR_WOODS_BEEDRILL_ATTACK_3
	iftrue NoBeedrillAttack
	cry BEEDRILL
	pause 10
	playsound SFX_GLASS_TING_2
	showemote EMOTE_SHOCK, PLAYER, 20
	moveobject CASTOR_WOODS_BEEDRILL, 47, 26
	appear CASTOR_WOODS_BEEDRILL
	applymovement CASTOR_WOODS_BEEDRILL, BeedrillAttacks2Morgan
	cry BEEDRILL
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	loadwildmon BEEDRILL, 10
	startbattle
	reloadmapafterbattle
	setevent EVENT_CASTOR_WOODS_BEEDRILL_ATTACK_3
	disappear CASTOR_WOODS_BEEDRILL
	end 

BeedrillAttack4a:
	checkevent EVENT_CASTOR_WOODS_BEEDRILL_ATTACK_4
	iftrue NoBeedrillAttack
	cry BEEDRILL
	pause 10
	playsound SFX_GLASS_TING_2
	showemote EMOTE_SHOCK, PLAYER, 20
	moveobject CASTOR_WOODS_BEEDRILL, 25, 23
	appear CASTOR_WOODS_BEEDRILL
	applymovement CASTOR_WOODS_BEEDRILL, BeedrillAttacks3Morgan
	cry BEEDRILL
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	loadwildmon BEEDRILL, 10
	startbattle
	reloadmapafterbattle
	setevent EVENT_CASTOR_WOODS_BEEDRILL_ATTACK_4
	disappear CASTOR_WOODS_BEEDRILL
	end 

BeedrillAttack4b:
	checkevent EVENT_CASTOR_WOODS_BEEDRILL_ATTACK_4
	iftrue NoBeedrillAttack
	cry BEEDRILL
	pause 10
	playsound SFX_GLASS_TING_2
	showemote EMOTE_SHOCK, PLAYER, 20
	moveobject CASTOR_WOODS_BEEDRILL, 25, 22
	appear CASTOR_WOODS_BEEDRILL
	applymovement CASTOR_WOODS_BEEDRILL, BeedrillAttacks4Morgan
	cry BEEDRILL
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	loadwildmon BEEDRILL, 10
	startbattle
	reloadmapafterbattle
	setevent EVENT_CASTOR_WOODS_BEEDRILL_ATTACK_4
	disappear CASTOR_WOODS_BEEDRILL
	end 

BeedrillAttack5a:
	checkevent EVENT_CASTOR_WOODS_BEEDRILL_ATTACK_5
	iftrue NoBeedrillAttack
	cry BEEDRILL
	pause 10
	playsound SFX_GLASS_TING_2
	showemote EMOTE_SHOCK, PLAYER, 20
	moveobject CASTOR_WOODS_BEEDRILL, 32, 38
	appear CASTOR_WOODS_BEEDRILL
	applymovement CASTOR_WOODS_BEEDRILL, BeedrillAttacks5Morgan
	cry BEEDRILL
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	loadwildmon BEEDRILL, 10
	startbattle
	reloadmapafterbattle
	setevent EVENT_CASTOR_WOODS_BEEDRILL_ATTACK_5
	disappear CASTOR_WOODS_BEEDRILL
	end 

BeedrillAttack5b:
	checkevent EVENT_CASTOR_WOODS_BEEDRILL_ATTACK_5
	iftrue NoBeedrillAttack
	cry BEEDRILL
	pause 10
	playsound SFX_GLASS_TING_2
	showemote EMOTE_SHOCK, PLAYER, 20
	moveobject CASTOR_WOODS_BEEDRILL, 32, 38
	appear CASTOR_WOODS_BEEDRILL
	applymovement CASTOR_WOODS_BEEDRILL, BeedrillAttacks6Morgan
	cry BEEDRILL
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	loadwildmon BEEDRILL, 10
	startbattle
	reloadmapafterbattle
	setevent EVENT_CASTOR_WOODS_BEEDRILL_ATTACK_5
	disappear CASTOR_WOODS_BEEDRILL
	end 

BeedrillAttack6:
	checkevent EVENT_CASTOR_WOODS_BEEDRILL_ATTACK_6
	iftrue NoBeedrillAttack
	cry BEEDRILL
	pause 10
	playsound SFX_GLASS_TING_2
	showemote EMOTE_SHOCK, PLAYER, 20
	moveobject CASTOR_WOODS_BEEDRILL, 32, 38
	appear CASTOR_WOODS_BEEDRILL
	applymovement CASTOR_WOODS_BEEDRILL, BeedrillAttacks6Morgan
	cry BEEDRILL
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	loadwildmon BEEDRILL, 10
	startbattle
	reloadmapafterbattle
	setevent EVENT_CASTOR_WOODS_BEEDRILL_ATTACK_6
	disappear CASTOR_WOODS_BEEDRILL
	end 

BeedrillAttacksMorgan:
	step UP
	step UP
	step_end

BeedrillAttacks1Morgan:
	step UP
	step UP
	step LEFT
	step_end

BeedrillAttacks2Morgan:
	step DOWN
	step DOWN
	step_end

BeedrillAttacks3Morgan:
	step RIGHT
	step_end

BeedrillAttacks4Morgan:
	step RIGHT
	step RIGHT
	step_end

BeedrillAttacks5Morgan:
	step LEFT
	step LEFT 
	step_end

BeedrillAttacks6Morgan:
	step LEFT
	step LEFT 
	step DOWN
	step_end


NoBeedrillAttack:
	end

BugCatcherHugoScript:
	trainer BUG_CATCHER, HUGO, EVENT_BEAT_BUG_CATCHER_HUGO, BugCatcherHugoSeenText, BugCatcherHugoBeatenText, 0, .Script

.Script
	endifjustbattled
	opentext
	writetext BugCatcherHugoAfterText
	waitbutton
	closetext
	end

BugCatcherHugoSeenText:
	text "1"
	done

BugCatcherHugoBeatenText:
	text "1"
	done

BugCatcherHugoAfterText:
	text "1"
	done

CastorWoodsLudicoloScript:
	cry LUDICOLO
	loadwildmon LUDICOLO, 35
	loadvar VAR_BATTLETYPE, BATTLETYPE_SHINY
	startbattle
	reloadmapafterbattle
	disappear CASTOR_WOODS_LUDICOLO
	setevent EVENT_FOUGHT_LUDICOLO
	end

BugCatcherWesScript:
	trainer BUG_CATCHER, WES, EVENT_BEAT_BUG_CATCHER_WES, BugCatcherWesSeenText, BugCatcherWesBeatenText, 0, .Script

.Script
	endifjustbattled
	opentext
	writetext BugCatcherWesAfterText
	waitbutton
	closetext
	end

BugCatcherWesSeenText:
	text "1"
	done

BugCatcherWesBeatenText:
	text "1"
	done

BugCatcherWesAfterText:
	text "1"
	done

BugCatcherGaelScript:
	trainer BUG_CATCHER, GAEL, EVENT_BEAT_BUG_CATCHER_GAEL, BugCatcherGaelSeenText, BugCatcherGaelBeatenText, 0, .Script

.Script
	endifjustbattled
	opentext
	writetext BugCatcherGaelAfterText
	waitbutton
	closetext
	end

BugCatcherGaelSeenText:
	text "1"
	done

BugCatcherGaelBeatenText:
	text "1"
	done

BugCatcherGaelAfterText:
	text "1"
	done

PokeFanRosalieScript:
	trainer POKEFANF, ROSALIE, EVENT_BEAT_POKEFANF_ROSALIE, PokefanRosalieSeenText, PokefanRosalieBeatenText, 0, .Script

.Script
	opentext
	writetext PokefanRosalieSeenText
	waitbutton
    checkitem SILVER_LEAF
	iffalse .NoSilverLeaf
 	writetext PokefanRosalieAfterText
 	yesorno
 	iffalse .TutorRefused
 	setval MEGA_DRAIN
  	writetext PokefanRosalieAfterText
 	special MoveTutor
 	ifequal FALSE, .TeachMove

.NoSilverLeaf
	writetext MegaDrainMoveTutorNoSilverLeaf
	waitbutton
	closetext
	end 

.TutorRefused
	writetext PokefanRosalieSeenText
	waitbutton
	closetext
	end 

.TeachMove
	writetext MegaDrainMoveTutorPayment
 	takeitem SILVER_LEAF
 	waitbutton
 	writetext RosalieMegaDrainTutorTaught
 	waitbutton
 	closetext
 	end

	
PokefanRosalieSeenText:
	text "Have you found any"
	line "Silver Leaves?"
	done 

PokefanRosalieBeatenText:

PokefanRosalieAfterText:
	text "Say, have you"
	line "found any Silver"
	cont "Leaves?"

	para "I"



MegaDrainMoveTutorPayment:
	text "<PLAYER> gave the"
	line "tutor a Silver"
	cont "Leaf."
	done

MegaDrainMoveTutorNoSilverLeaf:
	text "You really haven't"
	line "found any?"

	para "Try checking near"
	line "the trunks of big"
	cont "trees."

	para "Wild Grass-Type"
	line "#mon often"
	cont "hold them too!"
	done 

RosalieMegaDrainTutorTaught:
	text "Thanks hun!"

	para "I"
	line 


LassMarieScript:
	trainer LASS, MARIE, EVEN_BEAT_LASS_MARIE, LassMarieSeenText, LassMarieBeatenText, 0, .Script

.Script
	endifjustbattled
	opentext
	writetext LassMarieAfterText
	waitbutton
	closetext
	end


LassMarieSeenText:
	text "I met all of my"
	line "#mon here."
	done 
	
LassMarieBeatenText:
	text "So much for home"
	line "field advantage."
	done

LassMarieAfterText:
	text "#mon seem to be"
	line "a lot happier when"

	para "you train them in"
	line "the same place you"
	cont "caught them."
	done

CastorWoodsSuperPotionScript:
	itemball SUPER_POTION, 2

CastorWoodsFruitTree1Script:
	fruittree FRUITTREE_CASTOR_WOODS_1

CastorWoodsFruitTree2Script:
	fruittree FRUITTREE_CASTOR_WOODS_2

CastorWoodsFruitTree3Script:
	fruittree FRUITTREE_CASTOR_WOODS_3

CastorWoodsFruitTree4Script:
	fruittree FRUITTREE_CASTOR_WOODS_4

CastorWoodsFruitTree45Script:
	fruittree FRUITTREE_CASTOR_WOODS_5

CastorWoodsHiddenSunStone:
	hiddenitem SUN_STONE, EVENT_CASTOR_WOODS_HIDDEN_SUN_STONE

CastorWoodsHiddenSilverLeaf1:
	hiddenitem SILVER_LEAF, EVENT_CASTOR_WOODS_HIDDEN_SILVER_LEAF_1

CastorWoodsHiddenSilverLeaf2:
	hiddenitem SILVER_LEAF, EVENT_CASTOR_WOODS_HIDDEN_SILVER_LEAF_2

CastorWoodsHiddenSilverLeaf3:
	hiddenitem SILVER_LEAF, EVENT_CASTOR_WOODS_HIDDEN_SILVER_LEAF_3

CastorWoodsHiddenSilverLeaf4:
	hiddenitem SILVER_LEAF, EVENT_CASTOR_WOODS_HIDDEN_SILVER_LEAF_4

CastorWoodsHiddenSilverLeaf5:
	hiddenitem SILVER_LEAF, EVENT_CASTOR_WOODS_HIDDEN_SILVER_LEAF_5

CastorWoodsHiddenSilverLeaf6:
	hiddenitem SILVER_LEAF, EVENT_CASTOR_WOODS_HIDDEN_SILVER_LEAF_6

CastorWoodsHiddenGoldLeaf:
	hiddenitem GOLD_LEAF, EVENT_CASTOR_WOODS_HIDDEN_GOLD_LEAF

CastorWoodsHiddenGoldLeaf2:
	hiddenitem GOLD_LEAF, EVENT_CASTOR_WOODS_HIDDEN_GOLD_LEAF_2

CastorWoodsHiddenGoldLeaf3:
	hiddenitem GOLD_LEAF, EVENT_CASTOR_WOODS_HIDDEN_GOLD_LEAF_3

CastorWoodsHiddenGoldLeaf4:
	hiddenitem GOLD_LEAF, EVENT_CASTOR_WOODS_HIDDEN_GOLD_LEAF_4

CastorWoodsHiddenTinyMushroom1:
	hiddenitem TINYMUSHROOM, EVENT_CASTOR_WOODS_HIDDEN_TINY_MUSHROOM_1

CastorWoodsHiddenTinyMushroom2:
	hiddenitem TINYMUSHROOM, EVENT_CASTOR_WOODS_HIDDEN_TINY_MUSHROOM_2

CastorWoodsHiddenBigMushroom:
	hiddenitem BIG_MUSHROOM, EVENT_CASTOR_WOODS_HIDDEN_BIG_MUSHROOM

CastorWoodsHiddenMiracleSeed:
	hiddenitem MIRACLE_SEED, EVENT_CASTOR_WOODS_HIDDEN_MIRACLE_SEED

ForestDungeon_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 22,  3, ROUTE_49, 1
	warp_event 23,  3, ROUTE_49, 2
	warp_event 34, 49, BEEDRILL_DUNGEON, 1
	warp_event 35, 49, BEEDRILL_DUNGEON, 1
	warp_event  4, 54, ROUTE_50, 1
	warp_event  4, 55, ROUTE_50, 2


	def_coord_events
	coord_event 23,  5, SCENE_CASTOR_WOODS_ANGERED, BeedrillAttack1a
	coord_event 22,  5, SCENE_CASTOR_WOODS_ANGERED, BeedrillAttack1b
	coord_event 40, 14, SCENE_CASTOR_WOODS_ANGERED, BeedrillAttack2
	coord_event 47, 29, SCENE_CASTOR_WOODS_ANGERED, BeedrillAttack3
	coord_event 19, 27, SCENE_CASTOR_WOODS_ANGERED, BeedrillAttack4a
	coord_event 19, 26, SCENE_CASTOR_WOODS_ANGERED, BeedrillAttack4b
	coord_event 29, 38, SCENE_CASTOR_WOODS_ANGERED, BeedrillAttack5a
	coord_event 29, 39, SCENE_CASTOR_WOODS_ANGERED, BeedrillAttack5b
	coord_event 35, 50, SCENE_CASTOR_WOODS_ANGERED, BeedrillAttack6

	def_bg_events
	bg_event 40, 10, BGEVENT_ITEM, CastorWoodsHiddenSunStone
	bg_event 24, 10, BGEVENT_ITEM, CastorWoodsHiddenSilverLeaf1
	bg_event 24, 24, BGEVENT_ITEM, CastorWoodsHiddenSilverLeaf2
	bg_event 10, 50, BGEVENT_ITEM, CastorWoodsHiddenSilverLeaf3
	bg_event  8, 26, BGEVENT_ITEM, CastorWoodsHiddenSilverLeaf4
	bg_event 38, 22, BGEVENT_ITEM, CastorWoodsHiddenSilverLeaf5
	bg_event 10, 36, BGEVENT_ITEM, CastorWoodsHiddenSilverLeaf6
	bg_event  6, 41, BGEVENT_ITEM, CastorWoodsHiddenGoldLeaf
	bg_event 34, 54, BGEVENT_ITEM, CastorWoodsHiddenGoldLeaf2
	bg_event 34, 38, BGEVENT_ITEM, CastorWoodsHiddenGoldLeaf3
	bg_event 48, 26, BGEVENT_ITEM, CastorWoodsHiddenGoldLeaf4
	bg_event  5, 15, BGEVENT_ITEM, CastorWoodsHiddenTinyMushroom1
	bg_event 27, 46, BGEVENT_ITEM, CastorWoodsHiddenTinyMushroom2
	bg_event 51, 22, BGEVENT_ITEM, CastorWoodsHiddenBigMushroom
	bg_event 24, 31, BGEVENT_ITEM, CastorWoodsHiddenMiracleSeed

	def_object_events
	object_event 55, 0, SPRITE_BEEDRILL, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, -1, EVENT_CLEARED_CASTOR_WOODS
	object_event 35, 35, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 0, BugCatcherHugoScript, EVENT_CASTOR_WOODS_DANGER
	object_event 46, 37, SPRITE_LUDICOLO, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CastorWoodsLudicoloScript, EVENT_FOUGHT_LUDICOLO
	object_event 43, 53, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 0, BugCatcherWesScript, EVENT_CASTOR_WOODS_DANGER
	object_event 13, 20, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 0, BugCatcherGaelScript, EVENT_CASTOR_WOODS_DANGER
	object_event 14, 50, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_TRAINER, 0, PokeFanRosalieScript, EVENT_CASTOR_WOODS_DANGER
	object_event 26, 21, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 0, LassMarieScript, EVENT_CASTOR_WOODS_DANGER
	object_event 19, 31, SPRITE_UNOWN, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, -1, EVENT_CASTOR_WOODS_DANGER
	object_event  5,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_OW_RED, OBJECTTYPE_ITEMBALL, 0, CastorWoodsSuperPotionScript, EVENT_CASTOR_WOODS_SUPER_POTION
	object_event 34, 18, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_OW_GREEN, OBJECTTYPE_SCRIPT, 0, CastorWoodsFruitTree1Script, -1
	object_event 16, 36, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_OW_GREEN, OBJECTTYPE_SCRIPT, 0, CastorWoodsFruitTree2Script, -1
	object_event 44, 13, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_OW_RED, OBJECTTYPE_SCRIPT, 0, CastorWoodsFruitTree3Script, -1
	object_event 13, 31, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_OW_GREEN, OBJECTTYPE_SCRIPT, 0, CastorWoodsFruitTree4Script, -1
	object_event 47, 36, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CastorWoodsFruitTree45Script, -1
