	db KANGASKHAN ; 176
	db  105,  95,  80,  90,  40,  80
    evs  2,   0,   1,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, GROUND ; type
	db 45 ; catch rate
	db 172 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/kangaskhan/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm ;DYNAMICPUNCH, DOUBLE_EDGE, BODY_SLAM, FALSE_SWIPE, HIDDEN_POWER, HYPER_BEAM, PROTECT, RETURN, SUBSTITUTE, SWAGGER, ROAR, FIRE_PUNCH, FLAMETHROWER, FIRE_BLAST, SUNNY_DAY, THUNDER, THUNDERBOLT, THUNDERPUNCH, ICE_BEAM, ICE_PUNCH, BULK_UP, COUNTER, ROCK_SMASH, SEISMIC_TOSS, DIG, EARTHQUAKE, ROCK_SLIDE, SANDSTORM, STONE_EDGE, TOXIC, THIEF,PLAYROUGH, CUT, SURF, STRENGTH, ATTRACT, BIDE, ENCORE, HEADBUTT, MIMIC, REST, SLEEP_TALK
	;end
	