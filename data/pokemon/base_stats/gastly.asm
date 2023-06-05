	db GASTLY ; 65

	db  30,  35,  30,  80,  100,  35
    evs  0,   0,   0,   0,   1,   0
	;   hp  atk  def  spd  sat  sdf

	db GHOST, POISON ; type
	db 190 ; catch rate
	db 62 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/gastly/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm ;HIDDEN_POWER, PROTECT, RETURN, SUBSTITUTE, SWAGGER, SUNNY_DAY, WILL_O_WISP, ENERGY_BALL, RAIN_DANCE, SHOCK_WAVE, THUNDER, THUNDER_WAVE, THUNDERBOLT, SLUDGE_BOMB, CALM_MIND, LIGHT_SCREEN, PSYCHIC_M, REFLECT, HEX, SHADOW_BALL, TOXIC, THIEF, FLASH, ATTRACT, BIDE, ENCORE, MIMIC, REST, SELFDESTRUCT, SLEEP_TALK
	;end
	