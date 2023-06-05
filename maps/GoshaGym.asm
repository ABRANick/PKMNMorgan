GOSHAGYM_TOLL_COINS EQU 2000
GOSHAGYM_TOLL2_COINS EQU 3000
GOSHAGYM_TOLL3_COINS EQU 4000

	object_const_def
	const GOSHAGYM_CLEFABLE
	const GOSHAGYM_ERI
	const GOSHAGYM_ARCHER
	const GOSHAGYM_ROCKET
	const GOSHAGYM_ROCKET2
	const GOSHAGYM_GAMBLER
	const GOSHAGYM_GAMBLER2
	const GOSHAGYM_GAMBLER3
	const GOSHAGYM_GAMBLER4
	const GOSHAGYM_BEAUTY
	const GOSHAGYM_BEAUTY2
	const GOSHAGYM_BEAUTY3
	const GOSHAGYM_GENTLEMAN
	const GOSHAGYM_GENTLEMAN2
	const GOSHAGYM_COOLTRAINER_F



GoshaGym_MapScripts:
	def_scene_scripts
	scene_script .DummyScene0 ; SCENE_PAY_GUARD
	scene_script .DummyScene1 ; SCENE_PAY_GUARD2
	scene_script .DummyScene2 ; SCENE_PAY_GUARD3
	scene_script .DummyScene3 ; SCENE_FIGHT_ERI
	scene_script .DummyScene4 ; SCENE_BEAT_ERI 

	def_callbacks
	
.DummyScene0:
	end

.DummyScene1:
	end

.DummyScene2:
	end

.DummyScene3:
	end

.DummyScene4
	end


ScenePayGuard1Script:
	showemote EMOTE_SHOCK, PLAYER, 15
	opentext
	writetext GoshaGuardText
	waitbutton
	special DisplayCoinCaseBalance
	yesorno
	iffalse .CantPay
	checkcoins GOSHAGYM_TOLL_COINS
	ifequal HAVE_LESS, GoshaCantPayTollScript
	waitsfx
	playsound SFX_TRANSACTION
	takecoins GOSHAGYM_TOLL_COINS
	sjump PayGuardComplete1Script
	

.CantPay
	writetext NoPayText
	waitbutton
	closetext
	applymovement PLAYER, .StepBack
	end

.StepBack
	step DOWN
	step_end

PayGuardComplete1Script:
	writetext GoshaGuardThanksText
	waitbutton
	closetext
	setscene SCENE_PAY_GUARD2
	end

ScenePayGuard2Script:
	showemote EMOTE_SHOCK, PLAYER, 15
	opentext
	writetext GoshaGuardText
	waitbutton
	special DisplayCoinCaseBalance
	yesorno
	iffalse .CantPay
	checkcoins GOSHAGYM_TOLL_COINS
	ifequal HAVE_LESS, GoshaCantPayTollScript
	waitsfx
	playsound SFX_TRANSACTION
	takecoins GOSHAGYM_TOLL_COINS
	sjump PayGuardComplete2Script

.CantPay
	writetext NoPayText
	waitbutton
	closetext
	applymovement PLAYER, .StepBack
	end

.StepBack
	step DOWN
	step_end

PayGuardComplete2Script:
	writetext GoshaGuardThanksText
	waitbutton
	closetext
	setscene SCENE_PAY_GUARD3
	end

ScenePayGuard3Script:
	showemote EMOTE_SHOCK, PLAYER, 15
	opentext
	writetext GoshaGuardText
	waitbutton
	special DisplayCoinCaseBalance
	yesorno
	iffalse .CantPay
	checkcoins GOSHAGYM_TOLL3_COINS
	ifequal HAVE_LESS, GoshaCantPayTollScript
	takecoins GOSHAGYM_TOLL3_COINS
	waitsfx
	playsound SFX_TRANSACTION
	sjump PayGuardComplete3Script

.CantPay
	writetext NoPayText
	waitbutton
	closetext
	applymovement PLAYER, .StepBack
	end


.StepBack
	step DOWN
	step_end

PayGuardComplete3Script:
	writetext GoshaGuardThanksText
	waitbutton
	closetext
	setscene SCENE_FIGHT_ERI
	end

GoshaCantPayTollScript:
	writetext NoPayText
	waitbutton
	closetext
	applymovement PLAYER, .StepBack
	end


.StepBack
	step DOWN
	step_end


GoshaGuardText:
	text "Pay the toll"
	done

NoPayText:
	text "Buzz off peasant!"
	done

GoshaGuardThanksText:
	text "thanks"
	done

