	object_const_def
	const ROUTE48N_RALTS
	const ROUTE48N_EKANS
	const ROUTE48N_ANINETALES
	const ROUTE48N_AVULPIX
	const ROUTE48N_GROWLITHE
	const ROUTE48N_YOUNGSTER_1
	const ROUTE48N_LASS
	const ROUTE48N_BOARDER
	const ROUTE48N_LASS_2
	const ROUTE48N_AVULPIX2
	const ROUTE48N_HIKER

Route48N_MapScripts:
	def_scene_scripts
	scene_script .DummyScene0 ; SCENE_ROUTE48N_RALTS_DANGER
	scene_script .DummyScene1 ; SCENE_HELP_RALTS
	scene_script .DummyScene2 ; SCENE_ROUTE48N_NOTHING
	scene_script .DummyScene3 ; SCENE_MORGAN_FIRST_FIGHT


	def_callbacks


.DummyScene0
	end
.DummyScene1
	end
.DummyScene2
	end
.DummyScene3
	end

;Saving Ralts Script by fighting ekans and saving the pokemon.

Route48NHelpRaltsWestScript:
	playmusic MUSIC_NONE
	cry RALTS
	showemote EMOTE_PANIC, ROUTE48N_RALTS, 15
	playsound SFX_TOXIC
	waitsfx
	cry EKANS
	showemote EMOTE_DEATH, ROUTE48N_EKANS, 15
	playsound SFX_GLASS_TING_2
	showemote EMOTE_SHOCK, PLAYER, 30
	applymovement PLAYER, Route48NPlayerMovementWest
	playsound SFX_GLASS_TING_2
	showemote EMOTE_SHOCK, ROUTE48N_RALTS, 15
	cry RALTS
	playsound SFX_JUMP_OVER_LEDGE
	applymovement ROUTE48N_RALTS, RaltsHopBehindMorgan
	pause 10
	applymovement ROUTE48N_EKANS, GiveChaseToRalts
	cry EKANS
	pause 10
	playsound SFX_SANDSTORM
	showemote EMOTE_PANIC, PLAYER, 20
	playsound SFX_TACKLE
	applymovement PLAYER, GetAwayFromEkans
	applymovement ROUTE48N_RALTS, GetAwayFromEkans
	waitsfx
	moveobject ROUTE48N_GROWLITHE, 14, 10
	appear ROUTE48N_GROWLITHE
	playsound SFX_BALL_POOF
	waitsfx
	cry GROWLITHE
	showemote EMOTE_PISSED, ROUTE48N_GROWLITHE, 45
	cry EKANS
	setevent EVENT_GOT_RALTS
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	loadwildmon EKANS, 2
	startbattle
	reloadmapafterbattle
	disappear ROUTE48N_EKANS 
	playsound SFX_TOXIC
	waitsfx
	cry GROWLITHE
	showemote EMOTE_PANIC, ROUTE48N_GROWLITHE, 45
	turnobject PLAYER, RIGHT
	playsound SFX_SANDSTORM
	showemote EMOTE_PANIC, PLAYER, 20
	waitsfx
	disappear ROUTE48N_GROWLITHE
	playsound SFX_BALL_POOF
	waitsfx
	setevent EVENT_ROUTE48N_SPAWN_GROWLITHE
	cry RALTS
	showemote EMOTE_HEART, ROUTE48N_RALTS, 30
	turnobject PLAYER, LEFT
	playsound SFX_LICK
	showemote EMOTE_QUESTION, PLAYER, 20
	applymovement PLAYER, WalkBackToErable
	applymovement ROUTE48N_RALTS, WalkBackToErable
	cry RALTS
	showemote EMOTE_HEART, ROUTE48N_RALTS, 30
	opentext 
	writetext RaltsFollowsText
	waitbutton
	getmonname STRING_BUFFER_3, RALTS
	writetext ReceivedRaltsText
	waitbutton
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke RALTS, 5, MAGIC_GEM
	disappear ROUTE48N_RALTS
	setevent EVENT_RETURN_GRAMPS_GROWLITHE
	clearevent EVENT_GOT_GROWLITHE
	setscene SCENE_HELP_RALTS
	closetext
	end

