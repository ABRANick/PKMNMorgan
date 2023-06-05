	db ARBOK ; 49
	db  60,  100,  69,  80,  65,  79
    evs  0,   2,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db POISON, POISON ; type
	db 90 ; catch rate
	db 157 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/arbok/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm ;DOUBLE_EDGE, BODY_SLAM, HIDDEN_POWER, HYPER_BEAM, PROTECT, RETURN, SUBSTITUTE, SWAGGER, ROAR, FLAMETHROWER, FIRE_BLAST, SUNNY_DAY, RAIN_DANCE, POISON_TAIL, SLUDGE_BOMB, DIG, EARTHQUAKE, BULLDOZE, AERIAL_ACE, ROCK_SLIDE, TOXIC, THIEF, STRENGTH, ATTRACT, BIDE, MIMIC, REST, SLEEP_TALK
	;end
	