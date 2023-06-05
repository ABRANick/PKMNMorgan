	object_const_def
    const SAFARI_PLAINS_DARIA

SafariPlains_MapScripts:
	def_scene_scripts

	def_callbacks

SafariPlainsWildEncountersScript:
	opentext
	writetext SafariPlainsWildEncountersText
	waitbutton 
	closetext
	end

SafariPlainsWildEncountersText:
	text "PLAINS WILD"
	line "POKéMON:"

	para "BUNEARY: 30%"
	line "SWABLU:  30%"

	para "EXEGGCUTE: 30%"
	line "EEVEE:	 10%"

	para "TAUROS:  5%"
	line "MILTANK: 5%"
	done

SafariPlains_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event	19,	29, SAFARI_GATE, 3
  

	def_coord_events

	def_bg_events
	bg_event 17, 26, BGEVENT_READ, SafariPlainsWildEncountersScript

	def_object_events
	object_event 20, 24, SPRITE_PICKNICKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_OW_GREEN, OBJECTTYPE_SCRIPT, 0, -1, -1