Route48NHelpRaltsEastScript:
	playmusic MUSIC_NONE
	cry RALTS
	showemote EMOTE_PANIC, ROUTE48N_RALTS, 15
	playsound SFX_TOXIC
	waitsfx
	cry EKANS
	showemote EMOTE_DEATH, ROUTE48N_EKANS, 15
	playsound SFX_GLASS_TING_2
	showemote EMOTE_SHOCK, PLAYER, 30
	applymovement PLAYER, Route48NPlayerMovementEast
	playsound SFX_GLASS_TING_2
	showemote EMOTE_SHOCK, ROUTE48N_RALTS, 15
	cry RALTS
	playsound SFX_JUMP_OVER_LEDGE
	applymovement ROUTE48N_RALTS, RaltsHopBehindMorgan
	pause 10
	applymovement ROUTE48N_EKANS, GiveChaseToRalts
	cry EKANS
	pause 10
	playsound SFX_SANDSTORM
	showemote EMOTE_PANIC, PLAYER, 20
	playsound SFX_TACKLE
	applymovement PLAYER, GetAwayFromEkans
	applymovement ROUTE48N_RALTS, GetAwayFromEkans
	waitsfx
	moveobject ROUTE48N_GROWLITHE, 14, 10
	appear ROUTE48N_GROWLITHE
	playsound SFX_BALL_POOF
	waitsfx
	cry GROWLITHE
	showemote EMOTE_PISSED, ROUTE48N_GROWLITHE, 45
	cry EKANS
	setevent EVENT_GOT_RALTS
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	loadwildmon EKANS, 2
	startbattle
	reloadmapafterbattle
	disappear ROUTE48N_EKANS 
	playsound SFX_TOXIC
	waitsfx
	cry GROWLITHE
	showemote EMOTE_PANIC, ROUTE48N_GROWLITHE, 45
	turnobject PLAYER, RIGHT
	playsound SFX_SANDSTORM
	showemote EMOTE_PANIC, PLAYER, 20
	waitsfx
	disappear ROUTE48N_GROWLITHE
	playsound SFX_BALL_POOF
	waitsfx
	setevent EVENT_ROUTE48N_SPAWN_GROWLITHE
	cry RALTS
	showemote EMOTE_HEART, ROUTE48N_RALTS, 30
	turnobject PLAYER, LEFT
	playsound SFX_LICK
	showemote EMOTE_QUESTION, PLAYER, 20
	applymovement PLAYER, WalkBackToErable
	applymovement ROUTE48N_RALTS, WalkBackToErable
	cry RALTS
	showemote EMOTE_HEART, ROUTE48N_RALTS, 30
	opentext 
	writetext RaltsFollowsText
	waitbutton
	getmonname STRING_BUFFER_3, RALTS
	writetext ReceivedRaltsText
	waitbutton
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke RALTS, 5, MASTER_BALL
	disappear ROUTE48N_RALTS
	setevent EVENT_RETURN_GRAMPS_GROWLITHE
	clearevent EVENT_GOT_GROWLITHE
	setscene SCENE_HELP_RALTS
	closetext
	end

Route48NPlayerMovementWest:
	step RIGHT
	step DOWN
	step RIGHT
	step_end

Route48NPlayerMovementEast:
	step DOWN
	step DOWN
	step RIGHT
	step_end

RaltsHopBehindMorgan:
	jump_step LEFT
	step_end

GiveChaseToRalts:
	step UP
	step_end

GetAwayFromEkans:
	big_step LEFT
	step_end

WalkBackToErable:
	step UP
	step UP
	step LEFT
	step_end

	
ReceivedRaltsText:
	text "<PLAYER> received"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

