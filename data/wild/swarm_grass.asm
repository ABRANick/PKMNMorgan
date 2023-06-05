; Pokémon swarms in grass

SwarmGrassWildMons:

; Dunsparce swarm
	map_id DARK_CAVE_VIOLET_ENTRANCE
	db 4 percent, 4 percent, 4 percent ; encounter rates: morn/day/nite
	; morn
	db 3, GEODUDE
	db 3, SANDSHREW
	db 2, ZUBAT
	db 2, GEODUDE
	db 2, SANDSHREW
	db 4, SANDSHREW
	db 4, SANDSHREW
	; day
	db 3, GEODUDE
	db 3, SANDSHREW
	db 2, ZUBAT
	db 2, GEODUDE
	db 2, SANDSHREW
	db 4, SANDSHREW
	db 4, SANDSHREW
	; nite
	db 3, GEODUDE
	db 3, SANDSHREW
	db 2, ZUBAT
	db 2, GEODUDE
	db 2, SANDSHREW
	db 4, SANDSHREW
	db 4, SANDSHREW

; Yanma swarm
	map_id ROUTE_35
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 12, NIDORAN_M
	db 12, NIDORAN_F
	db 12, YANMA
	db 14, YANMA
	db 14, HOOTHOOT
	db 10, SHINX
	db 10, SHINX
	; day
	db 12, NIDORAN_M
	db 12, NIDORAN_F
	db 12, YANMA
	db 14, YANMA
	db 14, HOOTHOOT
	db 10, SHINX
	db 10, SHINX
	; nite
	db 12, NIDORAN_M
	db 12, NIDORAN_F
	db 12, YANMA
	db 14, YANMA
	db 14, TAILOW
	db 10, SHINX
	db 10, SHINX

	db -1 ; end
