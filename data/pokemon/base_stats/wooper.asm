	db STARLY ; 75

	db  55,  45,  45,  15,  25,  25
    evs  1,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db WATER, GROUND ; type
	db 255 ; catch rate
	db 45 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/wooper/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROLLOUT, ROAR, TOXIC, HAIL, BUBBLEBEAM, HIDDEN_POWER, ICE_BEAM, BODY_SLAM, RAIN_DANCE, PROTECT, RETURN, DIG, LOW_SWEEP, SWIFT, SLUDGE_BOMB, SLEEP_TALK, MIMIC, REST, SURF, STRENGTH, WHIRLPOOL, WATERFALL
	;end
	