SceneEriRivalScript:
	playmusic MUSIC_CLAIR
	showemote EMOTE_SHOCK, PLAYER, 15
	opentext
	writetext GoshaHeyYouText
	waitbutton
	closetext
	disappear GOSHAGYM_ERI
	moveobject GOSHAGYM_ERI, 13, 37
	appear GOSHAGYM_ERI
	applymovement GOSHAGYM_ERI, GoshaEriWalkToMorgan
	turnobject PLAYER, UP
	opentext
	writetext GoshaBeatMeText
	waitbutton
	closetext
	applymovement GOSHAGYM_ERI, GoshaEriWalkRight
	opentext
	writetext GoshaNopeText
	waitbutton
	closetext
	applymovement GOSHAGYM_ERI, GoshaEriWalkLeft
	opentext
	writetext GoshaNoWayText
	waitbutton
	closetext
	applymovement GOSHAGYM_ERI, GoshaEriWalkBacktoMorgan
	opentext
	writetext GoshaWeAreRivalsNow
	promptbutton
	closetext
	applymovement GOSHAGYM_ERI, EriWalkOut2
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	disappear GOSHAGYM_ERI
	pause 15
	special FadeInQuickly
	showemote EMOTE_QUESTION, PLAYER, 15
	playmapmusic
	pause 5
	setevent ERI_BECOMES_RIVAL
	setscene SCENE_FIGHT_ERI
	end


EriWalkOut2:
	step RIGHT
	step DOWN
	step DOWN
	step DOWN
	step_end


SceneEriRivalScript2:
	playmusic MUSIC_CLAIR
	showemote EMOTE_SHOCK, PLAYER, 15
	opentext
	writetext GoshaHeyYouText
	waitbutton
	closetext
	disappear GOSHAGYM_ERI
	moveobject GOSHAGYM_ERI, 14, 37
	appear GOSHAGYM_ERI
	applymovement GOSHAGYM_ERI, GoshaEriWalkToMorgan
	turnobject PLAYER, UP
	opentext
	writetext GoshaBeatMeText
	waitbutton
	closetext
	applymovement GOSHAGYM_ERI, GoshaEriWalkRight
	opentext
	writetext GoshaNopeText
	waitbutton
	closetext
	applymovement GOSHAGYM_ERI, GoshaEriWalkLeft
	opentext
	writetext GoshaNoWayText
	waitbutton
	closetext
	applymovement GOSHAGYM_ERI, GoshaEriWalkBacktoMorgan
	opentext
	writetext GoshaWeAreRivalsNow
	promptbutton
	closetext
	applymovement GOSHAGYM_ERI, EriWalkOut
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	disappear GOSHAGYM_ERI
	pause 15
	special FadeInQuickly
	showemote EMOTE_QUESTION, PLAYER, 15
	playmapmusic
	pause 5
	setevent ERI_BECOMES_RIVAL
	setscene SCENE_FIGHT_ERI
	end

GoshaEriWalkToMorgan:
	step DOWN
	step DOWN
	step DOWN
	step_end

GoshaEriWalkRight:
	step RIGHT
	step_end

GoshaEriWalkLeft:
	step LEFT 
	step LEFT
	step_end

GoshaEriWalkBacktoMorgan:
	step RIGHT
	turn_head DOWN
	step_end

EriWalkOut:
	step LEFT
	step DOWN
	step DOWN
	step DOWN
	step_end

	GoshaHeyYouText:
	text "HEY, YOU!!"
	done

	GoshaBeatMeText:
	text "Just who do you"
	line "think you are!?"

	para "You think you can"
	line "just waltz in here"
	cont "beat me and walk"
	cont "out like some big"
	cont "winner?"

	para "NUH-UH!"
	done

	GoshaNopeText:
	text "NOPE!!"
	done 

	GoshaNoWayText:
	text "NO WAY!!!"
	done 

	GoshaWeAreRivalsNow:
	text "Screw this gym"
	line "leader stuff!"

	para "You and I are"
	line "mortal enemies"
	cont "now ya hear!?"

	para "The next time we"
	line "meet you'll be"
	cont "sorry!"
	done

GoshaClefableScript:
	cry CLEFABLE
	opentext
	writetext SassyBitch
	waitbutton
	closetext
	end

SassyBitch:
	text "Clefable gives a"
	line "sassy glare"
	done

EriBattleScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_ERI
	iftrue .FightDone
	writetext GoshaEriSeenText
	waitbutton
	closetext
	showemote EMOTE_BOLT, PLAYER, 15
	opentext
	writetext GoshaEriSeenText2
	closetext
	cry CLEFABLE
	winlosstext GoshaEriWinLossText, 0
	loadtrainer ERI, ERI1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_ERI
	disappear GOSHAGYM_CLEFABLE
	opentext
	writetext GoshaReceivedFogBadge
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_FOGBADGE
	readvar VAR_BADGES
.FightDone
	checkevent EVENT_GOT_TM35_DAZZLINGLEAM
	iftrue .gotDAZZLINGLEAM
	setscene SCENE_BEAT_ERI
	setevent EVENT_BEAT_BEAUTY_LISA
	setevent EVENT_BEAT_BEAUTY_LIA
	setevent EVENT_BEAT_BEAUTY_JESSICA
	setevent EVENT_BEAT_GAMBLER_PIERRE
	setevent EVENT_BEAT_GAMBLER_KARL
	setevent EVENT_BEAT_COOLTRAINERF_GWEN
	setevent EVENT_BEAT_COOLTRAINERM_AARON
	setevent EVENT_BEAT_GENTLEMAN_ALFRED
	setevent EVENT_BEAT_GENTLEMAN_MIGUEL
	writetext GoshaEriBadgeSpeech
	promptbutton
	verbosegiveitem TM_DAZZLINGLEAM
	setevent EVENT_GOT_TM35_DAZZLINGLEAM
	waitbutton
	closetext
	end

.gotDAZZLINGLEAM
	writetext GoshaEriBadgeSpeech
	waitbutton
	closetext
	end

GoshaEriSeenText:
	text "Ohohoho! Ano-"
	line "ther peasant"
	cont "coming to pay"
	cont "tribute?"

	para "..."

	para "Wait, who let"
	line "this wall flower"
	cont "up here."

	para "No matter, you"
	line "pale in comparison"
	cont "to I."
	done

GoshaEriSeenText2:
	text "You think you can"
	line "beat me?"
	
	para "Ha!"

	para "I'd love to see"
	line "you try!"
	done

GoshaEriWinLossText:
	text "..."

	para "..."

	para "..."

	para "..."
	done	

GoshaReceivedFogBadge:
	text "<PLAYER> received"
	line "the Fogbadge!"
	done

GoshaEriBadgeSpeech:
	text "This has to be"
	line "some kind of joke."
	
	para "I'm flawless..."

	para "I'm perfect..."

	para "How can I lose to"
	line "some complete abs-"
	cont "olute NOBODY!!"

	para "Take your STUPID"
	line "TM and get out."
	done

GoshaArcherScript:
	trainer EXECUTIVEM, EXECUTIVEM_1, EVENT_BEAT_ROCKET_EXECUTIVEM_1, ArcherSeenText, ArcherBeatenText, 0, .GetCoinsFromRocket1

.GetCoinsFromRocket1 
	checkevent EVENT_GOT_COINS_FROM_ARCHER
	iffalse .gotcoins
	disappear GOSHAGYM_ARCHER
	disappear GOSHAGYM_ROCKET
	disappear GOSHAGYM_ROCKET2
	end

.gotcoins
	opentext
	writetext ArcherAfterText
	promptbutton 
	givecoins 9999
	waitsfx
	playsound SFX_TRANSACTION
	writetext Received9999CoinsText
	waitbutton 
	closetext
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	disappear GOSHAGYM_ARCHER
	disappear GOSHAGYM_ROCKET
	disappear GOSHAGYM_ROCKET2
	special FadeInQuickly
	setevent EVENT_GOT_COINS_FROM_ARCHER
	end

ArcherSeenText:
	text "Excuse me, may I"
	line "please enjoy my"
	cont "drink in peace?"

	para "Villains? Now, if"
	line "I heard the commo-"
	cont "tion right, you"
	cont "are the one going"
	cont "about taking peo-"
	cont "ples coins."
	
	para "Perhaps justice"
	line "must be served to"
	cont "you!"
	done

ArcherBeatenText:
	text "Kanto, Johto and"
	line "now Etalon... Why"
	cont "am I always stop-"
	cont "ped by a damn kid!"
	done 

ArcherAfterText:
	text "Your name, please?"

	para "..."

	para "Appologies <PLAYER>"
	line "I lost my composure."
	cont "Please, take this"
	cont "as both an apology"
	cont "and a show of good"
	cont "faith."
	done 

Received9999CoinsText:
	text "<PLAYER> received"
	line "9999 coins! Wow!!"

	para "We were hired to"
	line "take back the gym."


	para "However, between"
	line "the spoiled brat's"
	cont "temper tantrum and"
	cont "losing to you, that"
	cont "wont be happening."

	para "Farewell, <PLAYER>"
	line "may we meet again."
	done 


