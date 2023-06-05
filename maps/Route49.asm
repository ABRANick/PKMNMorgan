	object_const_def
	const ROUTE49_BUG_CATCHER_ONE
	const ROUTE49_YOUNGSTER
	const ROUTE49_FISHER
	const ROUTE49_BUG_CATCHER_TWO
	const ROUTE49_LASS
	const ROUTE49_BUG_CATCHER_THREE
	const ROUTE49_OFFICER

Route49_MapScripts:
	def_scene_scripts 
	scene_script .DummyScene0 ;SCENE_ROUTE_49_GUARD
	scene_script .DummyScene1 ;SCENE_ROUTE_49_BUG_CATCHER
	scene_script .DummyScene2 ;SCENE_ROUTE_49_NOTHING

	def_callbacks

.DummyScene0:
	end

.DummyScene1:
	end

.DummyScene2:
	end


BugCatcherOneRoute49SeenText:
	text "Girls at school"
	line "wont talk to me."
	cont "They say my bug"
	cont "type #MON"
	cont "creep them out."
	cont "You don't think"
	cont "they're creepy do"
	cont "you?"
	done
	
BugCatcherOneRoute49BeatenText:
	text "Maybe it's cause"
	line "I lose most of my"
	cont "battles."
	done
	
BugCatcherOneRoute49AfterText:
	text "To hell with them!"
	line "Bug #MON"
	cont "are great!"
	done

YoungsterRoute49Script:
	trainer YOUNGSTER, JOEY1, EVENT_BEAT_YOUNGSTER_JOEY, YoungsterRoute49SeenText, YoungsterRoute49BeatenText, 0, .Script

.Script
	endifjustbattled
	opentext
	writetext YoungsterRoute49AfterText
	waitbutton
	closetext
	end

YoungsterRoute49SeenText:
	text "The guard wont let"
	line "me pass something"
	cont "about the forest?"
	cont "I don't care!"
	cont "I wanna go to"
	cont "the Safari damn"
	cont "it!"
	done
	
YoungsterRoute49BeatenText:
	text "Could this day get"
	line "any worse?"
	done
	
YoungsterRoute49AfterText:
	text "Guess I'll ask my"
	line "bro if I could"
	cont "borrow his bike."
	cont "The bike route"
	cont "is faster anyway."
	done

FisherRoute49Script:
	trainer FISHER, JUSTIN, EVENT_BEAT_FISHER_JUSTIN, FisherRoute49SeenText, FisherRoute49BeatenText, 0, .Script

.Script
	endifjustbattled
	opentext
	writetext FisherRoute49AfterText
	waitbutton
	closetext
	end

FisherRoute49SeenText:
	text "Hoho! Freshly"
	line "caught fish fer"
	cont "a freshly earned"
	cont "win"
	done
	
FisherRoute49BeatenText:
	text "Aaargh stupid!"
	line "Quit yer floppin'"
	cont "around!"
	done
	
FisherRoute49AfterText:
	text "I needa get me a"
	line "better fishin'"
	cont "rod. It's just"
	cont "Magikarp n' Feebas"
	cont "with this here"
	cont "Old Rod."
	done


BugCatcherTwoRoute49SeenText:
	text "Nyohohoho!"
	line "The Beedrill"
	cont "uprising is upon"
	cont "us! You shall"
	cont "fall victim next!"
	done
	
BugCatcherTwoRoute49BeatenText:
	text "N-nyo..ho?"
	done
	
BugCatcherTwoRoute49AfterText:
	text "Ok, ok... I got"
	line "a little carried"
	cont "away."
	done


LassRoute49Script:
	trainer LASS, SHANNON2, EVENT_BEAT_LASS_SHANNON2, LassRoute49SeenText, LassRoute49BeatenText, 0, .Script

.Script
	endifjustbattled
	opentext
	writetext LassRoute49AfterText
	waitbutton
	closetext
	end

LassRoute49SeenText:
	text "Eep!"
	done
	
LassRoute49BeatenText:
	text "Oh thank goodness!"
	line "Don't scare me"
	cont "like that!"
	done
	
LassRoute49AfterText:
	text "I thought one"
	line "of those beedrill"
	cont "chased me out here"
	cont "This sucks, all I"
	cont "wanted was to"
	cont "walk around the"
	cont " forest with my"
	cont "#MON"
	done



BugCatcherThreeRoute49SeenText:
	text "A couple of strong"
	line "trainers came by"
	cont "to see what was"
	cont "causing the"
	cont "Beedrill problem"
	cont "As a master of all"
	cont "things bug"
	cont "#MON, I'll"
	cont "gauge whether or"
	cont "not it's a good"
	cont "idea for you to"
	cont "go in there."
	done
	
BugCatcherThreeRoute49BeatenText:
	text "Swatted out of"
	line "the air!"
	done
	
BugCatcherThreeRoute49AfterText:
	text "Looks like you'll"
	line "definitely be a"
	cont "help to those"
	cont "trainers. Me? I"
	cont "think I'll just"
	cont "hang back here."
	done

