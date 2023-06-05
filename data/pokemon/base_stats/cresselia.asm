	db CRESSELIA ; 251

	db 120,  70, 120,  85,  75, 130
    evs  0,   0,   0,   0,   0,   3
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC_TYPE, FAIRY ; type
	db 3 ; catch rate
	db 240 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F100 ; gender ratio
	db 120 ; step cycles to hatch
	INCBIN "gfx/pokemon/cresselia/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm ;DOUBLE_EDGE, BODY_SLAM, HIDDEN_POWER, HYPER_BEAM, PROTECT, RETURN, SUBSTITUTE, SWAGGER, SWIFT, ROAR, SUNNY_DAY, WILL_O_WISP, BUBBLEBEAM, RAIN_DANCE, ENERGY_BALL, SOLARBEAM, SHOCK_WAVE, THUNDER, THUNDER_WAVE, THUNDERBOLT, HAIL, BLIZZARD, ICE_BEAM, AERIAL_ACE, CALM_MIND, LIGHT_SCREEN, REFLECT, HEX, SHADOW_BALL, TOXIC, THIEF, STEEL_WING, DAZZLINGLEAM, PLAYROUGH, HEAT_WAVE, FLY, FLASH, BIDE, ENCORE, HEADBUTT, MIMIC, REST, SELFDESTRUCT, SLEEP_TALK, POWER_GEM
	;end
	
