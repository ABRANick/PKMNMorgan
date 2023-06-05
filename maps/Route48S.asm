	object_const_def
	const ROUTE48S_MILOTIC

Route48S_MapScripts:
	def_scene_scripts

	def_callbacks

ItemballRoute48SPotion:
	itemball POTION

ItemballRoute48SPokeBall:
	itemball POKE_BALL, 5

ItemballRoute48SAntidote:
	itemball ANTIDOTE

ItemballRoute48SCalcium:
	itemball CALCIUM

ItemballRoute48STmMudslap:
	itemball TM_HEADBUTT

ItemballRoute48SBrightPowder:
	itemball BRIGHTPOWDER

NurseElliotScript:
	trainer NURSE, ELLIOT_5, EVENT_BEAT_NURSE_ELLIOT, NurseElliotSeenText, NurseElliotBeatenText, 0, .Script

.Script
	endifjustbattled
	opentext
	writetext NurseElliotAfterText
	waitbutton
	closetext
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	special StubbedTrainerRankings_Healings
	playmusic MUSIC_HEAL
	special HealParty
	pause 60
	special FadeInQuickly
	special RestartMapMusic
	opentext
	writetext NurseElliotAfterContText
	waitbutton
	closetext
	end

NurseElliotSeenText:
	text "The #MON center"
	line "sent me here to"
	cont "help trainers"
	cont "travelling the"
	cont "mountains, but"
	cont "seeing all these"
	cont "trainers here"
	cont "itching for a"
	cont "battle."
	done


NurseElliotBeatenText:
	text "I'm not very"
	line "good. But"
	cont "it was fun!"
	done 

NurseElliotAfterText:
	text "Thanks for the"
	line "battle! Your"
	cont "#MON looks"
	cont "tired, let me"
	cont "help"
	done

NurseElliotAfterContText:
	text "My colleagues"
	line "are all around"
	cont "Etalon."
	done


BugcatcherBernardSeenText:
	text "There are no bug"
	line "#MON on these"
	cont "mountains!"
	done

BugcatcherBernardBeatenText:
	text "Another"
	line "disappointment..."
	done

BugcatcherBernardAfterText:
	text "Groan... I'd head"
	line "back to the forest"
	cont "but the Beedrill"
	cont "inhabiting that"
	cont "area have been"
	cont "going crazy! If"
	cont "you're headed that"
	cont "way be careful!"
	done

LassGiselleScript:
	trainer LASS, GISELLE, EVENT_BEAT_LASS_GISELLE, LassGiselleSeenText, LassGiselleBeatenText, 0, .Script

.Script
	endifjustbattled
	opentext
	writetext LassGiselleAfterText
	waitbutton
	closetext
	end

LassGiselleSeenText:
	text "Ugh! The long grass"
	line "keeps iritating"
	cont "my legs."
	done

LassGiselleBeatenText:
	text "No fair! This is"
	line "too distracting."
	done

LassGiselleAfterText:
	text "I'd use my Bike"
	line "but this grass is"
	cont "too long  to ride"
	cont "through. Sigh..."
	cont "I shoulda worn"
	cont "jeans."
	done

CamperDutchScript:
	trainer CAMPER, DUTCH, EVENT_BEAT_CAMPER_DUTCH, CamperDutchSeenText, CamperDutchBeatenText, 0, .Script

.Script
	endifjustbattled
	opentext
	writetext CamperDutchAfterText
	waitbutton
	closetext
	end

CamperDutchSeenText:
	text "Youre from Erable?"
	line "What's it like?"
	cont "Is it cold up"
	cont "there?"
	cont "Am I appropriately"
	cont "dressed? What?"
	cont "Battle? Do we"
	cont "have to?"
	done

CamperDutchBeatenText:
	text "You didnt answer"
	line "my questions!"
	done

CamperDutchAfterText:
	text "If you're dressed"
	line "that lightly, I"
	cont "guess it shouldnt"
	cont "be that cold up"
	cont "there."
	done

HikerJonesScript:
	trainer HIKER, JONES, EVENT_BEAT_HIKER_JONES, HikerJonesSeenText, HikerJonesBeatenText, 0, .Script

.Script 
	endifjustbattled
	opentext
	writetext HikerJonesAfterText
	waitbutton
	closetext
	end

HikerJonesSeenText:
	text "I've been hiking"
	line "up these mountains"
	cont "all day. This"
	cont "place is perfect"
	cont "to take a break."
	done

HikerJonesBeatenText:
	text "Ok..."
	line "back to hiking."
	done

HikerJonesAfterText:
	text "I'm interested in"
	line "whats past those"
	cont "waterfalls. But my"
	cont "#MON can't Surf."
	cont "let alone climb"
	cont "waterfalls! I"
	cont "really need to"
	cont "diversify my team."
	done

FisherTonyScript:
	trainer FISHER, TONY2, EVENT_BEAT_FISHER_TONY2, FisherTonySeenText, FisherTonyBeatenText, 0, .Script

.Script
	endifjustbattled
	opentext
	writetext FisherTonyAfterText
	waitbutton
	closetext
	end

FisherTonySeenText:
	text "Oi lass! I saw ya"
	line "Lookin' over at"
	cont "dat der Milotic."
	cont "Ain't she a darn"
	cont "beaut?"
	done

FisherTonyBeatenText:
	text "I wasn't starin'"
	line "like dat!"
	done

