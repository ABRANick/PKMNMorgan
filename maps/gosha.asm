GOSHA_DRATINI_COINS EQU 2000
GOSHA_MUGGED_COINS EQU 300

	object_const_def
	const GOSHA_JAMZ
	const GOSHA_BEAUTY
	const GOSHA_LASS 
	const GOSHA_LASS2
	const GOSHA_GAMBLER
	const GOSHA_GENTLEMAN
	const GOSHA_SUPER_NERD
	const GOSHA_COOLTRAINER_F
	const GOSHA_SHADY_GUY
	const GOSHA_SHADY_GUY2
	
Gosha_MapScripts:
	def_scene_scripts

	def_callbacks

GoshaJamzScript:
	showemote EMOTE_SHOCK, GOSHA_JAMZ, 15
	playmusic MUSIC_JAMZ_ENCOUNTER
	faceplayer
	opentext
	checkevent EVENT_BEAT_COINCASE_GUY
	iftrue .FightDone
	writetext GoshaJamzText
	waitbutton
	closetext
	winlosstext GoshaJamzWinLossText, 0
	loadtrainer JAMZM, JAMZM4
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_COINCASE_GUY
.FightDone
	opentext
	writetext GoshaJamzCoinCase
	promptbutton
	verbosegiveitem COIN_CASE
	writetext GoshaJamzByeText
	closetext
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	disappear GOSHA_JAMZ
	special FadeInQuickly
	end	

GoshaJamzText:
	text "OH! Can't a guy"
	line "get a little bit"
	cont "of prviacy over"
	cont "here?"
	done 

GoshaJamzWinLossText:
	text "Mannaggia!"
	done

GoshaJamzCoinCase:
	text "Never thought I'd"
	line "be held up by a"
	cont "teenage girl!"

	para "Alright looky if"
	line "ya leave me in pe-"
	cont "ace you can have"
	cont "this."
	done

GoshaJamzByeText:
	text "Ciao!"
	done



GotCoinCaseText:
	text "<PLAYER> received"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

GoshaBeautyScript:
	faceplayer
	checkitem COIN_CASE
	iffalse .GoshaBeautyNoCoinCase
	checkevent EVENT_GOSHA_CITY_BEAUTY_COINS
	iffalse .GoshaBeautyHaveSomeCoins
	opentext
	writetext GoshaBeautyText
	promptbutton
	closetext
	showemote EMOTE_HEART, GOSHA_BEAUTY, 15	
	end	

.GoshaBeautyNoCoinCase
	opentext
	writetext GoshaBeautyNoCoinCaseText
	promptbutton
	closetext
	end

.GoshaBeautyHaveSomeCoins
	opentext
	writetext GoshaBeautyHaveSomeCoinsText
	promptbutton
	givecoins 2500
	playsound SFX_TRANSACTION
	waitsfx
	writetext Received500CoinsText
	waitbutton 
	closetext
	setevent EVENT_GOSHA_CITY_BEAUTY_COINS
	end

GoshaBeautyNoCoinCaseText:
	text "Oh sweetie, you"
	line "won't get far in"
	cont "Gosha without a"
	cont "Coin Case."
	done

GoshaBeautyHaveSomeCoinsText:
	text "Oh sweetie, you"
	line "won't get far in"
	cont "Gosha without any"
	cont "coins!"
	done

GoshaBeautyText:
	text "Don't worry about"
	line "me sweetie."

	para "I get a LOT of"
	line "tips. Ohoho!"
	done

GoshaLass1Script:
	faceplayer
	opentext
	writetext GoshaLass1Text
	waitbutton
	closetext
	end 

GoshaLass1Text:
	text "There's a lot of"
	line "shady people in"
	cont "Gosha."

	para "Be careful!"
	done

GoshaCityLass2Script:
	faceplayer
	opentext
	writetext GoshaLass2Text
	waitbutton
	closetext
	showemote EMOTE_QUESTION, PLAYER, 15	
	opentext
	writetext GoshaLass2SeriouslyText
	waitbutton
	closetext
	end 

