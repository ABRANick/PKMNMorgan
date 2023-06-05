	db POLIWRATH ; 22

	db  90,  95,  95,  70,  70,  90
    evs  0,   0,   3,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db WATER, FIGHTING ; type
	db 45 ; catch rate
	db 230 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/poliwrath/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm ;DYNAMICPUNCH, BODY_SLAM, FALSE_SWIPE, HIDDEN_POWER, HYPER_BEAM, PROTECT, RETURN, SUBSTITUTE, SWAGGER, SWIFT, BUBBLEBEAM, RAIN_DANCE, HAIL, BLIZZARD, ICE_BEAM, ICE_PUNCH, BULK_UP, COUNTER, ROCK_SMASH, SEISMIC_TOSS, DIG, EARTHQUAKE, EARTH_POWER, BULLDOZE, ROCK_SLIDE, TOXIC, THIEF, CUT, SURF, STRENGTH, WHIRLPOOL, WATERFALL, ATTRACT, BIDE, ENCORE, HEADBUTT, MIMIC, REST, SLEEP_TALK, ROLLOUT
	;end
	