FisherTonyAfterText:
	text "If yer lookin' ta"
	line "get one o' 'em"
	cont "Milotics a fishin'"
	cont "rod will do ya"
	cont "good. This river"
	cont "be full o' Feebas!"
	done

YoungsterTheoScript:
	trainer YOUNGSTER, THEO2, EVENT_BEAT_YOUNGSTER_THEO2, YoungsterTheoSeenText, YoungsterTheoBeatenText, 0, .Script

.Script
	endifjustbattled
	opentext
	writetext YoungsterTheoAfterText
	waitbutton
	closetext
	end

YoungsterTheoSeenText:
	text "Apparently a wild"
	line "#MON flew into"
	cont "Castor. I'm just" 
	cont "cuz I don't wanna"
	cont "deal with it."
	done

YoungsterTheoBeatenText:
	text "Maybe it flew"
	line "away now."
	done

YoungsterTheoAfterText:
	text "I'm sure Trey or"
	line "one of his gym"
	cont "trainers took care"
	cont "of it. Castor is a"
	cont "very competitive"
	cont "city you know!"
	done

CooltrainerDarwinScript:
	trainer COOLTRAINERM, DARWIN, EVENT_BEAT_COOLTRAINERM_DARWIN, CooltrainerDarwinSeenText, CooltrainerDarwinBeatenText, 0, .Script

.Script
	endifjustbattled
	checkevent EVENT_COOLTRAINER_GIVE_THREE_GREAT_BALL
	iffalse .AfterWinBattle
	checkevent EVENT_COOLTRAINER_GIVE_THREE_GREAT_BALL
	iftrue .After
	end

.AfterWinBattle
	opentext
	writetext CooltrainerDarwinAfterText
	waitbutton
	getitemname STRING_BUFFER_3, GREAT_BALL
	writetext PlayerReceivesThreeGreatBallText
	waitbutton
	giveitem GREAT_BALL, 3
	setevent EVENT_COOLTRAINER_GIVE_THREE_GREAT_BALL
	writetext FindGrandmaText
	waitbutton
	closetext
	end

.After
	opentext
	writetext CooltrainerDarwinRegularText
	waitbutton
	closetext
	end

PlayerReceivesThreeGreatBallText:
	text "<PLAYER> received"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

FindGrandmaText:
	text "Huh? You're going"
	line "to the forest to"
	cont "look for your"
	cont "grandma! You're"
	cont "actually pretty"
	cont "good you defini-"
	cont "tely should look"
	cont "into becoming a"
	cont "full fledge"
	cont "#MON trainer"
	cont "once you find"
	cont "her. It would be"
	cont "a total waste"
	cont "of potential"
	cont " otherwise!"
	done 

CooltrainerDarwinRegularText:
	text "You should"
	line "really consider"
	cont "taking the #MON"
	cont "league challenge"
	cont "you have tons of"
	cont "potential!"
	done

CooltrainerDarwinSeenText:
	text "Another amateur"
	line "looking to face"
	cont "Trey eh?"
	cont "Hate to break it"
	cont "to ya girly but"
	cont "you don't have a"
	cont "chance. Looky"
	cont "here. This Neo-"
	cont "phyte badge proves"
	cont "I beat Trey, gym"
	cont "leader of Castor."
	cont "Won't be long"
	cont "before I become"
	cont "champion of the"
	cont "#MON league."
	cont "Here let me show"
	cont "you."
	done

CooltrainerDarwinBeatenText:
	text "Is this one"
	line "of those reality"
	cont "checks?"
	done

CooltrainerDarwinAfterText:
	text "Man I'm pathetic"
	line "beaten by a total"
	cont "casual! But hey!"
	cont "Sorry for being"
	cont "rude earlier here"
	cont "let me make it up"
	cont "to you"
	done

Route48NMiloticScript:
	opentext
	writetext Route48NMiloticText
	waitbutton
	closetext
	loadwildmon MILOTIC, 30
	startbattle
	reloadmapafterbattle
	disappear ROUTE48S_MILOTIC
	setevent EVENT_FOUGHT_MILOTIC
	end

Route48NMiloticText:
	text "Squeeq"
	done

Route48S_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9,  7, INTERLUDE_ROUTE48S, 1
	warp_event 55, 46, SPOOKY_FOREST, 1
	warp_event 55, 47, SPOOKY_FOREST, 2

	def_coord_events
	
	def_bg_events

	def_object_events
	object_event 25, 19, SPRITE_MILOTIC, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route48NMiloticScript, EVENT_FOUGHT_MILOTIC
	object_event 37, 48, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, LassGiselleScript, -1
	object_event 14, 40, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, CamperDutchScript, -1
	object_event  9, 54, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, CooltrainerDarwinScript, -1
	object_event 44, 35, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, YoungsterTheoScript, -1
	object_event 24, 48, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, FisherTonyScript, -1
	object_event 39,  2, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, HikerJonesScript, -1
	object_event 10, 16, SPRITE_NURSE_2, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 0, NurseElliotScript, -1
	object_event 47, 18, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ItemballRoute48SPotion, EVENT_ROUTE_48S_POTION
	object_event 18, 26, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ItemballRoute48SPokeBall, EVENT_ROUTE_48S_POKE_BALL
	object_event  7, 41, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ItemballRoute48SAntidote, EVENT_ROUTE_48S_ANTIDOTE
	object_event 33, 55, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ItemballRoute48SCalcium, EVENT_ROUTE_48S_CALCIUM