GoshaGruntMScript:
	trainer GRUNTM, GRUNTM_1, EVENT_BEAT_ROCKET_GRUNTM_1, GoshaGruntMSeenText, GoshaGruntMBeatenText, 0, .GetCoinsFromRocket2

.GetCoinsFromRocket2 
	checkevent EVENT_GOT_COINS_FROM_ROCKET
	iffalse .gotcoins
	opentext
	writetext GoshaGruntFAfterText
	waitbutton
	closetext
	end


.gotcoins:
	opentext
	writetext GoshaGruntFAfterText
	promptbutton 
	givecoins 500
	waitsfx
	playsound SFX_TRANSACTION
	writetext Received500CoinsText
	waitbutton 
	closetext
	setevent EVENT_GOT_COINS_FROM_ROCKET
	end

GoshaGruntMSeenText:
	text "Argh! There goes"
	line "another 500!"

	para "Stupid game, even"
	line "Celadon is better."

	para "Huh? What do you"
	line "want twerp."
	done

GoshaGruntMBeatenText:
	text "The streak contin-"
	line "ues."
	done

GoshaGruntMAfterText:
	text "Scram brat before"
	line "I really get mad."
	done

GoshaGruntFScript:
	trainer GRUNTF, GRUNTF_1, EVENT_BEAT_ROCKET_GRUNTF_1, GoshaGruntFSeenText, GoshaGruntFBeatenText, 0, .GetCoinsFromRocket3

.GetCoinsFromRocket3:
	checkevent EVENT_GOT_COINS_FROM_ROCKET2
	iffalse .gotcoins
	opentext
	writetext GoshaGruntFAfterText
	waitbutton
	closetext
	end

.gotcoins:
	opentext
	writetext GoshaGruntFAfterText
	promptbutton 
	givecoins 500
	waitsfx
	playsound SFX_TRANSACTION
	writetext Received500CoinsText
	waitbutton 
	closetext
	setevent EVENT_GOT_COINS_FROM_ROCKET2
	end


GoshaGruntFSeenText:
	text "Hello"
	done

GoshaGruntFBeatenText:
	text "Should've stayed"
	line "in Johto!"
	done

GoshaGruntFAfterText:
	text "Scram kid before"
	line "I really get mad"
	done



GoshaGambler1Script:
	trainer GAMBLER, PIERRE, EVENT_BEAT_GAMBLER_PIERRE, GoshaGamblerSeenText, GoshaGamblerBeatenText, 0, .GetCoinsFromGambler1

.GetCoinsFromGambler1 
	checkevent EVENT_GOT_COINS_FROM_GAMBLER
	iffalse .gotcoins
	turnobject GOSHAGYM_GAMBLER, RIGHT
	opentext
	writetext GoshaGamblerAftertext
	waitbutton
	closetext
	turnobject GOSHAGYM_GAMBLER, UP
	end

.gotcoins:
	turnobject GOSHAGYM_GAMBLER, RIGHT
	opentext
	writetext GoshaGamblerAftertext
	faceplayer
	promptbutton 
	givecoins 1500
	waitsfx
	playsound SFX_TRANSACTION
	writetext Received1500CoinsText
	waitbutton 
	closetext
	setevent EVENT_GOT_COINS_FROM_GAMBLER
	turnobject GOSHAGYM_GAMBLER, UP
	end

GoshaGamblerSeenText:
	text "Woohoo! Lady Luck's"
	line "behind me and this"
	cont "hot babe's on the"
	cont "right. I cant stop"
	cont "winning!"	
	done

GoshaGamblerBeatenText:
	text "You stole all"
	line "of my luck!"
	done

GoshaGamblerAftertext:
	text "B-babe, it was a"
	line "fluke! A Farce!"
	cont "I wont lose again!"
	done

GoshaGambler2Script:
	trainer GAMBLER, PHILIPPE, EVENT_BEAT_GAMBLER_PHILIPPE, GoshaGambler2SeenText, GoshaGambler2BeatenText, 0, .GetCoinsFromGambler2

.GetCoinsFromGambler2 
	checkevent EVENT_GOT_COINS_FROM_GAMBLER2
	iffalse .gotcoins
	opentext
	writetext GoshaGambler2Aftertext
	waitbutton
	closetext
	end

.gotcoins:
	opentext
	writetext GoshaGambler2Aftertext
	faceplayer
	promptbutton 
	givecoins 500
	waitsfx
	playsound SFX_TRANSACTION
	writetext Received500CoinsText
	waitbutton 
	closetext
	setevent EVENT_GOT_COINS_FROM_GAMBLER2
	turnobject GOSHAGYM_GAMBLER, UP
	end

