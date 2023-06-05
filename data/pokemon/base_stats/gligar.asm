	db GLIGAR ; 127
	db  65,  75,  105,  85,  35,  65
    evs  0,   0,   1,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db GROUND, FLYING ; type
	db 60 ; catch rate
	db 86 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/gligar/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm ;DOUBLE_EDGE, FALSE_SWIPE, HIDDEN_POWER, PROTECT, REFLECT, SUBSTITUTE, SWAGGER, SWIFT, SUNNY_DAY, RAIN_DANCE, ROCK_SMASH, POISON_TAIL, SLUDGE_BOMB, DIG, EARTHQUAKE, BULLDOZE, AERIAL_ACE, ROCK_SLIDE, SANDSTORM, STONE_EDGE, SHADOW_CLAW, TOXIC, DRAGON_CLAW, DARK_PULSE, THIEF, STEEL_WING, CUT, FLY, STRENGTH, ATTRACT, BIDE, ENCORE, MIMIC, REST, SLEEP_TALK
	;end
	