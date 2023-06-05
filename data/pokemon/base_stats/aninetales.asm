	db NINETALES ; 14

	db  73,  67,  75,  109,  90,  100
    evs  0,   0,   0,   2,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db ICE, FAIRY ; type
	db 75 ; catch rate
	db 177 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F75 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/aninetales/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROAR, TOXIC, HAIL, BUBBLEBEAM, HIDDEN_POWER, ICE_BEAM, HYPER_BEAM, BODY_SLAM, LIGHT_SCREEN, RAIN_DANCE, PROTECT, HEX, RETURN, PSYCHIC_M, SHADOW_BALL, SWIFT, REFLECT, DAZZLINGLEAM, SLEEP_TALK, MIMIC, REST, THIEF, FLASH
	;end
	
