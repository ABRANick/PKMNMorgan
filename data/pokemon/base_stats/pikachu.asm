	db PIKACHU ; 30

	db  45,  80,  50,  120,  75,  60
    evs  0,   0,   0,   2,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, ELECTRIC ; type
	db 190 ; catch rate
	db 112 ; base exp
	db NO_ITEM, LIGHT_BALL ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/pikachu/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm ;DYNAMICPUNCH, DOUBLE_EDGE, BODY_SLAM, HIDDEN_POWER, PROTECT, RETURN, SUBSTITUTE, SWAGGER, SWIFT, RAIN_DANCE, SHOCK_WAVE, THUNDER, THUNDER_WAVE, THUNDERBOLT, THUNDERPUNCH, COUNTER, ROCK_SMASH, SEISMIC_TOSS, DIG, LIGHT_SCREEN, REFLECT, THIEF, FLY, SURF, STRENGTH, ATTRACT, BIDE, ENCORE, MIMIC, REST, SLEEP_TALK
	;end
	