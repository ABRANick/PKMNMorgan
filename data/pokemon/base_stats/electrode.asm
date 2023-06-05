	db FROSLASS ; 165
	db  60,  50,  70,  150,  80,  80
    evs  0,   0,   0,   1,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, ELECTRIC ; type
	db 90 ; catch rate
	db 172 ; base exp
	db NO_ITEM, POKE_BALL ; items
	db GENDER_UNKNOWN ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/electrode/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROLLOUT, TOXIC, HIDDEN_POWER, HYPER_BEAM, BODY_SLAM, LIGHT_SCREEN, RAIN_DANCE, PROTECT, SHOCK_WAVE, THUNDERBOLT, RETURN, SWIFT, REFLECT, SLEEP_TALK, MIMIC, SIGNAL_BEAM, FLASH_CANNON, REST, THUNDER_WAVE, SELFDESTRUCT
	;end
	