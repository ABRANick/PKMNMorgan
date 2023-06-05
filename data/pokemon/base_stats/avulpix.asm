	db VULPIX ; 13

	db  38,  41,  40,  65,  50,  65
    evs  0,   0,   0,   1,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db ICE, ICE ; type
	db 190 ; catch rate
	db 60 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F75 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/avulpix/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

		; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROAR, TOXIC, HAIL, BUBBLEBEAM, HIDDEN_POWER, ICE_BEAM, BODY_SLAM, LIGHT_SCREEN, RAIN_DANCE, PROTECT, HEX, RETURN, PSYCHIC_M, SHADOW_BALL, SWIFT, REFLECT, DAZZLINGLEAM, SLEEP_TALK, MIMIC, REST, THIEF, FLASH
	;end
	