GoshaLass2Text:
	text "Don't trust any of"
	line "guys wearing sun-"
	cont "glasses."
	done 

GoshaLass2SeriouslyText:
	text "Are you seriously"
	line "asking me why?"
	
	para "They're literally"
	line "wearing sunglasses"
	cont "in the dark!"

	para "DUH!"
	done


GoshaCityGamblerScript:
	faceplayer
	opentext
	writetext GoshaCityGamblerText
	waitbutton
	closetext
	end

GoshaCityGamblerText:
	text "One of those goons"
	line "from the Marchesi"
	cont "Family came stum-"
	cont "bling out of the"
	cont "casino carrying a"
	cont "ton of Coin Cases"
	done


GoshaCityGentlemanScript:
	faceplayer
	showemote EMOTE_SAD, GOSHA_GENTLEMAN, 15
	opentext
	writetext GoshaCityGentlemanText
	waitbutton
	closetext
	end

GoshaCityGentlemanText:
	text "My wife kicked me"
	line "out for blowing my"
	cont "paycheck playing"
	cont "slots again..."

	para "I only wanted to"
	line "win a Chimchar for"
	cont "my little girl..."
	done




GoshaSuperNerd1Script:
	faceplayer
	opentext
	writetext GoshaSuperNerd1Text
	setflag ENGINE_POKEDEX
	waitbutton
	closetext
	end 


GoshaSuperNerd1Text:
	text "The mart's all out"
	line "of Eri posters."

	para "My buddies are in-"
	line "side getting their"
	cont "Tsubaki and Lore-"
	cont "lei posters."

	para "Such cretins! Tas-"
	line "teless I tell ya!"
	done

GoshaCityCoolTrainerFScript:
	faceplayer
	opentext
	writetext GoshaCityCoolTrainerFText
	waitbutton
	closetext
	end

GoshaCityCoolTrainerFText:
	text "The gym in this"
	line "city used to be"
	cont "ran by the Mar-"
	cont "chesi Family."

	para "Until Er-, sorry"
	line "Miss Eri showed"
	cont "up and totally"
	cont "mopped the floor"
	cont "with them."

	para "I'd call it insp-"
	line "iring if she wasnt"
	cont "so stuck up!"
	done



GoshaShadyGuyScript:
	faceplayer
	checkevent EVENT_BOUGHT_DRATINI
	iffalse .selldratini
	opentext
	writetext GoshaShadyGuyNoRefundsText
	waitbutton
	closetext
	end

.selldratini
	showemote EMOTE_SHOCK, GOSHA_SHADY_GUY, 15
	opentext
	writetext GoshaShadyGuyText
	waitbutton
	closetext
	showemote EMOTE_SAD, PLAYER, 15
	opentext
	writetext GoshaShadyGuyBackOfATruckText
	waitbutton
	special DisplayCoinCaseBalance
	yesorno
	iffalse .CantPayDratini
	checkcoins GOSHA_DRATINI_COINS
	ifequal HAVE_LESS, .CantPayDratini
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .PartyFull
	waitsfx
	playsound SFX_TRANSACTION
	takecoins GOSHA_DRATINI_COINS
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke DRATINI, 25
	special GiveDratini
	setevent EVENT_BOUGHT_DRATINI
	waitbutton
	closetext
	end

.CantPayDratini
	writetext GoshaShadyGuyNoBuyText
	waitbutton
	closetext
	end

.PartyFull
	writetext GoshaPartyFull
	waitbutton
	closetext
	end

GoshaShadyGuyText:
	text "Hey yo, babe. Now"
	line "you look like a"
	cont "mighty trainer!"

	para "A beauty such as"
	line "yourself deserves"
	cont "to have a #MON"
	cont "that matches the"
	cont "confidence oozing"
	cont "out of you."
	
	para "For 2000 coins it"
	line "can be all yours!"


	para "How's about it?"
	done


