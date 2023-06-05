	db NIDORAN_F ; 21

	db  55,  47,  52,  41,  40,  40
    evs  1,  0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db POISON, POISON ; type
	db 235 ; catch rate
	db 55 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F100 ; gender ratio
	db 15 ; step cycles to hatch
	INCBIN "gfx/pokemon/nidoran_f/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROAR, TOXIC, BUBBLEBEAM, HIDDEN_POWER, AERIAL_ACE,  BODY_SLAM, SHADOW_CLAW, PROTECT, RETURN, DIG, SWIFT, REFLECT, FLAMETHROWER, SLUDGE_BOMB, SANDSTORM, MIMIC, REST, THUNDER_WAVE
	;end
	