	object_const_def
	const OMEKATADOJO_KENJI
	const OMEKATADOJO_MACHAMP
	const OMEKATADOJO_BOULDER1
	const OMEKATADOJO_BOULDER2
	const OMEKATADOJO_BLACKBELT1
	const OMEKATA_DOJO_ALAKAZAM
	const OMEKATADOJO_BLACKBELT2
	const OMEKATA_DOJO_HITMONCHAN
	const OMEKATADOJO_BATTLGIRL1
	const OMEKATA_DOJO_HITMONLEE
	const OMEKATADOJO_BATTLEGIRL2
	const OMEKATA_DOJO_LOPUNNY
	const OMEKATADOJO_TROPHY1
	const OMEKATADOJO_TROPHY2
	

OmekataDojoIndoor_MapScripts:
	def_scene_scripts

	def_callbacks

OmekataDojoKenjiScript:
	faceplayer
	checkevent EVENT_BEAT_TSUBAKI
	iftrue .GiveStrength
	checkevent EVENT_BEAT_KENJI
	iftrue .GiveSunScreen
	;checkevent EVENT_BEAT_BLACKBELT_HONDA
	;iffalse .IgnoresYou
	;checkevent EVENT_BEAT_BLACKBELT_RIKI
	;iffalse .IgnoresYou
	;checkevent EVENT_BEAT_BATTLEGIRL_SAM
	;iffalse .IgnoresYou
	;checkevent EVENT_BEAT_BATTLEGIRL_KYOKO
	;iffalse .IgnoresYou
	opentext
	writetext OmekataDojoKenji1Text
	waitbutton
	closetext
	turnobject OMEKATADOJO_KENJI, UP
	playsound SFX_MILK_DRINK
	showemote EMOTE_PISSED, OMEKATADOJO_KENJI, 30
	opentext
	writetext OmekataDojoKenji2Text
	waitbutton
	closetext
	turnobject OMEKATADOJO_KENJI, DOWN
	opentext
	writetext OmekataDojoKenji3Text
	waitbutton
	closetext
	playsound SFX_GLASS_TING_2
	showemote EMOTE_SHOCK, PLAYER, 30
	opentext
	writetext OmekataDojoKenji4Text
	waitbutton
	closetext
	turnobject OMEKATADOJO_KENJI, RIGHT
	applymovement OMEKATADOJO_BOULDER1, OmekataDojoKenjiBreaksBoulder
	playsound SFX_GLASS_TING_2
	showemote EMOTE_SHOCK, PLAYER, 30
	playsound SFX_JUMP_OVER_LEDGE
	applymovement PLAYER, MorganJumpBack
	opentext
	writetext OmekataDojoKenjiAitsText
	waitbutton
	closetext
	applymovement OMEKATADOJO_BOULDER1, OmekataDojoKenjiBreaksBoulderFinish
	playsound SFX_STRENGTH
	earthquake 80
	disappear OMEKATADOJO_BOULDER1
	pause 30
	cry MACHAMP
	applymovement OMEKATADOJO_BOULDER2, OmekataDojoMachampBreaksBoulder
	playsound SFX_STRENGTH
	earthquake 80
	disappear OMEKATADOJO_BOULDER2
	pause 30
	playsound SFX_FORESIGHT
	showemote EMOTE_SWEAT, PLAYER, 30
	turnobject OMEKATADOJO_KENJI, DOWN
	opentext
	writetext OmekataDojoKenji5Text
	waitbutton
	closetext
	winlosstext OmekataDojoKenjiBeatenText, OmekataDojoKenjiAitsText
	loadtrainer SENSEI, KENJI
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_KENJI
	turnobject OMEKATADOJO_KENJI, RIGHT
	pause 10
	turnobject OMEKATADOJO_KENJI, LEFT 
	pause 10
	turnobject OMEKATADOJO_KENJI, DOWN

.GiveSunScreen
	checkevent EVENT_GOT_SUNSCREEN
	iftrue .AlreadyGotSunScreen
	opentext
	writetext OmekataDojoKenjiAitsText
	waitbutton 
	verbosegiveitem SUNSCREEN
	waitbutton
	closetext
	setevent EVENT_GOT_SUNSCREEN
	end 

