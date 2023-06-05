InterludeRoute48S_MapScripts:

InterludeRoute48S_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0,  5, ROUTE_48S, 1
	warp_event  1,  5, ROUTE_48S, 1
	warp_event  0,  0, INTERLUDE_ROUTE48N, 3

	def_coord_events

	def_bg_events

	def_object_events