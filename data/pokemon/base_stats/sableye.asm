	db SABLEYE ; 213

	db  50, 85,  125,  20,  85,  115
    evs  0,   1,   1,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db GHOST, FLYING ; type
	db 45 ; catch rate
	db 168 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/noctowl/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm ;DYNAMICPUNCH, DOUBLE_EDGE, HIDDEN_POWER, HYPER_BEAM, PROTECT, SUBSTITUTE, SWAGGER, SWIFT, FIRE_PUNCH, SUNNY_DAY, WILL_O_WISP, BUBBLEBEAM, RAIN_DANCE, SHOCK_WAVE, THUNDERPUNCH, ICE_PUNCH, COUNTER, ROCK_SMASH, SEISMIC_TOSS, DIG, AERIAL_ACE, CALM_MIND, LIGHT_SCREEN, PSYCHIC_M, REFLECT, HEX, SHADOW_BALL, SHADOW_CLAW, TOXIC, DARK_PULSE, THIEF, DAZZLINGLEAM, FLASH, ATTRACT, BIDE, ENCORE, HEADBUTT, MIMIC, REST, SLEEP_TALK, POWER_GEM
	;end
	