.GiveStrength
	checkevent EVENT_GOT_HM04_STRENGTH
	iftrue .AlreadyGotStrength
	opentext
	writetext OmekataDojoKenjiAitsText
	waitbutton 
	verbosegiveitem HM_STRENGTH
	waitbutton
	closetext
	setevent EVENT_GOT_HM04_STRENGTH
	end 
	
.AlreadyGotSunScreen:
.AlreadyGotStrength:
	checkevent EVENT_GOT_SUNSCREEN
	;iftrue .FightDone
	opentext
	writetext OmekataDojoKenjiAitsText

	clearevent EVENT_HIDE_ALAKAZAM
	clearevent EVENT_HIDE_LOPUNNY
	clearevent EVENT_HIDE_HITMONCHAN
	clearevent EVENT_HIDE_HITMONLEE
	waitbutton



.IgnoresYou
	opentext
	writetext OmekataDojoKenjiIsIgnoringMeText
	waitbutton
	closetext
	end

OmekataDojoKenjiBreaksBoulder:
	set_sliding
	big_step LEFT
	big_step UP
	step_end 

OmekataDojoKenjiBreaksBoulderFinish:
	fast_jump_step RIGHT
	remove_sliding
	step_end

OmekataDojoMachampBreaksBoulder:
	set_sliding
	big_step RIGHT
	big_step UP
	fast_jump_step LEFT
	remove_sliding
	step_end

MorganJumpBack:
	fix_facing
	jump_step DOWN
	remove_fixed_facing
	step_end

OmekataDojoKenji1Text:
	text "..."

	para "You're saying all"
	line "my students were"

	para "defeated by some"
	line "SCRAWNY GIRL?"
	done

OmekataDojoKenji2Text:
	text "PATHETHIC EACH AND"
	line "EVERY ONE OF YOU!"
	done 

OmekataDojoKenji3Text:
	text "IDENTIFY YOURSELF"
	line "THIS INSTANT!"
	done 

OmekataDojoKenji4Text:
	text "<PLAYER>!"

	para "DO YOU THINK YOU"
	line "CAN STAND UP TO MY" 
	cont "MIGHT?"

	para "BEHOLD!"

	done

OmekataDojoKenji5Text:
	text "WHAT?"
	line "IT HAS NOTHING TO"
	cont "DO WITH POKéMON?"

	para "FALSE!"

	para "STRONG BODY," 
	line "STRONG MIND,"
	cont "STRONG POKéMON!"

	para "YOU SHALL SEE"
	line "THROUGH BATTLE!"

	para "ORYA!"
	
	done

OmekataDojoKenjiBeatenText:
	text "I..."
	line "I..."

	para "I kneel..."
	done


OmekataDojoKenjiAitsText:
	text "AITS!"
	done 

OmkeataDojoKenjiAfterText:
	text "I have something"
	line "to ask of you."

OmekataDojoKenjiIsIgnoringMeText:
	text "..."

	para "I think he's igno-"
	line "ring me."
	done

OmekataDojoKenjiAfter2Text:
	text "<PLAYER>"

	para "Your victory over"
	line "the witch of"

	para "Omekata Temple has"
	line "breathed new life"
	cont "into us!"

	para "We shall continue"
	line "our training and"
	cont "one day overtake"
	cont "them!"

	para "AITS!"
	done 

OmekataDojoMachampScript:
	refreshscreen
	pokepic MACHAMP
	cry MACHAMP
	waitbutton
	closepokepic
	opentext
	writetext MachampThinksYouSuckText
	waitbutton
	closetext
	end

MachampThinksYouSuckText:
	text "Machamp appears"
	line "to think I'm not"
	cont "worth his time."
	done

OmekataDojoBoulder:
	jumpstd StrengthBoulderScript

TrainerBlackbeltHonda:
	trainer BLACKBELT_T, HONDA, EVENT_BEAT_BLACKBELT_HONDA, BlackbeltHondaSeenText, BlackbeltHondaBeatenText, 0, .Script

.Script
	disappear OMEKATA_DOJO_ALAKAZAM
	endifjustbattled
	opentext
	writetext BlackbeltHondaAfterText
	waitbutton
	closetext
	end

BlackbeltHondaSeenText:
	text "I FEAR NOT THE"
	line "PSYCHIC AND GHOST"
	cont "TYPE POKéMON!"

	para "ASA!"
	done

