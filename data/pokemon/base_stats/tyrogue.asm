	db TYROGUE ; 149
	db  35,  35,  35,  35,  35,  35
    evs  0,   1,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db FIGHTING, FIGHTING ; type
	db 75 ; catch rate
	db 42 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F0 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/tyrogue/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm ;DYNAMICPUNCH, DOUBLE_EDGE, BODY_SLAM, HIDDEN_POWER, PROTECT,RETURN, SUBSTITUTE, SWAGGER, FIRE_PUNCH, SUNNY_DAY, RAIN_DANCE, THUNDERPUNCH, ICE_PUNCH, BULK_UP, COUNTER, ROCK_SMASH, SEISMIC_TOSS, DIG, EARTHQUAKE, BULLDOZE, ROCK_SLIDE, TOXIC, THIEF,STRENGTH, ATTRACT, BIDE, ENCORE, HEADBUTT, MIMIC, REST, SLEEP_TALK
	;end