    db MISMAGIUS ; 126  

	db  60,  60,  60, 105, 105, 105
    evs  0,   0,   0,   0,   1,   1
	;   hp  atk  def  spd  sat  sdf

	db GHOST, GHOST; type
	db 45 ; catch rate
	db 173 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 35 ; step cycles to hatch
	INCBIN "gfx/pokemon/mismagius/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_FAST ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm ;DOUBLE_EDGE, HIDDEN_POWER, HYPER_BEAM, PROTECT, RETURN, SUBSTITUTE, SWAGGER, SWIFT, SUNNY_DAY, WILL_O_WISP, RAIN_DANCE, SHOCK_WAVE, THUNDER, THUNDER_WAVE, THUNDERBOLT, CALM_MIND, LIGHT_SCREEN, PSYCHIC_M, REFLECT, HEX, SHADOW_BALL, TOXIC, THIEF, DAZZLINGLEAM, FLASH, ATTRACT, BIDE, ENCORE, HEADBUTT, MIMIC, REST, SLEEP_TALK, POWER_GEM
	;end
	
	