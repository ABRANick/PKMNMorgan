	db GIRATINA ; 252

	db 100, 103,  75, 127, 120,  75
    evs  0,   0,   0,   3,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db GRASS, FLYING ; type
	db 45 ; catch rate
	db 240 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 120 ; step cycles to hatch
	INCBIN "gfx/pokemon/shaymin/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROAR, TOXIC, GIGA_DRAIN, HIDDEN_POWER, SUNNY_DAY, AERIAL_ACE, HYPER_BEAM, BODY_SLAM, RAIN_DANCE, SHADOW_CLAW, PROTECT, SOLARBEAM, EARTHQUAKE, RETURN, SHADOW_BALL, LOW_SWEEP, SWIFT, SLEEP_TALK, MIMIC, STEEL_WING, SIGNAL_BEAM, REST, THIEF, CUT, FLY
	;end
	