ItemballRoute49RebelScript:
	itemball REPEL, 1

ItemballRoute49ParalyzeBerryScript:
	itemball LEFTOVERS, 1

ItemballRoute49EscapeRopeScript:
	itemball ESCAPE_ROPE, 1

ItemballRoute49BerryScript:
	itemball BERRY, 1

Route49HiddenTinyMushroomOneScript:
	hiddenitem TINYMUSHROOM, EVENT_ROUTE_49_HIDDEN_TINY_MUSHROOM_ONE

Route49HiddenTinyMushroomTwoScript:
	hiddenitem TINYMUSHROOM, EVENT_ROUTE_49_HIDDEN_TINY_MUSHROOM_TWO

Route49GuardScript:
	opentext
	writetext Route49GuardStopText
	waitbutton
	closetext
	setevent EVENT_SPOKE_TO_GUARD
	end

Route49GuardStopScript:
	showemote EMOTE_SHOCK, ROUTE49_OFFICER, 45
	opentext
	writetext Route49GuardStopText
	waitbutton
	closetext
	applymovement ROUTE49_OFFICER, Route49GuardStopMovement
	faceplayer 
	applymovement PLAYER, Route49GuardPushMovement
	turnobject PLAYER, LEFT
	applymovement ROUTE49_OFFICER, Route49GuardBackToPlaceMovement
	turnobject ROUTE49_OFFICER, DOWN
	setevent EVENT_SPOKE_TO_GUARD
	end

Route49GuardStopText:
	text "Beat the gym and"
	line "come back!"
	done

Route49GuardStopMovement:
	step LEFT
	step DOWN
	step_end

Route49GuardPushMovement:
	big_step RIGHT
	step_end

Route49GuardBackToPlaceMovement:
	step UP
	step RIGHT
	step_end

BugCatcherSceneEastScript:
	showemote EMOTE_SHOCK, PLAYER, 45
	applymovement PLAYER, MorganMovementTowardsRoute49BugCatcherEast
	turnobject PLAYER, RIGHT
	opentext
	writetext Route49BugCatcherGrandmaText
	waitbutton
	closetext
	setscene SCENE_ROUTE_49_NOTHING
	end

MorganMovementTowardsRoute49BugCatcherEast:
	step UP
	step RIGHT
	step UP
	step UP
	step_end

BugCatcherSceneWestScript:
	showemote EMOTE_SHOCK, PLAYER, 45
	applymovement PLAYER, MorganMovementTowardsRoute49BugCatcherWest
	turnobject PLAYER, RIGHT
	opentext
	writetext Route49BugCatcherGrandmaText
	waitbutton
	closetext
	setscene SCENE_ROUTE_49_NOTHING
	end

MorganMovementTowardsRoute49BugCatcherWest:
	step UP
	step RIGHT
	step RIGHT
	step UP
	step UP
	step_end

Route49BugCatcherGrandmaText:
	text "..."
	line "..."
	cont "An old lady?"
	cont "Yeah with the"
	cont "Arcanine right?"
	cont "I saw her in"
	cont "the group. Not"
	cont "to be judgmental,"
	cont "but I didnt think"
	cont "it was safe for"
	cont "her to be here"
	cont "until I saw that"
	cont "Arcanine. Man!"
	cont "That thing looked"
	cont "fearsome!"
	done
	

Route49_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 31, FOREST_DUNGEON, 1
	warp_event  5, 31, FOREST_DUNGEON, 2
	warp_event 57, 25, BRIDGE_NORTH, 1
	warp_event 56, 25, BRIDGE_NORTH, 2

	def_coord_events
	coord_event 21, 10, SCENE_ROUTE_49_GUARD, Route49GuardStopScript
	coord_event  4, 29, SCENE_ROUTE_49_BUG_CATCHER, BugCatcherSceneWestScript
	coord_event  5, 29, SCENE_ROUTE_49_BUG_CATCHER, BugCatcherSceneEastScript
	
	def_bg_events
	bg_event 57, 16, BGEVENT_ITEM, Route49HiddenTinyMushroomOneScript
	bg_event 41,  5, BGEVENT_ITEM, Route49HiddenTinyMushroomTwoScript

	def_object_events
	object_event 53, 12, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, YoungsterRoute49Script, -1
	object_event 42, 23, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, FisherRoute49Script, -1
	object_event  7, 11, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, LassRoute49Script, -1
	object_event 20, 10, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route49GuardScript, -1
	object_event 43,  9, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ItemballRoute49RebelScript, EVENT_ROUTE_49_REPEL
	object_event 45, 22, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ItemballRoute49ParalyzeBerryScript, EVENT_ROUTE_49_PRZBERRY
	object_event 24, 25, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ItemballRoute49EscapeRopeScript, EVENT_ROUTE_49_ESCAPE_ROPE
	object_event 23, 19, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ItemballRoute49BerryScript, EVENT_ROUTE_49_BERRY
