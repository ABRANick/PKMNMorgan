	db PIKACHU ; 24

	db  45,  80,  50,  120,  75,  60
    evs  0,   0,   0,   2,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, ELECTRIC ; type
	db 190 ; catch rate
	db 112 ; base exp
	db LIGHT_BALL, LIGHT_BALL ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/spikachu/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm DYNAMICPUNCH, HEADBUTT, CURSE, ROAR, TOXIC, HIDDEN_POWER, SEISMIC_TOSS, BODY_SLAM, LIGHT_SCREEN, RAIN_DANCE, PROTECT, SHOCK_WAVE, THUNDERBOLT, RETURN, DIG, LOW_SWEEP, SWIFT, DAZZLINGLEAM, SLEEP_TALK, MIMIC, SIGNAL_BEAM, FLASH_CANNON, REST, THUNDER_WAVE, THUNDERPUNCH, FIRE_PUNCH, FLY, SURF, STRENGTH, FLASH
	;end
	