	object_const_def
	const MORGAN_HOUSE_1F_GRAMPS
	const MORGAN_HOUSE_1F_GROWLITHE

MorganHouse1F_MapScripts:
	def_scene_scripts
	scene_script .DummyScene0 ; SCENE_WITH_MORGAN_GRAMPS
	scene_script .DummyScene1 ; SCENE_WITH_MORGAN_GRAMPS_PART2
	scene_script .DummyScene2 ; SCENE_WITH_MORGAN_GRAMPS_NOTHING

	def_callbacks

.DummyScene0:
	end

.DummyScene1:
	end

.DummyScene2:
	end

TalkToMorganGrampsOneScript:
	turnobject MORGAN_HOUSE_1F_GRAMPS, UP
	showemote EMOTE_SHOCK, MORGAN_HOUSE_1F_GRAMPS, 15
	opentext
	writetext WakeUpGrampsText
	waitbutton
	closetext
	applymovement MORGAN_HOUSE_1F_GRAMPS, GrampsWalksUpToMorganOne
	opentext
	writetext MorganGrampsText
	waitbutton
	closetext
	applymovement MORGAN_HOUSE_1F_GRAMPS, GrampsWalksUpToMorganTwo
	opentext 
	writetext GrampsWorriedText
	waitbutton
	closetext
	applymovement MORGAN_HOUSE_1F_GRAMPS, GrampsLeavingMovementOne
	showemote EMOTE_QUESTION, PLAYER, 15
	setscene SCENE_WITH_MORGAN_GRAMPS_PART2
	end

WakeUpGrampsText:
	text "<PLAYER> oh you're"
	line "up and finally"
	cont "decided to come"
	cont "down!"
	done
	
MorganGrampsText:
    text "I don't"
	line "think I've seen you"
	cont "in days!"
	cont "Did you get a call"
	cont "from grandma? She"
	cont "went out a few"
	cont "hours ago and sti-"
	cont "ll hasn't come back"
	cont "or even called!"
	done

MorganGrampsWorriedText:
	text "I'm beginning to"
	line "worry..."
	done
	
TalkToGrampsAfterRalts:
	faceplayer
	checkevent EVENT_GOT_GROWLITHE
	iftrue .GrampsBackBroke
	checkevent EVENT_GOT_RALTS
	iffalse .GrandpaWorried
	checkevent EVENT_RETURN_GRAMPS_GROWLITHE
	iftrue .GrampsCatchRaltsScript
	opentext
	writetext GrampsHealText
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
	end

.GrampsBackBroke
	opentext
	writetext TalkToGrampsBackBrokeText
	waitbutton
	closetext
	end


.GrandpaWorried
	opentext 
	writetext GrampsWorriedText
	waitbutton
	closetext
	end

.GrampsCatchRaltsScript
	opentext 
	writetext GiveGrowlitheText
	special ReturnHoundour
	ifequal GRAMPS_GROWLITHE_WRONG_MON, .wrong
	clearevent EVENT_RETURN_GRAMPS_GROWLITHE
	clearevent EVENT_GRAMPS_GIVE_GROWLITHE
	appear MORGAN_HOUSE_1F_GROWLITHE, 8, 1
	writetext TalktoGrampsAfterRaltsText
	waitbutton
	closetext
	setmapscene ROUTE_48N, SCENE_MORGAN_FIRST_FIGHT
	end	

.wrong
	writetext GrampsWrongMonText
	waitbutton 
	closetext
	end

GrampsWrongMonText:
	text "Morgan that's not"
	line "Growlithe...."
	done

GrampsWorriedText:
	text "I'm getting worr-"
	line "ied"
	done

GrampsHealText:
	text "<PLAYER> you and"
	line "your #MON look"
	cont "tired. Take a"
	cont "quick nap to"
	cont "refresh."
	done

TalkToGrampsBackBrokeText:
	text "I would go myself"
	line "but my back is"
	cont "killing me I would"
	cont "not make it very"
	cont "far..."
	cont "Ronald, try to be"
	cont "nice with <PLAYER>"
	done

