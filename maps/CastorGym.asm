	object_const_def
	const CASTOR_GYM_FERN
	const CASTOR_GYM_AVRIL
	const CASTOR_GYM_KAI
	const CASTOR_GYM_LEADER_TREY
	const CASTOR_GYM_GUIDE
	const CASTOR_GYM_VAPOREON
	
CastorGym_MapScripts:
	def_scene_scripts 
	scene_script .DummyScene0 ; SCENE_GYMS_CLOSED
	scene_script .DummyScene1 ; SCENE_GYMS_FREE

	def_callbacks
	
.DummyScene0:
	end

.DummyScene1:
	end



SceneGymsClosedScript:
	checkevent EVENT_SPOKE_TO_GUARD
	iffalse .GymsClosedHaveToLeave
	moveobject CASTOR_GYM_AVRIL, 7, 28
	appear CASTOR_GYM_AVRIL
	applymovement CASTOR_GYM_AVRIL, CastorGymStepDownOne
	opentext
	writetext CastorGymCoolTrainerFernSeenText
	waitbutton
	closetext
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	pause 15
	special FadeInQuickly	
	setscene SCENE_GYMS_FREE
	end

.GymsClosedHaveToLeave
	moveobject CASTOR_GYM_AVRIL, 7, 28
	appear CASTOR_GYM_AVRIL
	applymovement CASTOR_GYM_AVRIL, CastorGymStepDownOne
	opentext
	writetext GymsClosedAvrilText
	waitbutton
	closetext
	applymovement PLAYER, CastorGymStepDownOne
	warp CASTOR, 45, 10
	end
	

CastorGymStepDownOne:
	step DOWN 
	step_end

GymsClosedAvrilText:
	text "Hey!"
	line "Sorry, but our Gym"
	cont "is closed for the"
	cont "rest of the day."
	done

CastorGymCoolTrainerFernScript:
	trainer COOLTRAINM, FERN, EVENT_BEAT_GYM_TRAINER_FERN, CastorGymCoolTrainerFernSeenText, CastorGymCoolTrainerFernBeatenText, 0, .Script

.Script 
	opentext
	writetext CastorGymCoolTrainerFernAfterText
	waitbutton 
	closetext
	end

CastorGymCoolTrainerFernSeenText:
	text "Hello... Wha?"
	line "Weather? No I just"
	cont "didn't get much"
	cont "sleep last night."
	cont "Oh I love grass"
	cont "type pokemon"
	cont "they're just so"
	cont "pleasant..."
	cont "peaceful..."
	cont "... Wha? Sorry"
	cont "let's get this"
	cont "over with before"
	cont "I doze off"
	cont "again."
	done

CastorGymCoolTrainerFernBeatenText:
	text "Huh? It's over?"
	done 

CastorGymCoolTrainerFernAfterText:
	text "Zzzzzz..."
	done 


CastorGymCoolTrainerAvrilScript:
	trainer COOLTRAINF, AVRIL, EVENT_BEAT_GYM_TRAINER_AVRIL, CastorGymCoolTrainerAvrilSeenText, CastorGymCoolTrainerAvrilBeatenText, 0, .Script

.Script
	opentext
	writetext CastorGymCoolTrainerAvrilAfterText
	waitbutton
	closetext
	end

CastorGymCoolTrainerAvrilSeenText:
	text "Heya, you're a new"
	line "face. What got you"
	cont "into #MON?"
	cont "The world famous"
	cont "Misty is the"
	cont "source of my"
	cont "inspiration!"
	done

CastorGymCoolTrainerAvrilBeatenText:
	text "You sure you've"
	line "never battled"
	cont "before?"
	done

CastorGymCoolTrainerAvrilAfterText:
	text "I hope to be"
	line "able to travel"
	cont "all the way to"
	cont " Kanto one day."
	done

CastorGymCoolTrainerKaiScript:
	trainer COOLTRAINERM, KAI, EVENT_BEAT_GYM_TRAINER_KAI, CastorGymCoolTrainerKaiSeenText, CastorGymCoolTrainerKaiBeatenText, 0, .Script

.Script
	opentext
	writetext CastorGymCoolTrainerKaiAfterText
	waitbutton
	closetext
	end

CastorGymCoolTrainerKaiSeenText:
	text "My favorite show"
	line "is airing in 20"
	cont "minutes and this"
	cont "is an episode I"
	cont "cant miss. Prepare"
	cont "to be incinerated"
	cont "by my fire type"
	cont "#MON"
	done