TalkToEkansText:
	text "Oh my gosh!"
	line "That #MON is in"
	cont "trouble!"
	done

MorganExclaimsText:
	text "We have to help"
	line "it!"
	done

RaltsFollowsText:
	text "It seems to feel"
	line "safer with me."

	para "Maybe I should"
	line "take it along?"
	done

;Coords Scripts that doesn't allow the user to pass need to give growlithe first
GiveBackGrowlitheScript:
	opentext
	writetext GiveBackGrowlitheText
	waitbutton
	closetext
	applymovement PLAYER, MorganStepBackMovement
	end

GiveBackGrowlitheText:
	text "Growlithe is badly" 
	line "injured. I can't"
	cont "keep going like"
	cont "this I need to"
	cont "take him back to"
	cont "grampapad!"
	done


;Morgans first Fight

MorgansFirstFightScript:
	playmusic MUSIC_YOUNGSTER_ENCOUNTER
	showemote EMOTE_SHOCK, ROUTE48N_YOUNGSTER_1, 20
	turnobject PLAYER, RIGHT
	opentext
	writetext YoungsterLarrySeenText
	waitbutton
	closetext
	playmusic MUSIC_NONE
	applymovement PLAYER, R48MorganWalkDown
	turnobject ROUTE48N_YOUNGSTER_1, DOWN
	playsound SFX_LICK
	showemote EMOTE_QUESTION, ROUTE48N_YOUNGSTER_1, 20
	opentext
	writetext YoungsterLarryNoText
	waitbutton
	closetext
	applymovement ROUTE48N_YOUNGSTER_1, R48YoungsterLeft
	playsound SFX_JUMP_OVER_LEDGE 
	applymovement ROUTE48N_YOUNGSTER_1, R48YoungsterFollow
	playsound SFX_GLASS_TING_2
	showemote EMOTE_SHOCK, PLAYER, 20
	playsound SFX_TACKLE
	applymovement PLAYER, MorganOutOfTheWay
	opentext
	writetext YoungsterLarryOneMoreNoText
	promptbutton
	playmusic MUSIC_YOUNGSTER_ENCOUNTER
	writetext YoungsterLarryWhatDoYouMeanNoText
	waitbutton
	closetext
	winlosstext YoungsterLarryBeatenText, 0
	loadtrainer YOUNGSTER, LARRY2
	startbattle
	reloadmapafterbattle
	opentext
	writetext YoungsterLarryAfter2Text
	waitbutton
	closetext
	playsound SFX_GLASS_TING_2
	showemote EMOTE_SHOCK, PLAYER, 20
	giveitem POTION
	giveitem BERRY
	giveitem ANTIDOTE
	giveitem PARLYZ_HEAL
	playsound SFX_ITEM   
	opentext
	writetext YouJustGotABunchOfStuff
	waitbutton
	closetext
	setscene SCENE_ROUTE48N_NOTHING	
	end

