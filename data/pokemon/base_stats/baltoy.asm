    db BALTOY ; 202

	db  40,  40,  55,  55,  40,  70
    evs  0,   0,   0,   0,   0,   1
	;   hp  atk  def  spd  sat  sdf

	db GROUND, PSYCHIC_TYPE; type
	db 255 ; catch rate
	db 60 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/baltoy/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm ;DYNAMICPUNCH, DOUBLE_EDGE, BODY_SLAM, HIDDEN_POWER, PROTECT, RETURN, SUBSTITUTE, SWAGGER, SWIFT, SUNNY_DAY, WILL_O_WISP, RAIN_DANCE, SOLARBEAM, ICE_BEAM, COUNTER, ROCK_SMASH, SEISMIC_TOSS, DIG, EARTHQUAKE, EARTH_POWER, BULLDOZE, CALM_MIND, LIGHT_SCREEN, PSYCHIC_M, REFLECT, ROCK_SLIDE, SANDSTORM, STONE_EDGE, HEX, SHADOW_BALL, SHADOW_CLAW, DARK_PULSE, THIEF, DAZZLINGLEAM, STRENGTH, FLASH, BIDE, ENCORE, HEADBUTT, MIMIC, REST, SELFDESTRUCT, SLEEP_TALK, ROLLOUT, POWER_GEM
	;end
	