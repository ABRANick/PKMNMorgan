	db CLEFABLE ; 81
	db  95,  70,  73,  60,  95,  90
    evs  3,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db FAIRY, FAIRY ; type
	db 25 ; catch rate
	db 217 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/clefable/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_FAST ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm ;DYNAMICPUNCH, DOUBLE_EDGE, BODY_SLAM, HIDDEN_POWER, HYPER_BEAM, PROTECT, RETURN, SUBSTITUTE, SWAGGER, SWIFT, ROAR, FIRE_PUNCH, FLAMETHROWER, FIRE_BLAST, SUNNY_DAY, WILL_O_WISP, BUBBLEBEAM, RAIN_DANCE, ENERGY_BALL, SHOCK_WAVE, THUNDER, THUNDER_WAVE, THUNDERBOLT, THUNDERPUNCH, BLIZZARD, ICE_BEAM, ICE_PUNCH, COUNTER, ROCK_SMASH, SEISMIC_TOSS, CALM_MIND, LIGHT_SCREEN, PSYCHIC_M, REFLECT, HEX, SHADOW_BALL, TOXIC, DARK_PULSE, THIEF, DAZZLINGLEAM, PLAYROUGH, STRENGTH, FLASH, ATTRACT, BIDE, ENCORE, HEADBUTT, MIMIC, REST, SLEEP_TALK
	;end
	