	db STARAVIA ; 76

	db  95,  90,  90,  35,  65,  65
    evs  2,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db WATER, GROUND ; type
	db 90 ; catch rate
	db 151 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/quagsire/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm DYNAMICPUNCH, HEADBUTT, CURSE, ROLLOUT, ROAR, TOXIC, HAIL, BUBBLEBEAM, HIDDEN_POWER, ICE_BEAM, SEISMIC_TOSS, HYPER_BEAM, BODY_SLAM, RAIN_DANCE, PROTECT, EARTHQUAKE, RETURN, DIG, LOW_SWEEP, SWIFT, SLUDGE_BOMB, SANDSTORM, SLEEP_TALK, MIMIC, ROCK_SLIDE, REST, ICE_PUNCH, SURF, STRENGTH, WHIRLPOOL, WATERFALL
	;end
	