GoshaGambler2SeenText:
	text "Coin goes in."

	para "miss"

	line "Coin goes in.."

	para "miss..."

	line "Argh I'm at my"
	cont "limit!"
	done

GoshaGambler2BeatenText:
	text "I'm going back"
	line "upstairs."
	done

GoshaGambler2Aftertext:
	text "I don't care if"
	line "they call me a"
	cont "loser. The mach-"
	cont "ines here are a"
	cont "scam!"
	done	

GoshaGambler3Script:
	trainer GAMBLER, KARL, EVENT_BEAT_GAMBLER_KARL, GoshaGambler3SeenText, GoshaGambler3BeatenText, 0, .GetCoinsFromGambler3

.GetCoinsFromGambler3
	checkevent EVENT_GOT_COINS_FROM_GAMBLER3
	iffalse .gotcoins
	opentext
	writetext GoshaGambler3Aftertext
	waitbutton
	closetext
	end

.gotcoins:
	opentext
	writetext GoshaGambler3Aftertext
	faceplayer
	promptbutton 
	givecoins 500
	waitsfx
	playsound SFX_TRANSACTION
	writetext Received500CoinsText
	waitbutton 
	closetext
	setevent EVENT_GOT_COINS_FROM_GAMBLER3
	turnobject GOSHAGYM_GAMBLER, UP
	end

GoshaGambler3SeenText:
	text "I won big and"
	line "bought the most"
	cont "expensive #MON"
	cont "money can buy!"
	done

GoshaGambler3BeatenText:
	text "9999 coins down"
	line "the drain!"
	done

GoshaGambler3Aftertext:
	text "Why are Porygon"
	line "SO expesnive, if"
	cont "they cant even"
	cont "beat some kid."
	done	

GoshaGambler4Script:
	trainer GAMBLER, PHILIPPE, EVENT_BEAT_GAMBLER_PHILIPPE, GoshaGambler4SeenText, GoshaGambler4BeatenText, 0, .GetCoinsFromGambler4

.GetCoinsFromGambler4 
	checkevent EVENT_GOT_COINS_FROM_GAMBLER4
	iffalse .gotcoins
	opentext
	writetext GoshaGambler4Aftertext
	waitbutton
	closetext
	end

.gotcoins:
	opentext
	writetext GoshaGambler4Aftertext
	faceplayer
	promptbutton 
	givecoins 500
	waitsfx
	playsound SFX_TRANSACTION
	writetext Received500CoinsText
	waitbutton 
	closetext
	setevent EVENT_GOT_COINS_FROM_GAMBLER4
	turnobject GOSHAGYM_GAMBLER, UP
	end

GoshaGambler4SeenText:
	text "4"
	done

GoshaGambler4BeatenText:
	text "4b"
	done

GoshaGambler4Aftertext:
	text "4c"
	done	


GoshaBeauty1Script:
	trainer BEAUTY, LISA, EVENT_BEAT_BEAUTY_LISA, GoshaBeautySeenText, GoshaBeautyBeatenText, 0, .GetCoinsFromBeauty1

.GetCoinsFromBeauty1 
	checkevent EVENT_GOT_COINS_FROM_BEAUTY
	iffalse .gotcoins
	opentext
	writetext GoshaBeautyAftertext
	waitbutton
	closetext
	end

.gotcoins:
	opentext
	writetext GoshaBeautyAftertext
	faceplayer
	promptbutton 
	givecoins 500
	waitsfx
	playsound SFX_TRANSACTION
	writetext Received500CoinsText
	waitbutton 
	closetext
	setevent EVENT_GOT_COINS_FROM_BEAUTY
	end

GoshaBeautySeenText:
	text "Ugh! Those clothes"	
	line "Who let you in?"
	done

GoshaBeautyBeatenText:
	text "By a... peasant."
	done

GoshaBeautyAftertext:
	text "If you aren't go-"
	line "ing to dress well,"
	cont "at least comb that"
	cont "messy hair!"
	done

GoshaBeauty2Script:
	trainer BEAUTY, LIA, EVENT_BEAT_BEAUTY_LIA, GoshaBeauty2SeenText, GoshaBeauty2BeatenText, 0, .GetCoinsFromBeauty2

.GetCoinsFromBeauty2
	checkevent EVENT_GOT_COINS_FROM_BEAUTY2
	iffalse .gotcoins
	turnobject GOSHAGYM_BEAUTY2, LEFT
	opentext
	writetext GoshaBeauty2Aftertext
	waitbutton
	closetext
	turnobject GOSHAGYM_BEAUTY2, UP
	end

