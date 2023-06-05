	db JYNX ; 209
	db  65,  50,  35,  95,  115,  95
    evs  0,   0,   0,   0,   2,   0
	;   hp  atk  def  spd  sat  sdf

	db ICE, PSYCHIC_TYPE ; type
	db 45 ; catch rate
	db 159 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F100 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/jynx/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm ;DYNAMICPUNCH, DOUBLE_EDGE, BODY_SLAM, HIDDEN_POWER, HYPER_BEAM, PROTECT, RETURN, SUBSTITUTE, SWAGGER, SWIFT, BUBBLEBEAM, RAIN_DANCE, ENERGY_BALL, HAIL, BLIZZARD, ICE_BEAM, ICE_PUNCH, COUNTER, ROCK_SMASH, SEISMIC_TOSS, CALM_MIND, LIGHT_SCREEN, PSYCHIC_M, REFLECT, HEX, SHADOW_BALL, DARK_PULSE, THIEF, DAZZLINGLEAM, STRENGTH, FLASH, ATTRACT, BIDE, ENCORE, HEADBUTT, MIMIC, REFLECT, SLEEP_TALK
	;end
	