MorgansFirstFightScript2:
	playmusic MUSIC_YOUNGSTER_ENCOUNTER
	showemote EMOTE_SHOCK, ROUTE48N_YOUNGSTER_1, 20
	applymovement ROUTE48N_YOUNGSTER_1, R48YoungsterLeft
	turnobject PLAYER, RIGHT
	opentext
	writetext YoungsterLarrySeenText
	waitbutton
	closetext
	playmusic MUSIC_NONE
	applymovement PLAYER, R48MorganWalkDown
	turnobject ROUTE48N_YOUNGSTER_1, DOWN
	playsound SFX_LICK
	showemote EMOTE_QUESTION, ROUTE48N_YOUNGSTER_1, 20
	opentext
	writetext YoungsterLarryNoText
	waitbutton
	closetext
	applymovement ROUTE48N_YOUNGSTER_1, R48YoungsterLeft
	playsound SFX_JUMP_OVER_LEDGE 
	applymovement ROUTE48N_YOUNGSTER_1, R48YoungsterFollow
	playsound SFX_GLASS_TING_2
	showemote EMOTE_SHOCK, PLAYER, 20
	playsound SFX_TACKLE
	applymovement PLAYER, MorganOutOfTheWay
	opentext
	writetext YoungsterLarryOneMoreNoText
	promptbutton
	playmusic MUSIC_YOUNGSTER_ENCOUNTER
	writetext YoungsterLarryWhatDoYouMeanNoText
	waitbutton
	closetext
	winlosstext YoungsterLarryBeatenText, 0
	loadtrainer YOUNGSTER, LARRY2
	startbattle
	reloadmapafterbattle
	opentext
	writetext YoungsterLarryAfter2Text
	waitbutton
	closetext
	playsound SFX_GLASS_TING_2
	showemote EMOTE_SHOCK, PLAYER, 20
	giveitem POTION
	giveitem BERRY
	giveitem ANTIDOTE
	giveitem PARLYZ_HEAL
	playsound SFX_ITEM   
	opentext
	writetext YouJustGotABunchOfStuff
	waitbutton
	closetext
	setscene SCENE_ROUTE48N_NOTHING
	end

R48MorganWalkDown:
	step DOWN
	step DOWN
	step DOWN
	step_end

R48YoungsterLeft:
	step LEFT
	step_end

R48YoungsterFollow:
	jump_step DOWN
	step_end

MorganOutOfTheWay:
	big_step DOWN
	turn_head UP
	step_end

YoungsterLarryTalkScript:
	faceplayer
	opentext
	writetext YoungsterLarryAfterText
	waitbutton
	closetext
	end

YoungsterLarrySeenText:
	text "You! Is it true!?"
	line "You have a #MON"
	cont "now?" 
	
	para "Let's battle!"
	done


YoungsterLarryNoText:
	text "..."

	para "No?"

	para "No??"
	done

YoungsterLarryOneMoreNoText:
	text "NO???"
	done

YoungsterLarryWhatDoYouMeanNoText:
	text "What do you mean"
	line "no?"

	para "When two trainers'"
	line "eyes meet they"
	cont "have to battle!"

	done

YoungsterLarryBeatenText:
	text "How did I lose?"

	para "You had no idea"
	line "what you were do-"
	cont "ing!"
	done
	
YoungsterLarryAfterText:
	text "Let's pretend this"
	line "battle never hap-"
	cont "pend ok?"
	done

YoungsterLarryAfter2Text:
	text "Let's pretend this"
	line "battle never hap-"
	cont "pend ok?"

	para "I'll even share"
	line "some of the items"
	cont "I got from Castor"
	cont "with you!"
	done

YouJustGotABunchOfStuff:
	text "I just got a bunch"
	line "neat of stuff!"
	done

BoarderBradScript:
	trainer BOARDER, BRAD, EVENT_BEAT_BOARDER_BRAD, BoarderBradSeenText, BoarderBradBeatenText, 0, .Script

.Script
	opentext
	writetext BoarderBradAfterText
	waitbutton
	closetext
	end

BoarderBradSeenText:
	text "Yo!"

	para "Didn't you slip"
	line "and crash down the"
	cont "hill not too long"
	cont "ago?"

	para "Now THAT was funny"
	line "your bike was com-"
	cont "pletely totalled!"

	para "Good thing you la-"
	line "nded on your butt"
	cont "otherwi-"

	para "Huh?"

	para "You wanna battle?"
	done

BoarderBradBeatenText:
	text "Never would've th-"
	line "ought you'd be de-"
	cont "cent at #MON"
	cont "battles!"
	done

BoarderBradAfterText:
	text "You're headed to"
	line "Castor, right?"

	para "You should check"
	line "the Bike Shop to"
	cont "see if your bike"
	cont "has been fixed."
	done

LassNievaScript:
	trainer LASS, NIEVA, EVENT_BEAT_LASS_NIEVA, LassNievaSeenText, LassNievaBeatenText, 0, .Script