.gotcoins:
	turnobject GOSHAGYM_BEAUTY2, LEFT
	opentext
	writetext GoshaBeauty2Aftertext
	promptbutton 
	givecoins 500
	waitsfx
	playsound SFX_TRANSACTION
	writetext Received500CoinsText
	waitbutton 
	closetext
	setevent EVENT_GOT_COINS_FROM_BEAUTY2
	turnobject GOSHAGYM_BEAUTY2, UP
	end

GoshaBeauty2SeenText:
	text "My brand new boy-"	
	line "friend is loaded."
	cont "A lavish lifestyle"
	cont "awaits me!"
	done

GoshaBeauty2BeatenText:
	text "Find your own you"
	line "harlot."
	done

GoshaBeauty2Aftertext:
	text "Baaaaabe this slag"
	line "is being mean to"
	cont "me. 4000 coins"
	cont "would make me feel"
	cont "so much better."
	done

GoshaBeauty3Script:
	trainer BEAUTY, JESSICA, EVENT_BEAT_BEAUTY_JESSICA, GoshaBeauty3SeenText, GoshaBeauty3BeatenText, 0, .GetCoinsFromBeauty3

.GetCoinsFromBeauty3
	checkevent EVENT_GOT_COINS_FROM_BEAUTY3
	iffalse .gotcoins
	opentext
	writetext GoshaBeauty3Aftertext
	waitbutton
	closetext
	end

.gotcoins:
	opentext
	writetext GoshaBeauty3Aftertext
	promptbutton 
	givecoins 500
	waitsfx
	playsound SFX_TRANSACTION
	writetext Received500CoinsText
	waitbutton 
	closetext
	setevent EVENT_GOT_COINS_FROM_BEAUTY3
	end

GoshaBeauty3SeenText:
	text "Ugh, that creep"
	line "accross the table"
	cont "keeps staring at"
	cont "us."
	done

GoshaBeauty3BeatenText:
	text "Isn't there any"
	line "security here?"
	done

GoshaBeauty3Aftertext:
	text "I wish Eri would"
	line "come down and kick"
	cont "him out already!"
	done



GoshaGentlemanScript:
	trainer GENTLEMAN, EDWARD, EVENT_BEAT_GENTLEMAN_EDWARD, GoshaGentlemanSeenText, GoshaGentlemanBeatenText, 0, .GetCoinsFromGentleman

.GetCoinsFromGentleman
	checkevent EVENT_GOT_COINS_FROM_GENTLEMAN
	iffalse .gotcoins
	opentext
	writetext GoshaGentlemanAftertext
	waitbutton
	closetext
	end

.gotcoins:
	opentext
	writetext GoshaGentlemanAftertext
	promptbutton 
	givecoins 500
	waitsfx
	playsound SFX_TRANSACTION
	writetext Received500CoinsText
	waitbutton 
	closetext
	setevent EVENT_GOT_COINS_FROM_GENTLEMAN
	end

GoshaGentlemanSeenText:
	text "Care for a game,"
	line "lass?"
	done

GoshaGentlemanBeatenText:
	text "Impressive."
	done

GoshaGentlemanAftertext:
	text "Best of luck"
	line "reaching the top"
	cont "floor."
	done


GoshaGentleman2Script:
	trainer GENTLEMAN, MIGUEL, EVENT_BEAT_GENTLEMAN_MIGUEL, GoshaGentleman2SeenText, GoshaGentleman2BeatenText, 0, .GetCoinsFromGentleman

.GetCoinsFromGentleman
	checkevent EVENT_GOT_COINS_FROM_GENTLEMAN2
	iffalse .gotcoins
	opentext
	writetext GoshaGentleman2Aftertext
	waitbutton
	closetext
	end

.gotcoins:
	opentext
	writetext GoshaGentleman2Aftertext
	promptbutton 
	givecoins 500
	waitsfx
	playsound SFX_TRANSACTION
	writetext Received1500CoinsText
	waitbutton 
	closetext
	setevent EVENT_GOT_COINS_FROM_GENTLEMAN2
	end

GoshaGentleman2SeenText:
	text "Those goons up on"
	line "the top floor keep"
	cont "making a ruckus!"
	done

GoshaGentleman2BeatenText:
	text "I can't focus!"
	done

GoshaGentleman2Aftertext:
	text "Come to think of"
	line "it, there was a"
	cont "well dressed man"
	cont "that came just"
	cont "before they did."

	para "There's no way"
	line "they could be to-"
	cont "gether. Right?"
	done