TalktoGrampsAfterRaltsText:
	text "Oh no! Growlithe"
	line "is in terrible" 
	cont "condition! What"
	cont "happened?"
	cont "..."
	cont "..."
	cont "I see."
	cont "<PLAYER> I'm"
	cont "afraid we dont"
	cont "have much of a"
	cont "choice take Ralts"
	cont "and go to the Fore"
	cont "st. I know you and"
	cont "#MON don't usu"
	cont "-ally get along."
	cont "But I think this"
	cont "could be good for"
	cont "for you. Ralts"
	cont "seems very fond of"
	cont "you."
	done


GrampsWalksUpToMorganOne:
	slow_step UP
	slow_step LEFT
	slow_step LEFT
	slow_step LEFT
	slow_step LEFT
	slow_step UP
	slow_step UP
	step_end

GrampsWalksUpToMorganTwo:
	slow_step DOWN
	slow_step RIGHT
	slow_step RIGHT
	step_end

GrampsLeavingMovementOne:
	slow_step DOWN
	slow_step DOWN
	slow_step RIGHT
	slow_step RIGHT
	step_end

TalkToMorganGrampsTwoScriptEast:
	applymovement MORGAN_HOUSE_1F_GRAMPS, GrampsWalksUpToMorganTwoEast
	turnobject PLAYER, UP
	opentext
	writetext MorganLeavingHouseText
	waitbutton
	closetext
	special GiveHoundour
	setevent EVENT_GOT_GROWLITHE
	setevent EVENT_GRAMPS_GIVE_GROWLITHE
	clearevent EVENT_GRAMPS_BACK_BROKE
	disappear MORGAN_HOUSE_1F_GROWLITHE
	setscene SCENE_WITH_MORGAN_GRAMPS_NOTHING
	end

TalkToMorganGrampsTwoScriptWest:
	applymovement MORGAN_HOUSE_1F_GRAMPS, GrampsWalksUpToMorganTwoWest
	turnobject PLAYER, UP
	opentext
	writetext MorganLeavingHouseText
	waitbutton
	closetext
	special GiveHoundour
	setevent EVENT_GOT_GROWLITHE
	setevent EVENT_GRAMPS_GIVE_GROWLITHE
	disappear MORGAN_HOUSE_1F_GROWLITHE
	setscene SCENE_WITH_MORGAN_GRAMPS_NOTHING
	end

GrampsWalksUpToMorganTwoEast:
	slow_step LEFT
	slow_step LEFT 
	slow_step DOWN
	slow_step DOWN
	step_end

GrampsWalksUpToMorganTwoWest:
	slow_step LEFT 
	slow_step DOWN
	slow_step DOWN
	step_end

MorganLeavingHouseText:
	text "Heading out"
	line "<PLAYER>? Would you"
	cont "be able to look"
	cont "for your grandma?"
	cont "Take Ronald with"
	cont "you incase you run"
	cont "into any dangerous"
	cont "wild #MON"
	done

TalkToGrowlitheScript:
	opentext
	writetext TalkToRonald
	waitbutton
	closetext
	end

TalkToRonald:
    cry GROWLITHE
	done

GiveGrowlitheText:
	text "Whats wrong <PLAYER>?"
	done

MorganHouse1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  9, ERABLE_TOWN, 1
	warp_event  3,  9, ERABLE_TOWN, 1
	warp_event  0,  0, MORGAN_HOUSE_2F, 1

	def_coord_events
	coord_event  0,  1, SCENE_WITH_MORGAN_GRAMPS, TalkToMorganGrampsOneScript
	coord_event  2,  8, SCENE_WITH_MORGAN_GRAMPS_PART2, TalkToMorganGrampsTwoScriptEast
	coord_event  3,  8, SCENE_WITH_MORGAN_GRAMPS_PART2, TalkToMorganGrampsTwoScriptWest
	
	def_bg_events

	def_object_events
	object_event  4,  5, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TalkToGrampsAfterRalts, -1
	object_event  8,  1, SPRITE_GROWLITHE, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TalkToGrowlitheScript, EVENT_GRAMPS_GIVE_GROWLITHE
