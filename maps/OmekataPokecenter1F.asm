	object_const_def
	const OMEKATA_NURSE
	const OMEKATA_CHANSEY

OmekataPokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

OmekataNurseScript:
	jumpstd PokecenterNurseScript

OmekataChanseyCryScript:
	cry CHANSEY
	end

OmekataPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, OMEKATA, 1
	warp_event  4,  7, OMEKATA, 2
	
	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OmekataNurseScript, -1
	object_event  4,  1, SPRITE_CHANSEY, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OmekataChanseyCryScript, -1