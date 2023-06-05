	db LARVITAR ; 232

	db  50,  64,  50,  41,  45,  50
    evs  0,   1,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db ROCK, GROUND ; type
	db 45 ; catch rate
	db 60 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 40 ; step cycles to hatch
	INCBIN "gfx/pokemon/larvitar/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm ;DOUBLE_EDGE, BODY_SLAM, FALSE_SWIPE, HIDDEN_POWER, PROTECT, RETURN, SUBSTITUTE, SWAGGER, ROAR, SUNNY_DAY, ROCK_SMASH, DIG, EARTHQUAKE, EARTH_POWER, BULLDOZE, ROCK_SLIDE, SANDSTORM, STONE_EDGE, TOXIC, DARK_PULSE, THIEF, STRENGTH, ATTRACT, BIDE, ENCORE, HEADBUTT, MIMIC, REST, SLEEP_TALK, ROLLOUT
	;end
	