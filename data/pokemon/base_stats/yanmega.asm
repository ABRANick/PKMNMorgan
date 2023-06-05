	db YANMEGA ; 136
	db  86,  76,  86,  95,  116,  56
    evs  0,   0,   0,   0,   2,   0
	;   hp  atk  def  spd  sat  sdf

	db BUG, DRAGON ; type
	db 45 ; catch rate
	db 180 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/yanmega/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm ;DOUBLE_EDGE, HIDDEN_POWER, HYPER_BEAM, PROTECT, RETURN, SUBSTITUTE, SWAGGER, SWIFT, SUNNY_DAY, RAIN_DANCE, ENERGY_BALL, SOLARBEAM, AERIAL_ACE, TOXIC, DRAGON_CLAW, DRAGON_PULSE, THIEF, STEEL_WING, HEAT_WAVE, FLY, FLASH, ATTRACT, BIDE, ENCORE, MIMIC, REST, SLEEP_TALK
	;end
	