GoshaCoolTrainerFScript:
	trainer COOLTRAINERF, GWEN, EVENT_BEAT_COOLTRAINERF_GWEN, GoshaCooltrainerfSeenText, GoshaCooltrainerfBeatenText, 0, .GetCoinsFromGentleman

.GetCoinsFromGentleman
	checkevent EVENT_GOT_COINS_FROM_COOLTRAINERF
	iffalse .gotcoins
	opentext
	writetext GoshaCooltrainerfAftertext
	waitbutton
	closetext
	end

.gotcoins:
	opentext
	writetext GoshaCooltrainerfAftertext
	promptbutton 
	givecoins 500
	waitsfx
	playsound SFX_TRANSACTION
	writetext Received500CoinsText
	waitbutton 
	closetext
	setevent EVENT_GOT_COINS_FROM_COOLTRAINERF
	end

GoshaCooltrainerfSeenText:
	text "I came here to ba-"
	line "ttle a gym leader."
	
	para "Not spend hours"
	line "collecting coins!"
	done

GoshaCooltrainerfBeatenText:
	text "At least I got to"
	line "battle SOMEBODY."
	done

GoshaCooltrainerfAftertext:
	text "Hope those coins"
	line "help."

	para "At least somebody"
	line "will get to battle"
	cont "Eri."
	done

GoshaCoolTrainerMScript:
	trainer COOLTRAINERM, AARON, EVENT_BEAT_COOLTRAINERM_AARON, GoshaCooltrainermSeenText, GoshaCooltrainermBeatenText, 0, .GetCoinsFromGentleman

.GetCoinsFromGentleman
	checkevent EVENT_GOT_COINS_FROM_COOLTRAINERM
	iffalse .gotcoins
	opentext
	writetext GoshaCooltrainermAftertext
	waitbutton
	closetext
	end

.gotcoins:
	opentext
	writetext GoshaCooltrainermAftertext
	promptbutton 
	givecoins 500
	waitsfx
	playsound SFX_TRANSACTION
	writetext Received500CoinsText
	waitbutton 
	closetext
	setevent EVENT_GOT_COINS_FROM_COOLTRAINERM
	end

GoshaCooltrainermSeenText:
	text "The Gym leader"
	line "lost to some pro"
	cont "trainer."
	
	para "Now she's refusing"
	line "challenges without"
	cont "paying her tribute"

	para "What a baby!"
	done

GoshaCooltrainermBeatenText:
	text "Glad I stayed on"
	line "the first floor."
	done

GoshaCooltrainermAftertext:
	text "You'll go further"
	line "than I will here."

	para "Try getting coins"
	line "out of all these"
	cont "gambling addicts."
	done


Received500CoinsText:
	text "<PLAYER> received"
	line "500 coins!"
	done

Received1500CoinsText:
	text "<PLAYER> received"
	line "1500 coins!"
	done

Received2000CoinsText:
	text "<PLAYER> received"
	line "2000 coins! Golly!"

	para "Now beat it before"
	line "ruin this for me"
	cont "too!"
	done


GoshaGymSlotsMachineScript:
	random 6
	ifequal 0, GoshaGymLuckySlotsMachineScript
	refreshscreen
	setval FALSE
	special SlotMachine
	closetext
	end

GoshaGymLuckySlotsMachineScript:
	refreshscreen
	setval TRUE
	special SlotMachine
	closetext
	end

GoshaGymCardFlipMachineScript:
	refreshscreen
	special CardFlip
	closetext
	end


GoshaGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 13, 43, GOSHA, 3
    warp_event 14, 43, GOSHA, 3

	def_coord_events
	coord_event 13, 29, SCENE_PAY_GUARD, ScenePayGuard1Script
	coord_event 14, 29, SCENE_PAY_GUARD, ScenePayGuard1Script
	coord_event 21, 21, SCENE_PAY_GUARD2, ScenePayGuard2Script
	coord_event 22, 21, SCENE_PAY_GUARD2, ScenePayGuard2Script
	coord_event 21, 13, SCENE_PAY_GUARD3, ScenePayGuard3Script
	coord_event 22, 13, SCENE_PAY_GUARD3, ScenePayGuard3Script
	coord_event 13, 41, SCENE_BEAT_ERI, SceneEriRivalScript
	coord_event 14, 41, SCENE_BEAT_ERI, SceneEriRivalScript2

	def_bg_events

	bg_event 25, 31, BGEVENT_READ, GoshaGymSlotsMachineScript
	bg_event 23, 31, BGEVENT_READ, GoshaGymSlotsMachineScript
	bg_event 24, 31, BGEVENT_READ, GoshaGymSlotsMachineScript
	bg_event 25, 31, BGEVENT_READ, GoshaGymSlotsMachineScript
	bg_event 23, 39, BGEVENT_READ, GoshaGymSlotsMachineScript
	bg_event 20, 39, BGEVENT_READ, GoshaGymSlotsMachineScript
	bg_event 21, 39, BGEVENT_READ, GoshaGymSlotsMachineScript
	bg_event 20, 31, BGEVENT_READ, GoshaGymLuckySlotsMachineScript
	bg_event 21, 31, BGEVENT_READ, GoshaGymLuckySlotsMachineScript
	bg_event  6, 38, BGEVENT_READ, GoshaGymCardFlipMachineScript
	bg_event  7, 38, BGEVENT_RIGHT, GoshaGymCardFlipMachineScript
	bg_event  7, 18, BGEVENT_READ, GoshaGymCardFlipMachineScript
	bg_event  6, 18, BGEVENT_READ, GoshaGymCardFlipMachineScript
	bg_event  9, 22, BGEVENT_READ, GoshaGymCardFlipMachineScript
	bg_event  8, 22, BGEVENT_READ, GoshaGymCardFlipMachineScript
	bg_event  7, 32, BGEVENT_READ, GoshaGymCardFlipMachineScript
	bg_event  8, 14, BGEVENT_READ, GoshaGymCardFlipMachineScript
	bg_event  9, 14, BGEVENT_READ, GoshaGymCardFlipMachineScript
	bg_event 22, 39, BGEVENT_READ, GoshaGymCardFlipMachineScript

    def_object_events
	object_event 22,  7, SPRITE_CLEFABLE, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_OW_PINK, OBJECTTYPE_SCRIPT, 0, GoshaClefableScript, EVENT_BEAT_ERI
	object_event 21,  7, SPRITE_ERI, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_OW_PINK, OBJECTTYPE_SCRIPT, 0, EriBattleScript, ERI_BECOMES_RIVAL
	object_event  4,  6, SPRITE_ARCHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_OW_BLUE, OBJECTTYPE_TRAINER, 0, GoshaArcherScript, EVENT_GOT_COINS_FROM_ARCHER
	object_event 12,  5, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_OW_PINK, OBJECTTYPE_TRAINER, 0, GoshaGruntMScript, EVENT_GOT_COINS_FROM_ARCHER
	object_event 13,  5, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_OW_PINK, OBJECTTYPE_TRAINER, 0, GoshaGruntFScript, EVENT_GOT_COINS_FROM_ARCHER
	object_event  6, 19, SPRITE_GAMBLER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_OW_BROWN, OBJECTTYPE_TRAINER, 0, GoshaGambler1Script, -1
	object_event 22, 32, SPRITE_GAMBLER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_OW_GREEN, OBJECTTYPE_TRAINER, 0, GoshaGambler2Script, -1
	object_event  6, 33, SPRITE_GAMBLER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_OW_BLUE, OBJECTTYPE_SCRIPT, 0, GoshaGambler3Script, -1
	object_event  8, 23, SPRITE_GAMBLER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_OW_PINK, OBJECTTYPE_TRAINER, 0, GoshaGambler4Script, -1
	object_event 13, 23, SPRITE_BEAUTY, SPRITEMOVEDATA_SPINRANDOM_FAST, 3, 0, -1, -1, PAL_OW_BLUE, OBJECTTYPE_TRAINER, 3, GoshaBeauty1Script, -1
	object_event  7, 19, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_OW_BLUE, OBJECTTYPE_TRAINER, 0, GoshaBeauty2Script, -1
	object_event  9, 32, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_OW_GREEN, OBJECTTYPE_TRAINER, 0, GoshaBeauty3Script, -1
	object_event  6, 39, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_OW_BROWN, OBJECTTYPE_TRAINER, 0, GoshaGentlemanScript, -1
	object_event  9, 15, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_OW_BLUE, OBJECTTYPE_TRAINER, 0, GoshaGentleman2Script, -1
	object_event 18, 24, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_SPINRANDOM_FAST, 3, 0, -1, -1, PAL_OW_RED, OBJECTTYPE_TRAINER, 3, GoshaCoolTrainerFScript, -1
	object_event 14, 36, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_SPINRANDOM_FAST, 3, 0, -1, -1, PAL_OW_RED, OBJECTTYPE_TRAINER, 3, GoshaCoolTrainerMScript, -1