.Script
	endifjustbattled
	opentext
	writetext LassNievaAfterText
	waitbutton
	closetext
	end

LassNievaSeenText:
	text "My dad told me"
	line "my #MON are"
	cont "special!"
	cont "You don't stand"
	cont "a chance!"
	done
	
LassNievaBeatenText:
	text "B-but my #MON"
	cont "are special..."
	done
	
LassNievaAfterText:
	text "My dad is a"
	line "researcher working"
	cont "with Prof. Ivy!"
	
	para "My #MON were"
	cont "a gift from him."
	done

LassNievaWinText:
	text "Can't believe"
	line "I won...."
	done
	

LassValerieScript:
	trainer LASS, VALERIE1, EVENT_BEAT_LASS_VALERIE, LassValerieSeenText, LassValerieBeatenText, 0, .Script

.Script
	checkevent EVENT_GAVE_TIPS
	iftrue .AfterText
	playsound SFX_MILK_DRINK
	showemote EMOTE_PISSED, PLAYER, 60
	opentext
	writetext LassValerieAfterText
	waitbutton
	closetext
	playsound SFX_LICK
	showemote EMOTE_QUESTION, PLAYER, 20
	opentext
	writetext LassValerieYourPokeIsToughText
	waitbutton
	closetext
	playsound SFX_THIEF_2
	showemote EMOTE_MAD, PLAYER, 20
	opentext
	writetext LassValerieNotTryingToEmbarassYouText
	waitbutton
	closetext
	setevent EVENT_GAVE_TIPS
	end

.AfterText
	opentext
	writetext LassValerieNotTryingToEmbarassYouText
	waitbutton
	closetext

LassValerieSeenText:
	text "Oh hey, it's you."

	para "Heading to Castor"
	line "alone?"

	para "Isn't that danger-"
	line "ous?"

	para "What you have a"
	line "#MON?"

	para "Then we have to"
	line "battle!"
	done

LassValerieBeatenText:
	text "I lost to the"
	line "weirdo!?"

	para "Wait, I didn't"
	line "mean that!!"
	done

LassValerieAfterText:
	text "Honest!"

	para "To prove it I'll"
	line "give you some ama-"
	cont "zing tips!"
	done


LassValerieYourPokeIsToughText:
	text "Your #MON is"
	line "pretty tough."

	para "Buuuuuut you won't"
	line "get far with only"
	cont "one #MON."

	para "I saw some guy"
	line "tossing some of"
	cont "his # Balls"
	cont "out up the hill"
	cont "right next to"
	cont "those stumps."

	para "They're likely"
	line "burried in the"
	cont "snow now so you"
	cont "wont see them."
	done


LassValerieNotTryingToEmbarassYouText:
	text "No!"

	para "I'm not trying to"
	line "embarass you!"

	para "Seriously!"

	para "It's probably your"
	line "best bet since I"
	cont "doubt you can aff-"
	cont "ord your own."

	para "Ha-ha!!"

	done

HikerRusselScript:
	trainer HIKER, RUSSELL, EVENT_BEAT_HIKER_RUSSELL, HikerRusselSeenText, HikerRusselBeatenText, 0, .Script

.Script
	endifjustbattled
	opentext
	writetext HikerRusselAfterText
	waitbutton
	closetext
	end

HikerRusselSeenText:
	text "Have you tried go-"
	line "ing in the diamant"
	cont "caves?"

	para "It's freezing in"
	line "there!"
	done 

HikerRusselBeatenText:
	text "My #mon were"
	line "still shivering!"
	done

HikerRusselAfterText:
	text "I should head ba-"
	line "ck home and get my"
	cont "Heavy Coat."
	done

MorganStepBackMovement:
	step UP
	step_end

Route48FruitTreeScript:
	fruittree FRUITTREE_ROUTE49N

Route48FruitTreeScript2:
	fruittree FRUITTREE_ROUTE49N2

Route48FruitTreeScript3:
	fruittree FRUITTREE_ROUTE49N3

