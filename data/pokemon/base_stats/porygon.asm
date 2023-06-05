    db PORYGON ; 222

	db  65,  60,  70,  40,  85,  75
	evs  0,   0,   0,   0,   2,   0
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 45 ; catch rate
	db 180 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/porygon/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm ;DOUBLE_EDGE, BODY_SLAM, FALSE_SWIPE, HIDDEN_POWER, HYPER_BEAM, PROTECT, REFLECT, SUBSTITUTE, SWAGGER, SWIFT, SUNNY_DAY, BUBBLEBEAM, RAIN_DANCE, ENERGY_BALL, SOLARBEAM, THUNDER, THUNDER_WAVE, THUNDERBOLT, HAIL, BLIZZARD, ICE_BEAM, CALM_MIND, LIGHT_SCREEN, PSYCHIC_M, REFLECT, SHADOW_BALL, TOXIC, DRAGON_PULSE, DARK_PULSE, DAZZLINGLEAM, FLASH, BIDE, ENCORE, HEADBUTT, MIMIC, REST, SELFDESTRUCT, SLEEP_TALK
	;end
	