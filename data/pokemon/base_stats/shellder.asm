    db SHELLDER; 185

	db  30,  65, 100,  40,  25,  40
    evs  0,   0,   1,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER; type
	db 45 ; catch rate
	db 61 ; base exp
	db NO_ITEM, PEARL ; items
	db GENDER_F50 ; gender ratio
	db 35 ; step cycles to hatch
	INCBIN "gfx/pokemon/shellder/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm ;DOUBLE_EDGE, BODY_SLAM, FALSE_SWIPE, HIDDEN_POWER, PROTECT, RETURN, SUBSTITUTE, SWAGGER, SWIFT, BUBBLEBEAM, RAIN_DANCE, HAIL, BLIZZARD, ICE_BEAM, ROCK_SMASH, SLUDGE_BOMB, LIGHT_SCREEN, REFLECT, TOXIC, DARK_PULSE, THIEF, SURF, STRENGTH, WHIRLPOOL, WATERFALL, ATTRACT, BIDE, ENCORE, HEADBUTT, MIMIC, REST, SELFDESTRUCT, SLEEP_TALK, ROLLOUT
	;end