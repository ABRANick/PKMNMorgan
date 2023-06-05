	db CACNEA ; 52
	db  50,  85,  40,  35,  85,  40
    evs  0,   0,   0,   0,   1,   0
	;   hp  atk  def  spd  sat  sdf

	db GRASS, GRASS ; type
	db 190; catch rate
	db 67 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/cacnea/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm ;DYNAMICPUNCH, DOUBLE_EDGE, BODY_SLAM, FALSE_SWIPE, HIDDEN_POWER, PROTECT, RETURN, SUBSTITUTE, SWAGGER, SUNNY_DAY, ENERGY_BALL, SOLARBEAM, THUNDERPUNCH, COUNTER, ROCK_SMASH, SEISMIC_TOSS, SANDSTORM, TOXIC, THIEF, HEAT_WAVE, CUT, ATTRACT, BIDE, ENCORE, HEADBUTT, MIMIC, REFLECT, SLEEP_TALK, POWER_GEM
	;end
	