CastorGymCoolTrainerKaiBeatenText:
	text "Damn it!"
	line "Beginner's luck!"
	done

CastorGymCoolTrainerKaiAfterText:
	text "Hurry up and"
	line "lose to Trey"
	cont "so I can go home."
	done

CastorGymLeaderTreyScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_TREY
	iftrue .FightDone
	playsound SFX_GLASS_TING_2
	showemote EMOTE_SHOCK, CASTOR_GYM_LEADER_TREY, 20
	writetext TreyIntroText
	waitbutton
	closetext
	playsound SFX_SQUEAK
	showemote EMOTE_SAD, PLAYER, 20
	opentext
	writetext TreyIntro2Text
	waitbutton
	closetext
	turnobject CASTOR_GYM_LEADER_TREY, UP
	opentext
	writetext TreyDontHaveAnyWeakPokemonText
	waitbutton
	closetext
	showemote EMOTE_SHOCK, CASTOR_GYM_LEADER_TREY, 20
	turnobject CASTOR_GYM_LEADER_TREY, DOWN
	opentext
	writetext TreyDontOneSecText
	waitbutton
	closetext
	applymovement CASTOR_GYM_LEADER_TREY, TreyWalkAwayFromMorgan
	playsound SFX_POKEBALLS_PLACED_ON_TABLE
	waitsfx
	playsound SFX_POKEBALLS_PLACED_ON_TABLE
	waitsfx
	playsound SFX_POKEBALLS_PLACED_ON_TABLE
	waitsfx
	playsound SFX_LICK
	showemote EMOTE_QUESTION, PLAYER, 20
	applymovement CASTOR_GYM_LEADER_TREY, TreyWalkBackToMorgan
	opentext
	writetext TreyBeforeTheBattleText
	waitbutton
	closetext
	winlosstext TreyWinLossText, 0
	loadtrainer TREY, TREY1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_TREY
	opentext
	writetext ReceivedNeophyteBadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_ZEPHYRBADGE
	readvar VAR_BADGES
	setmapscene ROUTE_49, SCENE_ROUTE_49_BUG_CATCHER
.FightDone:
	playsound SFX_LICK
	showemote EMOTE_QUESTION, CASTOR_GYM_VAPOREON, 20
	cry VAPOREON
	turnobject CASTOR_GYM_LEADER_TREY, RIGHT
	playsound SFX_FORESIGHT
	showemote EMOTE_SWEAT, CASTOR_GYM_LEADER_TREY, 20
	writetext TreySorryVaporeonText
	waitbutton
	closetext
	turnobject CASTOR_GYM_LEADER_TREY, DOWN
	opentext
	writetext TreySwellGuyText
	waitbutton
	closetext
	playsound SFX_GLASS_TING_2
	showemote EMOTE_SHOCK, PLAYER, 20
	applymovement PLAYER, MorganBigStepBack
	waitsfx
	playsound SFX_FORESIGHT
	showemote EMOTE_SWEAT, CASTOR_GYM_LEADER_TREY, 20
	opentext
	writetext TreyItsNothingLikeThatText
	waitbutton
	closetext
	playsound SFX_RETURN
	showemote EMOTE_HAPPY, PLAYER, 20
	opentext
	writetext TreyItsADealText
	waitbutton
	closetext
	end


TreyWalkAwayFromMorgan:
	step RIGHT
	step RIGHT
	step UP
	step_end

TreyWalkBackToMorgan:
	step LEFT
	step LEFT
	step DOWN
	step_end

TreyIntroText:
	text "Hey Hey!"

	para "Honestly, I was"
	line "expecting you to"
	cont "lose to Kai."

	para "Ha-ha-ha!"
	done 

TreyIntro2Text:
	text "Hey, hey now!"

	para "Don't start cry-"
	line "ing!"
	
	para "I'm just surprised"
	line "is all."
	done

TreyDontHaveAnyWeakPokemonText:
	text "Erm. Thing is, I"
	line "don't really have"
	cont "any #MON to"
	cont "battle a rookie"
	cont "trainer with."
	done

TreyDontOneSecText:
	text "Oh wait!"

	para "Yeah!"

	para "Just wait on sec."
	done

TreyBeforeTheBattleText:
	text "These #MON"
	line "were recently bro-"
	cont "ught to my Gym."

	para "They're a little"
	line "young and not ba-"
	cont "ttle ready but"
	cont "it'll have to do."

	para "Alright!"
	line "Let's dance!"
	done