Route48NAlolanVulpixScript:
	cry VULPIX
	showemote EMOTE_PANIC, ROUTE48N_AVULPIX2, 60
	cry NINETALES
	cry VULPIX
	showemote EMOTE_PANIC, ROUTE48N_ANINETALES, 60
	opentext
	writetext R48NVulpixInjuredText
	waitbutton
	closetext
	turnobject PLAYER, LEFT
	opentext
	writetext R48NVulpixFamilyConcernedText
	waitbutton
	closetext
	turnobject PLAYER, UP 
	pause 10
	turnobject PLAYER, LEFT 
	pause 10
	turnobject PLAYER, UP 
	pause 10
	turnobject PLAYER, LEFT 
	opentext
	writetext R48VulpixFamilyCantComeDownText
	checkitem BERRY
	iffalse .noberries
	takeitem BERRY
	playmusic MUSIC_HEAL
	pause 60
	special RestartMapMusic
	cry VULPIX
	showemote EMOTE_HAPPY, ROUTE48N_AVULPIX2, 60
	opentext
	writetext R48NVulpixHealedText
	waitbutton
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke VULPIX, 15
	setevent EVENT_SAVED_AVULPIX
	waitbutton
	closetext
	cry NINETALES
	cry VULPIX
	showemote EMOTE_HAPPY, ROUTE48N_AVULPIX2, 60
	showemote EMOTE_HAPPY, ROUTE48N_ANINETALES, 60
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	disappear ROUTE48N_AVULPIX
	disappear ROUTE48N_ANINETALES
	disappear ROUTE48N_AVULPIX2
	pause 15
	special FadeInQuickly
	end

.noberries
	opentext
	writetext INeedToFindSomeText
	waitbutton
	closetext
	end

R48NVulpixInjuredText:
	text "Oh no! This Vulpix"
	line "is badly injured!"

	para "I looks like it"
	line "can barely move!"
	done

R48NVulpixFamilyConcernedText:
	text "It's family up on"
	line "those mountains"
	cont "look worried..."
	done

R48VulpixFamilyCantComeDownText:
	text "It doesn't look"
	line "like they're able"
	cont "to get down here."

	para "I have to help the"
	line "Vulpix myself!"

	para "A PrzCureBerry sh-"
	line "ould do the trick!"
	done

R48NVulpixHealedText:
	text "Vulpix is all bet-"
	line "ter!"

	para "It looks like it"
	line "wants to come with"
	cont "me."
	done


INeedToFindSomeText:
	text "I need to find"
	line "some fast!"
	done

; Item 5 pokeball script 
ItemballRoute48PokeBallScript:
	itemball RARE_CANDY, 95

ItemballRoute48PotionScript:
	itemball MASTER_BALL, 20

Route48NorthHiddenBerry:
	hiddenitem BERRY, EVENT_ROUTE_48N_HIDDEN_BERRY

Route48NorthHiddenPokeball:
	hiddenitem MIGHT_GEM,  EVENT_ROUTE_48N_HIDDEN_GREATBALL

Route48NorthHiddenRepel:
	hiddenitem MAGIC_GEM, EVENT_ROUTE_48N_HIDDEN_REPEL

Route48NorthHiddenPokeball2:
	hiddenitem ARMOUR_GEM,  EVENT_ROUTE_48N_HIDDEN_GREATBALL2

Route48NHiddenSilverLeaf:
	hiddenitem SILVER_LEAF, EVENT_ROUTE_48N_HIDDEN_SILVERLEAF

Route48NBikeCrashMemories:
	playsound SFX_FORESIGHT
	showemote EMOTE_SWEAT, PLAYER, 60
	opentext
	writetext Route48NBikeCrashMemoriesText
	waitbutton
	closetext
	end

Route48NBikeCrashMemoriesText:
	text "At least the bits"
	line "and pieces of my"
	cont "broken bike are"
	cont "gone..."
	done


