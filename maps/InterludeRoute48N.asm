InterludeRoute48N_MapScripts:

InterludeRoute48N_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  0, ROUTE_48N, 3
	warp_event  5,  0, ROUTE_48N, 4
	warp_event  5,  4, INTERLUDE_ROUTE48S, 3

	def_coord_events

	def_bg_events

	def_object_events