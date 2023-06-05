	object_const_def
	const SOUNDTESTER

MorganHouse2F_MapScripts:

	def_scene_scripts 

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .InitializeRoom

; unused
.Null:
	end

.InitializeRoom:
	checkevent EVENT_INITIALIZED_EVENTS
	iftrue .SkipInitialization
	jumpstd InitializeEventsScript
	endcallback

.SkipInitialization:
	endcallback


RyuPosterScript:
	opentext 
	writetext RyuPosterText
	waitbutton
	closetext
	end

RyuPosterText:
	text "I used to play"
	line "this game with "
	cont "daddy all the time"
	cont "Dragon Punch!!!!"
	done

N64Script:
	opentext
	writetext N64Text
	waitbutton
	closetext
	end

N64Text:
	text "A young man dress-"
	line "ed in green is rid-"
	cont "ing a horse across"
	cont "a moonlit field. I"
	cont "wish I could sit "
	cont "and play..."
	done 

SoundTestScript:
	opentext 
	writetext NextText
	waitbutton
	givepoke GARDEVOIR, 50, RARE_CANDY
	waitbutton
	closetext
	warp GOSHA, 10, 10
	end

NextText: 
	text "Next"
	done

MorganHouse2F_MapEvents:
		db 0, 0 ; filler

	def_warp_events
	warp_event  9,  0, MORGAN_HOUSE_1F, 3

	def_coord_events

	def_bg_events
	bg_event  4,  4, BGEVENT_READ, N64Script
	bg_event  4,  0, BGEVENT_READ, RyuPosterScript
	
	def_object_events
	object_event 6, 6, SPRITE_IVY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 5, SoundTestScript, -1