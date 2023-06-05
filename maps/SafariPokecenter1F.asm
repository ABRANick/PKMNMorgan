	object_const_def
	const SAFARI_NURSE
	const SAFARI_CHANSEY

SafariPokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

SafariNurseScript:
	jumpstd PokecenterNurseScript

SafariChanseyCryScript:
	refreshscreen
	pokepic CHANSEY
	cry CHANSEY
	waitbutton
	closepokepic
	opentext
	writetext SafariChanseySignText
	waitbutton
	closetext
	end

SafariChanseySignText:
	text "Chansey is eager"
	line "to help!"
	done	

SafariPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, SAFARI, 1
	warp_event  4,  7, SAFARI, 2
	
	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SafariNurseScript, -1
	object_event  4,  1, SPRITE_CHANSEY, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SafariChanseyCryScript, -1