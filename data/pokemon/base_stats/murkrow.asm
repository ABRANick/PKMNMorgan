	db MURKROW ; 123

	db  60,  85,  42,  91,  85,  42
    evs  0,   0,   0,   1,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db DARK, FLYING ; type
	db 45 ; catch rate
	db 81 ; base exp
	db NO_ITEM, BLACKGLASSES ; items
	db GENDER_F50 ; gender ratio
	db 15 ; step cycles to hatch
	INCBIN "gfx/pokemon/murkrow/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm ;DOUBLE_EDGE, HIDDEN_POWER, PROTECT, RETURN, SUBSTITUTE, SWAGGER, SWIFT, SUNNY_DAY, RAIN_DANCE, THUNDER_WAVE, SLUDGE_BOMB, CALM_MIND, LIGHT_SCREEN, PSYCHIC_M, REFLECT, HEX, SHADOW_BALL, SHADOW_CLAW, TOXIC, DARK_PULSE, THIEF, STEEL_WING, FLY, ATTRACT, BIDE, ENCORE, MIMIC, REST, SLEEP_TALK
	;end
	