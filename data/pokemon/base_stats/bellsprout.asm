	db CACNEA ; 89
	db  50,  75,  35,  40,  70,  30
    evs  0,   1,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db GRASS, POISON ; type
	db 255 ; catch rate
	db 60 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/bellsprout/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm CURSE, TOXIC, GIGA_DRAIN, HIDDEN_POWER, SUNNY_DAY, LIGHT_SCREEN, PROTECT, SOLARBEAM, RETURN, SWIFT, REFLECT, SLUDGE_BOMB, SLEEP_TALK, MIMIC, REST, THIEF, CUT
	;end
	