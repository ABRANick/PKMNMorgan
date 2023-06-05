	db HOUNDOOM ; 142
	db  75,  90,  50,  95,  110,  80
    evs  0,   0,   0,   0,   2,   0
	;   hp  atk  def  spd  sat  sdf

	db DARK, FIRE ; type
	db 45 ; catch rate
	db 175 ; base exp
	db NO_ITEM, BLACKGLASSES ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/houndoom/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm ;DOUBLE_EDGE, BODY_SLAM, HIDDEN_POWER, PROTECT, RETURN, SUBSTITUTE, SWAGGER, SWIFT, ROAR, FLAMETHROWER, FIRE_BLAST, SUNNY_DAY, WILL_O_WISP, SOLARBEAM, ROCK_SMASH, POISON_TAIL, HEX, SHADOW_BALL, SHADOW_BALL, TOXIC, DARK_PULSE, THIEF, HEAT_WAVE, STRENGTH, FLASH, ATTRACT, BIDE, ENCORE, HEADBUTT, MIMIC, REST, SLEEP_TALK, BONEMERANG
	;end