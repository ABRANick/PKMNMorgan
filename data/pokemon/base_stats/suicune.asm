	db SUICUNE ; 246

	db 100,  75, 115,  85,  90, 115
    evs  0,   0,   1,   0,   0,   2
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 3 ; catch rate
	db 240 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 80 ; step cycles to hatch
	INCBIN "gfx/pokemon/suicune/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm ;DOUBLE_EDGE, BODY_SLAM, FALSE_SWIPE, HIDDEN_POWER, HYPER_BEAM, PROTECT, RETURN, SUBSTITUTE, SWAGGER, SWIFT, ROAR, BUBBLEBEAM, RAIN_DANCE, HAIL, BLIZZARD, ICE_BEAM, ROCK_SMASH, POISON_TAIL, CALM_MIND, HEX, SHADOW_BALL, SHADOW_CLAW, TOXIC, THIEF, DAZZLINGLEAM, SURF, STRENGTH, WHIRLPOOL, WATERFALL, BIDE, ENCORE, HEADBUTT, MIMIC, REFLECT, SLEEP_TALK, BONEMERANG
	;end
	