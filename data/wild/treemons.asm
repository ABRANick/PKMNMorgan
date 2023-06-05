TreeMons:
; entries correspond to TREEMON_SET_* constants
	dw TreeMonSet_City
	dw TreeMonSet_Canyon
	dw TreeMonSet_Town
	dw TreeMonSet_Route
	dw TreeMonSet_Kanto
	dw TreeMonSet_Lake
	dw TreeMonSet_Forest
	dw TreeMonSet_Rock
	dw TreeMonSet_City

; Two tables each (common, rare).
; Structure:
;	db  %, species, level

TreeMonSet_City:
TreeMonSet_Canyon:
; common
	db 50, HOOTHOOT,    10
	db 15, HOOTHOOT,    10
	db 15, HOOTHOOT,    10
	db 10, ZIGZAGOON,      10
	db  5, ZIGZAGOON,      10
	db  5, ZIGZAGOON,      10
	db -1
; rare
	db 50, HOOTHOOT,    10
	db 15, HERACROSS,  10
	db 15, HERACROSS,  10
	db 10, ZIGZAGOON,      10
	db  5, ZIGZAGOON,      10
	db  5, ZIGZAGOON,      10
	db -1

TreeMonSet_Town:
; common
	db 50, HOOTHOOT,    10
	db 15, EKANS,      10
	db 15, HOOTHOOT,    10
	db 10, ZIGZAGOON,      10
	db  5, ZIGZAGOON,      10
	db  5, ZIGZAGOON,      10
	db -1
; rare
	db 50, HOOTHOOT,    10
	db 15, HERACROSS,  10
	db 15, HERACROSS,  10
	db 10, ZIGZAGOON,      10
	db  5, ZIGZAGOON,      10
	db  5, ZIGZAGOON,      10
	db -1

TreeMonSet_Route:
; common
	db 50, TAILOW,   10
	db 15, EKANS,   10
	db 15, YANMA,     10
	db 10, EXEGGCUTE,  10
	db  5, EXEGGCUTE,  10
	db  5, EXEGGCUTE,  10
	db -1
; rare
	db 50, TAILOW,   10
	db 15, PINECO,     10
	db 15, PINECO,     10
	db 10, EXEGGCUTE,  10
	db  5, EXEGGCUTE,  10
	db  5, EXEGGCUTE,  10
	db -1

TreeMonSet_Kanto:
; common
	db 50, TAILOW,   10
	db 15, EKANS,      10
	db 15, TAILOW,   10
	db 10, EXEGGCUTE,  10
	db  5, EXEGGCUTE,  10
	db  5, EXEGGCUTE,  10
	db -1
; rare
	db 50, TAILOW,   10
	db 15, PINECO,     10
	db 15, PINECO,     10
	db 10, EXEGGCUTE,  10
	db  5, EXEGGCUTE,  10
	db  5, EXEGGCUTE,  10
	db -1

TreeMonSet_Lake:
; common
	db 50, TAILOW,   10
	db 15, VENONAT,    10
	db 15, TAILOW,   10
	db 10, EXEGGCUTE,  10
	db  5, EXEGGCUTE,  10
	db  5, EXEGGCUTE,  10
	db -1
; rare
	db 50, TAILOW,   10
	db 15, PINECO,     10
	db 15, PINECO,     10
	db 10, EXEGGCUTE,  10
	db  5, EXEGGCUTE,  10
	db  5, EXEGGCUTE,  10
	db -1

TreeMonSet_Forest:
; common
	db 50, TAILOW,   10
	db 15, PINECO,     10
	db 15, PINECO,     10
	db 10, HOOTHOOT,    10
	db  5, KAKUNA, 10
	db  5, BEEDRILL,   10
	db -1
; rare
	db 50, TAILOW,   10
	db 15, UNOWN,   10
	db 15, WEEDLE,     10
	db 10, TAILOW,   10
	db  5, YANMA,    10
	db  5, KAKUNA,     10
	db -1

TreeMonSet_Rock:
	db 90, GRAVELER,     15
	db 10, GEODUDE,    15
	db -1
