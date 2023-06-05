	db HAUNTER ; 66

	db  45,  50,  45,  95,  115,  55
    evs  0,   0,   0,   0,   2,   0
	;   hp  atk  def  spd  sat  sdf

	db GHOST, POISON ; type
	db 90 ; catch rate
	db 142 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/haunter/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm ;DYNAMICPUNCH, HIDDEN_POWER, PROTECT, RETURN, SUBSTITUTE, SWAGGER, FIRE_PUNCH, SUNNY_DAY, WILL_O_WISP, ENERGY_BALL, RAIN_DANCE, SHOCK_WAVE, THUNDER, THUNDER_WAVE, THUNDERBOLT, THUNDERPUNCH, ICE_PUNCH, SLUDGE_BOMB, CALM_MIND, LIGHT_SCREEN, PSYCHIC_M, REFLECT, HEX, SHADOW_BALL, SHADOW_CLAW, TOXIC, THIEF, FLASH, ATTRACT, BIDE, ENCORE, MIMIC, REST, SELFDESTRUCT, SLEEP_TALK
	;end
	