BlackbeltHondaBeatenText:
	text "Perhaps it is not"
	line "#mon types I"
	cont "should be fearing."
	done 

BlackbeltHondaAfterText:
	text "Belive it or not,"
	line "I used to be a"
	
	para "Psychic at Omekata"
	line "Temple, until I"
	cont "met Sensei Kenji."

	para "He taught me to be"
	line "a real bad-ass!"
	done

OmekataDojoAlakazamScript:
	refreshscreen
	pokepic ALAKAZAM
	cry ALAKAZAM
	waitbutton
	closepokepic
	playsound SFX_THUNDER
	waitsfx
	playsound SFX_THUNDER
	opentext
	writetext AlakazamIsSwingingItsFistsText
	waitbutton
	closetext
	end

AlakazamIsSwingingItsFistsText:
	text "Alakazam is swing-"
	line "ing its electric"
	cont "coated fists."
	done

TrainerBlackbeltRiki:
	trainer BLACKBELT_T, RIKI, EVENT_BEAT_BLACKBELT_RIKI, BlackbeltRikiSeenText, BlackbeltRikiBeatenText, 0, .Script

.Script
	endifjustbattled
	opentext
	writetext BlackbeltRikiAfterText
	waitbutton
	closetext
	end

BlackbeltRikiSeenText:
	text "INTRUDER!"

	para "YOU DARE INTERUPT"
	line "US DURING OUR"
	cont "TRAINING!?"

	para "AIYAH!"
	done 

BlackbeltRikiBeatenText:
	text "That broke more"
	line "than my concen-"
	cont "tration..."
	done

BlackbeltRikiAfterText:

	text "If you seek audi-"
	line "ence with Sensei"

	para "Kenji, you must"
	line "prove yourself by"
	cont "defeating the rest"
	cont "of us."
	done

OmekataDojoHitmonchanScript:
	refreshscreen
	pokepic HITMONCHAN
	cry HITMONCHAN
	waitbutton
	closepokepic
	playsound SFX_MEGA_PUNCH
	waitsfx
	playsound SFX_MEGA_PUNCH
	opentext
	writetext HitmonchanPunchesFastText
	waitbutton
	closetext
	end

HitmonchanPunchesFastText:
	text "Hitmonchan's pun-"
	line "ches are fast as"
	cont "lightning!"
	done





TrainerBattlegirlSam:
	trainer BATTLEGIRL, SAM, EVENT_BEAT_BATTLEGIRL_SAM, BattlegirlSamSeenText, BattlegirlSamBeatenText, 0, .Script

.Script
	checkevent EVENT_BEAT_KENJI
	iftrue .BeatKenji
	disappear OMEKATA_DOJO_HITMONLEE
	endifjustbattled
	opentext
	writetext BattlegirlKyokoAfterText
	waitbutton
	closetext
	end

.BeatKenji
	opentext
	writetext BattlegirlSamAfterText
	waitbutton
	closetext
	end


BattlegirlSamSeenText:
	text ""

	para "SAEAH!"
	done

BattlegirlSamBeatenText:
	text "Though you appear"
	line "weak your #mon"
	cont "are mighty!"
	done


BattlegirlSamAfterText:
	text "Once we complete"
	line "our training,"

	para "Those wimps at"
	line "Omekata Temple"

	para "won't know what hit"
	line "them!"
	done

OmekataDojoHitmonleeScript:
	refreshscreen
	pokepic HITMONLEE
	cry HITMONLEE
	waitbutton
	closepokepic
	playsound SFX_MEGA_KICK
	waitsfx
	playsound SFX_MEGA_KICK
	opentext
	writetext HitmonleeKicksText
	waitbutton
	closetext
	end

HitmonleeKicksText:
	text "Hitmonlee's kicks"
	line "have the strength"
	cont "of a Tauros!"
	done

TrainerBattlegirlKyoko:
	trainer BATTLEGIRL, KYOKO, EVENT_BEAT_BATTLEGIRL_KYOKO, BattlegirlKyokoSeenText, BattlegirlKyokoBeatenText, 0, .Script

.Script
	checkevent EVENT_BEAT_KENJI
	iftrue .BeatKenji
	disappear OMEKATA_DOJO_LOPUNNY
	endifjustbattled
	opentext
	writetext BattlegirlKyokoAfterText
	waitbutton
	closetext
	end

