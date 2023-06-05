	db LATIAS ; 248
	db  80,  80,  90,  110,  110,  130
    evs  0,   0,   0,   0,   0,   3
	;   hp  atk  def  spd  sat  sdf

	db DRAGON, PSYCHIC_TYPE ; type
	db 3; catch rate
	db 240 ; base exp
	db DRAGON_FANG, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/latias/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm ;DOUBLE_EDGE, BODY_SLAM, HIDDEN_POWER, HYPER_BEAM, PROTECT, RETURN, SUBSTITUTE, SWAGGER, SWIFT, ROAR, SUNNY_DAY, RAIN_DANCE, ENERGY_BALL, SOLARBEAM, SHOCK_WAVE, THUNDER, THUNDER_WAVE, THUNDERBOLT, BLIZZARD, ICE_BEAM, EARTHQUAKE, EARTH_POWER, BULLDOZE, AERIAL_ACE, CALM_MIND, LIGHT_SCREEN, PSYCHIC_M, REFLECT, HEX, SHADOW_BALL, SHADOW_CLAW, TOXIC, DRAGON_CLAW, DRAGON_PULSE, DARK_PULSE, STEEL_WING, DAZZLINGLEAM, FLY, SURF, STRENGTH, FLASH, BIDE, ENCORE, HEADBUTT, MIMIC, REST, SLEEP_TALK
	;end
	