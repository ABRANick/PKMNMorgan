	db NINETALESKANTO ; 71

	db  73,  67,  75,  109,  90,  100
    evs  0,   0,   0,   2,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db ICE, FAIRY ; type
	db 75 ; catch rate
	db 177 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F75 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/ninetaleskanto/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm ;DOUBLE_EDGE, BODY_SLAM, HIDDEN_POWER, HYPER_BEAM, PROTECT, RETURN, SUBSTITUTE, SWIFT, ROAR, FLAMETHROWER, FIRE_BLAST, SUNNY_DAY, WILL_O_WISP, ENERGY_BALL, SOLARBEAM, CALM_MIND, LIGHT_SCREEN, REFLECT, HEX, SHADOW_BALL, TOXIC, THIEF, ATTRACT, BIDE, ENCORE, HEADBUTT, MIMIC, REFLECT, SLEEP_TALK, BONEMERANG
	;end
	