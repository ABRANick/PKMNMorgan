; Every Pokémon sorted by their Japanese names in gojūon order.
; Notably, Rhydon is missing (it should be before Rhyhorn).

EZChat_SortedPokemon:
	dw .a
	dw .i
	dw .u
	dw .e
	dw .o
	dw .ka_ga
	dw .ki_gi
	dw .ku_gu
	dw .ke_ge
	dw .ko_go
	dw .sa_za
	dw .shi_ji
	dw .su_zu
	dw .se_ze
	dw .so_zo
	dw .ta_da
	dw .chi_dhi
	dw .tsu_du
	dw .te_de
	dw .to_do
	dw .na
	dw .ni
	dw .nu
	dw .ne
	dw .no
	dw .ha_ba_pa
	dw .hi_bi_pi
	dw .fu_bu_pu
	dw .he_be_pe
	dw .ho_bo_po
	dw .ma
	dw .mi
	dw .mu
	dw .me
	dw .mo
	dw .ya
	dw .yu
	dw .yo
	dw .ra
	dw .ri
	dw .ru
	dw .re
	dw .ro
	dw .wa
	dw .end

.a:        db ABRA, AERODACTYL, AGGRON, ALAKAZAM, ALTARIA, AMPHAROS, NINETALES, ARBOK, ARCANINE, ARON, ARTICUNO, VULPIX, -1
.i:        db BALTOY, BANETTE, BAYLEEF, BEEDRILL, BELDUM, BELLOSSOM, CACNEA, BLASTOISE, BULBASAUR, BUNEARY, -1
.u:        db CAMERUPT, CARVANHA, LATIOS, CHANSEY, CHARIZARD, CHARMANDER, CHARMELEON, CHIKORITA, TORCHIC, CLAYDOL, CLEFABLE, CLEFAIRY, CLOYSTER, CROAGUNK, CRADILY, GLAMEOW, CRESSELIA, CROBAT, CROCONAW, CUBONE, CYNDAQUIL, -1
.e:        db GLALIE, STARAPTOR, ABSOL, DONPHAN, DRAGONAIR, DRAGONITE, DRATINI, -1
.o:        db EEVEE, EKANS, ELECTABUZZ, ELECTIVIRE, FROSLASS, SWAMPERT, ENTEI, ESPEON, EXEGGCUTE, EXEGGUTOR, -1
.ka_ga:    db NOCTOWL, FEEBAS, FERALIGATR, FLAAFFY, FLAREON, FORRETRESS, -1
.ki_gi:    db GABITE, GARCHOMP, GARDEVOIR, GASTLY, GASTRODON, GENGAR, GEODUDE, GIBLE, GLIGAR, GLISCOR, GLOOM, GOLBAT, GOLDUCK, GOLEM, GRAVELER, GRIMER, GROVYLE, GROWLITHE, GYARADOS, -1
.ku_gu:    db HARIYAMA, HAUNTER, HEATRAN, HERACROSS, HITMONCHAN, HITMONLEE, HONCHKROW, HORSEA, HOUNDOOM, HOUNDOUR, -1
.ke_ge:    db BLAZIKEN, IVYSAUR, -1
.ko_go:    db JOLTEON, JYNX, -1
.sa_za:    db KABUTO, KABUTOPS, KADABRA, KAKUNA, KINGDRA, KIRLIA, KOFFING, -1 ; RHYDON should lead this list
.shi_ji:   db LAIRON, LAPRAS, LARVITAR, LILEEP, LINOONE, LOMBRE, LOPUNNY, LOTAD, LUCARIO, LUDICOLO, LUXIO, LUXRAY, -1
.su_zu:    db MACHAMP, MACHOKE, MACHOP, MAGIKARP, MAGMAR, MAGMORTAR, MAGNEMITE, MAGNETON, MAGNEZONE, -1
.se_ze:    db MAKUHITA, MAMOSWINE, MAREEP, MAROWAK, MASQUERAIN, MAWILE, MEDICHAM, MEDITITE, MEGANIUM, -1
.so_zo:    db MEOWTH, METAGROSS, METANG, LATIAS, MEWTWO, MILOTIC, MILTANK, MISDREAVUS, MISMAGIUS, MOLTRES, COMBUSKEN, MUK, MURKROW, -1
.ta_da:    db NIDOKING, NIDOQUEEN, NIDORAN_F, NIDORAN_M, NIDORINA, NIDORINO, NINETALES, NUMEL,  -1
.chi_dhi:  db ODDISH, ONIX, -1
.tsu_du:   db PERSIAN, PHANPY, PIKACHU, PIKACHU, PILOSWINE, PINECO, MUDKIP, POLITOED, -1
.te_de:    db POLIWAG, POLIWHIRL, POLIWRATH, PONYTA, PORYGON, PORYGON2, MARSHTOMP, PSYDUCK, PUPITAR, -1
.to_do:    db STARAVIA , QUILAVA, -1
.na:       db RAICHU, RAIKOU, RALTS, MR_MIME, RAPIDASH, RHYDON, -1
.ni:       db RHYHORN, RIOLU, ROSELIA, ROSERADE, -1
.nu:       db SANDSHREW, SANDSLASH, SCIZOR, SCYTHER, SEADRA, SNORUNT, SHARPEDO, GIRATINA, -1
.ne:       db SHELLDER, SHELLOS, SHINX, SHUPPET, SKARMORY, SLOWBRO, SLOWKING, -1
.no:       db SLOWPOKE, SNEASEL, SNORLAX, HOOTHOOT, SQUIRTLE, STANTLER, STARMIE, STARYU, STEELIX, -1
.ha_ba_pa: db SUICUNE, SURSKIT, SWABLU, SWELLOW, SWINUB, -1
.hi_bi_pi: db TAILOW, TAUROS, TEDDIURSA, TORKOAL, SCEPTILE, -1
.fu_bu_pu: db TOTODILE, TOXICROAK, TROPIUS, TREECKO, TYPHLOSION, TYRANITAR, TYROGUE, -1
.he_be_pe: db UMBREON, UNOWN, URSARING, -1
.ho_bo_po: db VAPOREON, VENOMOTH, VENONAT, VENUSAUR, -1
.ma:       db PURUGLY, VILEPLUME, SABLEYE, VULPIX, -1
.mi:       db WARTORTLE, WEAVILE, WEEDLE, -1
.mu:       db CACTURNE, WEEZING, WOBBUFFET, -1
.me:       db STARLY, YANMA, -1
.mo:       db YANMEGA, ZAPDOS, -1
.ya:       db ZIGZAGOON, ZUBAT, -1
.yu:       db  -1
.yo:       db  -1
.ra:       db  -1
.ri:       db  -1
.ru:       db  -1
.re:       db  -1
.ro:       db  -1
.wa:       db  -1
.end:      db -1
