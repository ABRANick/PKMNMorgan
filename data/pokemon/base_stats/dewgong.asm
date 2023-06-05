	db GLALIE ; 188

	db  90,  70,  80,  70,  95,  95
    evs  0,   0,   0,   0,   0,   2
	;   hp  atk  def  spd  sat  sdf

	db WATER, ICE ; type
	db 75 ; catch rate
	db 166 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 15 ; step cycles to hatch
	INCBIN "gfx/pokemon/dewgong/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_FAST ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROAR, TOXIC, HAIL, BUBBLEBEAM, HIDDEN_POWER, ICE_BEAM, HYPER_BEAM, BODY_SLAM, RAIN_DANCE, PROTECT, RETURN, DIG, SWIFT, SLEEP_TALK, MIMIC, REST, THIEF, SURF, STRENGTH, WHIRLPOOL, WATERFALL 
	;end