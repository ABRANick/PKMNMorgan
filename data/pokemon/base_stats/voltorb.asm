	db SABLEYE ; 164
	db  40,  30,  50,  100,  55,  55
    evs  0,   0,   0,   1,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, ELECTRIC ; type
	db 190 ; catch rate
	db 66 ; base exp
	db NO_ITEM, POKE_BALL ; items
	db GENDER_UNKNOWN ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/voltorb/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROLLOUT, TOXIC, HIDDEN_POWER, BODY_SLAM, LIGHT_SCREEN, RAIN_DANCE, PROTECT, SHOCK_WAVE, THUNDERBOLT, RETURN, SWIFT, REFLECT, SLEEP_TALK, MIMIC, SIGNAL_BEAM, FLASH_CANNON, REST, THUNDER_WAVE, SELFDESTRUCT
	;end
	