Route48N_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 11,  5, INTERLUDE_ERABLE, 3
	warp_event 38, 31, ROUTE_48N_CAVE, 1
	warp_event  7, 55, INTERLUDE_ROUTE48N, 1
	warp_event  8, 55, INTERLUDE_ROUTE48N, 2

	def_coord_events
	coord_event 12,  9, SCENE_ROUTE48N_RALTS_DANGER, Route48NHelpRaltsWestScript
	coord_event 13,  8, SCENE_ROUTE48N_RALTS_DANGER, Route48NHelpRaltsEastScript
	coord_event 16, 12, SCENE_HELP_RALTS, GiveBackGrowlitheScript
	coord_event 17, 12, SCENE_HELP_RALTS, GiveBackGrowlitheScript
	coord_event 17, 16, SCENE_MORGAN_FIRST_FIGHT, MorgansFirstFightScript
	coord_event	16, 16, SCENE_MORGAN_FIRST_FIGHT, MorgansFirstFightScript2

	def_bg_events
	bg_event 30, 12, BGEVENT_ITEM, Route48NorthHiddenBerry
	bg_event 24, 40, BGEVENT_ITEM, Route48NorthHiddenPokeball
	bg_event 13, 34, BGEVENT_ITEM, Route48NorthHiddenRepel
	bg_event 36, 32, BGEVENT_ITEM, Route48NorthHiddenPokeball2
	bg_event 39, 42, BGEVENT_ITEM, Route48NHiddenSilverLeaf
	bg_event  9, 40, BGEVENT_READ, Route48NBikeCrashMemories
	bg_event  8, 40, BGEVENT_READ, Route48NBikeCrashMemories
	bg_event  7, 40, BGEVENT_READ, Route48NBikeCrashMemories
	bg_event  6, 40, BGEVENT_READ, Route48NBikeCrashMemories
	
	def_object_events
	object_event 15, 10, SPRITE_RALTS, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, -1, EVENT_GOT_RALTS
	object_event 15, 11, SPRITE_EKANS, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, -1, EVENT_GOT_RALTS
	object_event 32,  2, SPRITE_ANINETALES, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_OW_SILVER, OBJECTTYPE_SCRIPT, 0, -1, -1
	object_event 32,  1, SPRITE_AVULPIX, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_OW_SILVER, OBJECTTYPE_SCRIPT, 0, -1, -1
	object_event 45, 59, SPRITE_GROWLITHE, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, 0, OBJECTTYPE_SCRIPT, 0, -1, EVENT_ROUTE48N_SPAWN_GROWLITHE
	object_event 18, 16, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 2, YoungsterLarryTalkScript, -1
	object_event 22, 27, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 5, LassNievaScript, -1
	object_event 7, 30, SPRITE_BOARDER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 5, BoarderBradScript, -1
	object_event 13, 48, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, LassValerieScript, -1
	object_event 28,  2, SPRITE_AVULPIX, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_OW_SILVER, OBJECTTYPE_SCRIPT, 0, Route48NAlolanVulpixScript, EVENT_SAVED_AVULPIX
	object_event 36, 34, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, HikerRusselScript, -1
	object_event 27,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_OW_SILVER, OBJECTTYPE_ITEMBALL, 0, ItemballRoute48PokeBallScript, EVENT_ROUTE_48_ITEM_POKEBALL
	object_event 32, 36, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_OW_SILVER, OBJECTTYPE_ITEMBALL, 0, ItemballRoute48PotionScript, EVENT_ROUTE_48_ITEM_POTION
	object_event  9, 14, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_OW_GREEN, OBJECTTYPE_SCRIPT, 0, Route48FruitTreeScript, -1
	object_event 37, 13, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_OW_SILVER, OBJECTTYPE_SCRIPT, 0, Route48FruitTreeScript2, -1
	object_event 41, 44, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_OW_RED, OBJECTTYPE_SCRIPT, 0, Route48FruitTreeScript3, -1



