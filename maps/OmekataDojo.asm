	object_const_def
	const OMEKATA_DOJO_UNOWN

OmekataDojo_MapScripts:
	def_scene_scripts

	def_callbacks


OmekataDojoUnownScript:
	cry UNOWN
	showemote EMOTE_SHOCK, PLAYER, 15
	opentext
	verbosegiveitem UNOWN_TOKEN
	waitbutton
	closetext
	cry UNOWN
	playsound SFX_WARP_TO 
	disappear OMEKATA_DOJO_UNOWN
	opentext
	writetext OmekataDojoItVanishedText
	waitbutton
	closetext
	setevent EVENT_BEAT_OMEKATA_DOJO_UNOWN
	end

OmekataDojoItVanishedText:
	text "It vanished..."
	done


OmekataDojoSign:
	opentext
	writetext OmekataDojoText
	waitbutton
	closetext
	end

OmekataDojoText:
	text "OMEKATA DOJO"

	para "TEMPLE WIMPS"
	line "NOT WELCOME!"
	done

OmekataDojo_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 10,  9, OMEKATA_DOJO_INDOOR, 1
    warp_event  11, 9, OMEKATA_DOJO_INDOOR, 2


	def_coord_events

	def_bg_events
	bg_event  8, 10, BGEVENT_READ, OmekataDojoSign

	def_object_events
	object_event 16,  4, SPRITE_UNOWN, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_OW_BLUE, OBJECTTYPE_SCRIPT, 0, OmekataDojoUnownScript, EVENT_BEAT_OMEKATA_DOJO_UNOWN
