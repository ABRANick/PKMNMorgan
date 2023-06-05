	db WEEZING ; 47
	db  65,  90,  120,  60,  85,  70
    evs  0,   0,   2,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db POISON, POISON ; type
	db 60 ; catch rate
	db 172 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/weezing/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups
	
	; tm/hm learnset
	tmhm ;DOUBLE_EDGE, HIDDEN_POWER, PROTECT, RETURN, SUBSTITUTE, SWAGGER, FLAMETHROWER, FIRE_BLAST, SUNNY_DAY, WILL_O_WISP, BUBBLEBEAM, RAIN_DANCE, THUNDER, THUNDER_WAVE, THUNDERBOLT, SLUDGE_BOMB, HEX, SHADOW_BALL, TOXIC, DARK_PULSE, FLASH, ATTRACT, BIDE, ENCORE, HEADBUTT, MIMIC, REST, SELFDESTRUCT, SLEEP_TALK, ROLLOUT
	;end