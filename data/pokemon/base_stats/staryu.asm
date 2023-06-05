	db STARYU ; 143
	db  30,  45,  55,  85,  70,  55
    evs  0,   0,   0,   1,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 225 ; catch rate
	db 70 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/staryu/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm ;DOUBLE_EDGE, BODY_SLAM, HIDDEN_POWER, PROTECT, RETURN, SUBSTITUTE, SWAGGER, SWAGGER, BUBBLEBEAM, RAIN_DANCE, THUNDER, THUNDER_WAVE, THUNDERBOLT, HAIL, BLIZZARD, ICE_BEAM, CALM_MIND, LIGHT_SCREEN, PSYCHIC_M, REFLECT, HEX, SHADOW_BALL, TOXIC, DARK_PULSE, DAZZLINGLEAM, SURF, FLASH, WHIRLPOOL, WATERFALL, BIDE, ENCORE, MIMIC, REST, SELFDESTRUCT, SLEEP_TALK, POWER_GEM
	;end
	
	