TreyWinLossText:
	text "Hey hey! You won!"
	line "Guess I'd better"
	cont "give you this."

ReceivedNeophyteBadgeText:
	text "<PLAYER> received"
	line "ZEPHYRBADGE."
	done

TreySorryVaporeonText:
	text "Sorry buddy, it"
	line "just wouldn't have"
	cont "been fair."
	done

TreySwellGuyText:
	text "Now there's a rea-"
	line "son I gave you"
	cont "that badge, and"
	cont "it's not just 'cuz"
	cont "I'm a swell guy."
	done

TreyItsNothingLikeThatText:
	text "Hey hey! It's not-"
	line "thing like that!"

	para "<PLAYER>!"

	para "The way you batt-"
	line "led showed me you"
	cont "have a lot of po-"
	cont "tential."

	para "Once you're done"
	line "whatever business"
	cont "you have at the"
	cont "forest..."
	
	para "I'd like you to"
	line "you to head south"
	cont "and challenge both"
	cont "Daria and Anna-"
	cont "bell."

	para "If you can beat"
	line "them, come back"
	cont "to this gym."

	para "I want to have"
	line "a rematch where I"
	cont "can battle for"
	cont "real!"
	done 

TreyItsADealText:
	text "It's a deal then!"

	para "Good luck <PLAYER>"
	line "!"
	done

MorganBigStepBack:
	fix_facing
	big_step DOWN
	remove_fixed_facing
	step_end



CastorGymGuideScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_TREY
	iftrue .CastorGymGuideWinScript
	writetext CastorGymGuideText
	waitbutton
	closetext
	end

.CastorGymGuideWinScript:
	writetext CastorGymGuideWinText
	waitbutton
	closetext
	end

CastorGymGuideText:
	text "Yo! Umm..."

	para "Champ?"
	line "In the mak..ing??"
	para "Ahem!"

	para "Right! Trey uses"
	line "all kinds of dif-"
	cont "ferent #MON."
	cont "He has no spec-"
	cont "ific weakness."

	para "A diverse tea-"

	para "Wait, do you even"
	line "know how gym bat-"
	cont "tles work?"
	done



CastorGymGuideWinText:
	text "As an Etalon Lea-"
	line "gue representative"
	cont "the less I know"
	cont "about the events"
	cont "that happened here"
	cont "the better."
	done

CastorGymVaporeonScript:
	cry VAPOREON
	checkevent EVENT_BEAT_TREY
	iftrue .VaporeonIsConfused
	opentext
	writetext VaporeonDeterminationText
	waitbutton
	closetext
	end

.VaporeonIsConfused
	playsound SFX_LICK
	showemote EMOTE_QUESTION, CASTOR_GYM_VAPOREON, 20
	opentext
	writetext VaporeonConfusedText
	waitbutton
	closetext
	end

VaporeonDeterminationText:
	text "Vaporeon radiates"
	line "with determination"
	done

VaporeonConfusedText:
	text "Vaporeon looks"
	line "dumbfounded."
	done


CastorGymStatue:
	checkflag ENGINE_ZEPHYRBADGE
	iftrue .Beaten
	gettrainername STRING_BUFFER_4, TREY, TREY1
	jumpstd GymStatue1Script
.Beaten:
	gettrainername STRING_BUFFER_4, TREY, TREY1
	jumpstd GymStatue2Script


CastorGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  6, 31, CASTOR, 4
	warp_event  7, 31, CASTOR, 5

	def_coord_events
	coord_event  7, 30, SCENE_GYMS_CLOSED, SceneGymsClosedScript
	

	def_bg_events
	bg_event 4, 29, BGEVENT_READ, CastorGymStatue
	bg_event 9, 29, BGEVENT_READ, CastorGymStatue

	def_object_events
	object_event  6, 25, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, CastorGymCoolTrainerFernScript, -1
	object_event  6, 15, SPRITE_LASS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, CastorGymCoolTrainerAvrilScript, -1
	object_event  6,  9, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, CastorGymCoolTrainerKaiScript, -1
	object_event  6,  3, SPRITE_TREY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 1, CastorGymLeaderTreyScript, -1
	object_event  5, 30, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CastorGymGuideScript, -1
	object_event  7, 3, SPRITE_VAPOREON, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CastorGymVaporeonScript, -1