.BeatKenji
	opentext
	writetext BattlegirlKyokoBeatKenjiText
	waitbutton
	closetext
	end

BattlegirlKyokoSeenText:
	text "BAHAHA!"
	
	para "THOSE TWIG-LIKE"
	line "ARMS AND LEGS"

	para "STAND NO CHANCE"
	line "AGAINST ME!"

	para "ORA ORA!"
	done

BattlegirlKyokoBeatenText:
	text "You #mon on"
	line "the other hand..."
	done

BattlegirlKyokoAfterText:
	text "You should totally"
	line "join our dojo to"
	cont "build yourself up!"

	para "Don't you want to"
	line "be strong like"
	cont "your #mon?"
	done 

BattlegirlKyokoBeatKenjiText:
	text "No way! You beat"
	line "Kenji!?"

	para "Say... How 'bout"
	line "you train me in"

	para "#mon battles"
	line "and I'll teach you"
	cont "martial arts?"
	done 

OmekataDojoLopunnyScript:
	refreshscreen
	pokepic LOPUNNY
	cry LOPUNNY
	waitbutton
	closepokepic
	playsound SFX_JUMP_OVER_LEDGE	
	applymovement OMEKATA_DOJO_LOPUNNY, OmekataDojoHopDown
	playsound SFX_JUMP_KICK
	applymovement OMEKATA_DOJO_LOPUNNY, OmekataDojoHopUp
	opentext
	writetext LopunnyJumpKickingText
	waitbutton
	closetext
	end

LopunnyJumpKickingText:
	text "Lopunny's jump"
	line "kicks are sky"
	cont "high!"
	done

OmekataDojoHopDown:
	jump_step DOWN
	step_end

OmekataDojoHopUp:
	jump_step UP
	step_end




OmekataDojoIndoor_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7, 17, OMEKATA_DOJO, 1
    warp_event  8, 17, OMEKATA_DOJO, 2


	def_coord_events

	def_bg_events
	

	def_object_events
	object_event  8,  7, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_OW_BLUE, OBJECTTYPE_SCRIPT, 0, OmekataDojoKenjiScript, -1
	object_event  7,  7, SPRITE_MACHAMP, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_OW_BLUE, OBJECTTYPE_SCRIPT, 0, OmekataDojoMachampScript, -1
	object_event  9,  7, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OmekataDojoBoulder, -1
	object_event  6,  7, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OmekataDojoBoulder, -1
	object_event  1, 12, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_OW_BROWN, OBJECTTYPE_TRAINER, 0, TrainerBlackbeltHonda, -1
	object_event  1, 11, SPRITE_ALAKAZAM, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_OW_BROWN, OBJECTTYPE_SCRIPT, 0, OmekataDojoAlakazamScript, EVENT_HIDE_ALAKAZAM
	object_event 14,  4, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_OW_BROWN, OBJECTTYPE_TRAINER, 0, TrainerBlackbeltRiki, -1
	object_event 15,  4, SPRITE_HITMONCHAN, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_OW_BROWN, OBJECTTYPE_SCRIPT, 0, OmekataDojoHitmonchanScript, EVENT_HIDE_HITMONCHAN
	object_event  1,  4, SPRITE_TAMER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_OW_BROWN, OBJECTTYPE_TRAINER, 0, TrainerBattlegirlSam, -1
	object_event  0,  4, SPRITE_HITMONLEE, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_OW_BROWN, OBJECTTYPE_SCRIPT, 0, OmekataDojoHitmonleeScript, EVENT_HIDE_HITMONLEE
	object_event 14, 12, SPRITE_TAMER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_OW_BROWN, OBJECTTYPE_TRAINER, 0, TrainerBattlegirlKyoko, -1
	object_event 14, 11, SPRITE_LOPUNNY, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_OW_BROWN, OBJECTTYPE_SCRIPT, 0, OmekataDojoLopunnyScript, EVENT_HIDE_LOPUNNY
	object_event  8,  2, SPRITE_GOLD_TROPHY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, -1, OBJECTTYPE_SCRIPT, 0, -1, -1
	object_event  7,  2, SPRITE_GOLD_TROPHY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, -1, OBJECTTYPE_SCRIPT, 0, -1, -1

