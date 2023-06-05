	db VULPIX ; 70

	db  38,  41,  40,  65,  50,  65
    evs  0,   0,   0,   1,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db ICE, ICE ; type
	db 190 ; catch rate
	db 60 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F75 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/vulpix/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

		; tm/hm learnset
	tmhm ;DOUBLE_EDGE, BODY_SLAM, HIDDEN_POWER, PROTECT, RETURN, SUBSTITUTE, SWIFT, ROAR, BUBBLEBEAM, RAIN_DANCE, HAIL, BLIZZARD, ICE_BEAM, CALM_MIND, LIGHT_SCREEN, PSYCHIC_M, REFLECT, THIEF, DAZZLINGLEAM, ATTRACT, BIDE, ENCORE, HEADBUTT, MIMIC, REFLECT, SLEEP_TALK, BONEMERANG
	;end
	