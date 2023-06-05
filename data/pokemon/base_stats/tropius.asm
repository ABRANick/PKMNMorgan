    db TROPIUS ; 180

	db  95,  95,  130,  60,  72,  80
    evs  0,   0,   2,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db GRASS, FLYING ; type
	db 200 ; catch rate
	db 161 ; base exp
	db MIRACLE_SEED, SHARP_BEAK ; items
	db GENDER_F12_5 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/tropius/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm ;DOUBLE_EDGE, BODY_SLAM, FALSE_SWIPE, HIDDEN_POWER, HYPER_BEAM, PROTECT, RETURN, SUBSTITUTE, SWAGGER, SWIFT, ROAR, SUNNY_DAY, RAIN_DANCE, ENERGY_BALL, SOLARBEAM, ROCK_SMASH, EARTHQUAKE, BULLDOZE, AERIAL_ACE, ROCK_SLIDE, STONE_EDGE, TOXIC, DRAGON_PULSE, DRAGON_CLAW, DARK_PULSE, STEEL_WING, PLAYROUGH, HEAT_WAVE, CUT, FLY, STRENGTH, SURF, WATERFALL, ATTRACT, BIDE, ENCORE, HEADBUTT, MIMIC, REST, SLEEP_TALK, SEED_FLARE
	;end
	