GoshaShadyGuyBackOfATruckText:
	text "Steal?"

	para "I found it on the"
	line "back of a truck."

	para "Honest!"

	para "So, whaddya say?"
	
	done

GoshaShadyGuyNoBuyText:
	text "Hmph! Guess you're"
	line "not all I thought"
	cont "you'd be."
	done

GoshaShadyGuyNoRefundsText:
	text "I have a strict"
	line "NO REFUND policy"
	cont "babe, sorry."
	done

GoshaPartyFull:
	text "Your party is full"
	done

GoshaShadyGuyScript2:
	faceplayer
	checkitem COIN_CASE
	iffalse .CantGetMugged
	checkcoins GOSHA_MUGGED_COINS
	ifequal HAVE_LESS, .CantGetMugged
	showemote EMOTE_SHOCK, PLAYER, 15
	applymovement PLAYER, GettingMuggedMovement
	opentext
	writetext ShadyGuyThanksText
	waitbutton
	closetext
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	disappear GOSHA_SHADY_GUY2
	pause 15
	special FadeInQuickly
	opentext
	writetext CoinCaseFeelsLighterText
	takecoins GOSHA_MUGGED_COINS
	waitbutton
	closetext
	showemote EMOTE_SAD, PLAYER, 15
	opentext
	writetext FindThatCreepText
	closetext
	setevent EVENT_GOSHA_GOT_MUGGED
	end
		

.CantGetMugged
	opentext
	writetext CantGetMuggedText
	waitbutton
	closetext
	end 

CantGetMuggedText:
	text "Suspicious?"
	
	para "Me!?"

	para "I'm just mindin'"
	line "my own business."
	done

ShadyGuyThanksText:
	text "Hehe thanks babe"
	done

CoinCaseFeelsLighterText:
	text "My Coin Case"
	line "feels lighter..."
	done 

FindThatCreepText:
	text "I have to find"
	line "that creep!"
	done



YouShouldntHaveSteppedThere:
	showemote EMOTE_SAD, PLAYER, 45
	applymovement PLAYER, GettingMuggedMovement 
	end

GettingMuggedMovement:
	big_step DOWN
	turn_head UP
	step_end

Gosha_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 27, 15, GOSHA_POKECENTER_1F, 1
	warp_event 28, 15, GOSHA_POKECENTER_1F, 2
	warp_event  38, 10, GOSHA_GYM, 1
	warp_event 21,  6, GOSHA_TRAIN_STATION, 1
    warp_event  22, 6, GOSHA_TRAIN_STATION, 2
	warp_event 27, 21, GOSHA_MART, 1
	warp_event 28, 21, GOSHA_MART, 2



	def_coord_events

	def_bg_events
	bg_event 38,  3, BGEVENT_READ, YouShouldntHaveSteppedThere

    def_object_events
	object_event 38,  4, SPRITE_JAMZ_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoshaJamzScript, EVENT_BEAT_COINCASE_GUY
	object_event 24, 24, SPRITE_BEAUTY, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoshaBeautyScript, -1
	object_event 38, 19, SPRITE_LASS, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 3, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoshaLass1Script, -1
	object_event 26,  8, SPRITE_LASS, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 3, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoshaCityLass2Script, -1
	object_event 39, 14, SPRITE_GAMBLER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoshaCityGamblerScript, -1
	object_event  9, 19, SPRITE_GENTLEMAN, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoshaCityGentlemanScript, -1
	object_event 29, 22, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoshaSuperNerd1Script, -1
	object_event 20, 13, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoshaCityCoolTrainerFScript, -1
	object_event  8, 26, SPRITE_PHARMACIST, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 3, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoshaShadyGuyScript, -1
	object_event 14,  8, SPRITE_PHARMACIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoshaShadyGuyScript2, EVENT_GOSHA_GOT_MUGGED
