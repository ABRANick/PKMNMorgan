mon_cry: MACRO
; index, pitch, length
	dw \1, \2, \3
ENDM

PokemonCries::
; entries correspond to constants/pokemon_constants.asm
	mon_cry CRY_CATERPIE,    147,  160 ;RALTS	
	mon_cry CRY_GLIGAR,     0,  200    ;KIRLIA 
	mon_cry CRY_GLIGAR,     0,  483   ;GARDEVOIR  
    mon_cry CRY_GLIGAR,     0,  483   ;GARDEVOIRM
    mon_cry CRY_RATTATA,       -20,  512 ;ZIGZAGOON   
	mon_cry CRY_RATTATA,     -25,  612 ;LINOONE
    mon_cry CRY_WEEDLE,      $0ee,  $081  ;WEEDLE   
	mon_cry CRY_BLASTOISE,   255,  129 ;KAKUNA   
	mon_cry CRY_BLASTOISE,    96,  256 ;BEEDRILL  
    mon_cry CRY_PIDGEY,      223,  132 ; STARLY
	mon_cry CRY_PIDGEOTTO,    40,  320 ; STARAVIA
	mon_cry CRY_PIDGEOTTO,    17,  383 ; STARAPTOR
    mon_cry CRY_CYNDAQUIL,   969,  128 ;SHINX    
	mon_cry CRY_CYNDAQUIL,   844,  256 ;LUXIO   
	mon_cry CRY_CYNDAQUIL,   720,  330 ;LUXRAY 
    mon_cry CRY_ODDISH,      221,  129 ;ODDISH      
	mon_cry CRY_ODDISH,      170,  192 ;GLOOM     
	mon_cry CRY_VILEPLUME,    34,  383 ;VILEPLUME     
	mon_cry CRY_CLEFFA,      132,  336 ;BELLOSSOM      
	mon_cry CRY_PIDGEY,      255,  383 ;POLIWAG  
	mon_cry CRY_PIDGEY,      119,  224 ;POLIWHIRL    
	mon_cry CRY_PIDGEY,        0,  383 ;POLIWRATH   
	mon_cry CRY_CLEFFA,     -675,  456 ;POLITOED
    mon_cry CRY_NIDORAN_M,     0,  256 ;NIDORAN_M  
	mon_cry CRY_NIDORAN_M,    44,  320 ;NIDORINO    
	mon_cry CRY_RAICHU,        0,  256 ;NIDOKING    
	mon_cry CRY_NIDORAN_F,     0,  256 ;NIDORAN_F   
	mon_cry CRY_NIDORAN_F,    44,  352 ;NIDORINA    
	mon_cry CRY_NIDOQUEEN,     0,  256 ;NIDOQUEEN 
    mon_cry CRY_BULBASAUR,   238,  129 ;PIKACHU      
	mon_cry CRY_RAICHU,      238,  136 ;RAICHU  
	mon_cry CRY_NIDORAN_M,    32,  192 ;SANDSHREW   
	mon_cry CRY_NIDORAN_M,   255,  383 ;SANDSLASH 
    mon_cry CRY_BULBASAUR,   128,  129 	 ;BULBASAUR     
	mon_cry CRY_BULBASAUR,    32,  256	 ;IVYSAUR  
	mon_cry CRY_BULBASAUR,     0,  320 	 ;VENUSAUR  
	mon_cry CRY_CHARMANDER,   96,  192	 ;CHARMANDER  
	mon_cry CRY_CHARMANDER,   32,  192	 ;CHARMELEON   
	mon_cry CRY_CHARMANDER,    0,  256	 ;CHARIZARD  
	mon_cry CRY_SQUIRTLE,     96,  192	 ;SQUIRTLE  
	mon_cry CRY_SQUIRTLE,     32,  192	 ;WARTORTLE   
	mon_cry CRY_BLASTOISE,     0,  256	 ;BLASTOISE
	mon_cry CRY_SQUIRTLE,    224,  256  ;ZUBAT    
	mon_cry CRY_SQUIRTLE,    250,  256 ;GOLBAT     
	mon_cry CRY_SQUIRTLE,    -16,  320 ;CROBAT 
	mon_cry CRY_GOLEM,       230,  349  ;KOFFING      
	mon_cry CRY_GOLEM,       255,  383  ;WEEZING     
	mon_cry CRY_EKANS,        18,  192 ;EKANS       
	mon_cry CRY_EKANS,       224,  144 ;ARBOK   
	mon_cry CRY_CLEFAIRY,    119,  144 ;MEOWTH     
	mon_cry CRY_CLEFAIRY,    153,  383 ;PERSIAN
    mon_cry CRY_PSYDUCK,      230,  80 ;CANEA
    mon_cry CRY_WEEPINBELL,   68,  332 ;CACTURNE
    mon_cry CRY_AMPHAROS,    635,  324  ;WOBBUFFET
    mon_cry CRY_KRABBY,       32,  128  ;MAWILE 
	mon_cry CRY_VULPIX,      240,  144 ;GEODUDE    
	mon_cry CRY_VULPIX,        0,  256 ;GRAVELER     
	mon_cry CRY_GOLEM,       224,  192 ;GOLEM    
	mon_cry CRY_GROWLITHE,   238,  129 ;MACHOP    
	mon_cry CRY_GROWLITHE,    72,  224 ;MACHOKE    
	mon_cry CRY_GROWLITHE,     8,  320 ;MACHAMP     
	mon_cry CRY_METAPOD,     192,  129 ;ABRA  
	mon_cry CRY_METAPOD,     168,  320 ;KADABRA  
	mon_cry CRY_METAPOD,     152,  383 ;ALAKAZAM   
	mon_cry CRY_METAPOD,       0,  256 ;GASTLY    
	mon_cry CRY_METAPOD,      48,  192 ;HAUNTER  
	mon_cry CRY_MUK,           0,  383 ;GENGAR 
	mon_cry CRY_GROWLITHE,    32,  192 ;GROWLITHE 
	mon_cry CRY_WEEDLE,        0,  256 ;ARCANINE
	mon_cry CRY_VULPIX,       79,  144 ;VULPIX     
	mon_cry CRY_VULPIX,      136,  224 ;NINETALES 
	mon_cry CRY_PSYDUCK,      32,  224 ;PSYDUCK   
	mon_cry CRY_PSYDUCK,     255,  192 ;GOLDUCK
	mon_cry CRY_TEDDIURSA,  1954,  110 ;TEDDIURSA 
	mon_cry CRY_TEDDIURSA,  1600,  216 ;URSARING 
	mon_cry CRY_GROWLITHE,   24,  56 ;MAKUHITA   
	mon_cry CRY_GROWLITHE,   8,  128 ;HARIYAMA   
	mon_cry CRY_NIDOQUEEN,   221,  78  ;MEDITITE    
	mon_cry CRY_NIDOQUEEN,   221,  128 ;MEDICHAM 
	mon_cry CRY_CLEFAIRY,    204,  129 ;CLEFAIRY    
	mon_cry CRY_CLEFAIRY,    170,  160 ;CLEFABLE
	mon_cry CRY_EKANS,       255,  320 ;ONIX    
	mon_cry CRY_TYPHLOSION,  239,  247 ;STEELIX 
    mon_cry CRY_VENONAT,      68,  192 ;VENONAT      
	mon_cry CRY_VENONAT,      41,  256 ;VENOMOTH
    mon_cry CRY_SLOWKING,    128,  256 ; PINECO
	mon_cry CRY_SLOWKING,      0,  384 ; FORRETRESS
    mon_cry CRY_PSYDUCK,      85,  56 ;LOTAD   
	mon_cry CRY_DROWZEE,     136,  60; LOMBRE   
	mon_cry CRY_DROWZEE,     90,  128;LUDICOLO  
    mon_cry CRY_GRIMER,        0,  256 ; GRIMER
	mon_cry CRY_MUK,         239,  383 ; MUK
	mon_cry CRY_METAPOD,     128,  224 ;MAGNEMITE     
	mon_cry CRY_METAPOD,      32,  320 ;MAGNETON  
	mon_cry CRY_METAPOD,      32,  320 ;MAGNEZONE 
	mon_cry CRY_DUNSPARCE,   $112,  $0e8  ;CROAGUNK    
	mon_cry CRY_DUNSPARCE,   $000,  $180 ;TOXICROAK
    mon_cry CRY_KRABBY,        8,  192 ; MRMIME
	mon_cry CRY_SENTRET,      72,  560  ;PHANPY    
	mon_cry CRY_DONPHAN,       0,  416  ;DONPHAN
	mon_cry CRY_SENTRET,     102,  184 ;BUNEARY   
	mon_cry CRY_SENTRET,     135,  258 ;LOPUNNY
	mon_cry CRY_CHIKORITA,   -16,  176 ;CHIKORITA
	mon_cry CRY_CHIKORITA,   -34,  288 ;BAYLEEF  
	mon_cry CRY_CHIKORITA,  -183,  512 ;MEGANIUM    
	mon_cry CRY_CYNDAQUIL,   839,  128 ;CYNDAQUIL   
	mon_cry CRY_CYNDAQUIL,   801,  288 ;QUILAVA  
	mon_cry CRY_TYPHLOSION, 3840,  212 ;TYPHLOSION    
	mon_cry CRY_TOTODILE,   1132,  232 ;TOTODILE 
	mon_cry CRY_TOTODILE,   1088,  272 ;CROCONAW   
	mon_cry CRY_TOTODILE,   1020,  384  ;FERALIGATR   
	mon_cry CRY_DIGLETT,     187,  129 ;TAILOW 
	mon_cry CRY_DIGLETT,     153,  160 ;SWELLOW 
    mon_cry CRY_MAREEP,       34,  216 ;MAREEP 
	mon_cry CRY_MAREEP,       -7,  384 ;FLAAFFY  
	mon_cry CRY_AMPHAROS,   -124,  232 ;AMPHAROS
	mon_cry CRY_EKANS,         128,  0 ;FEEBAS     
	mon_cry CRY_EKANS,      520,  256  ;MILOTIC
	mon_cry CRY_EKANS,       128,  128 ;MAGIKARP    
	mon_cry CRY_EKANS,         0,  256 ;GYARADOS 
	mon_cry CRY_WOOPER,       83,  175 ;SNEASEL  
	mon_cry CRY_WOOPER,       83,  175 ;WEAVILE   
	mon_cry CRY_MARILL,      -31,  384 ;MURKROW     
	mon_cry CRY_MARILL,      -31,  384;HONCHKROW
	mon_cry CRY_HOOTHOOT,    304,  232 ;MISDREAVUS     
	mon_cry CRY_HOOTHOOT,    304,  232  ;MISMAGIUS 
	mon_cry CRY_GLIGAR,     -258,  256  ;GLIGAR  
	mon_cry CRY_GLIGAR,     -258,  256  ;GLISCOR 
	mon_cry CRY_CLEFAIRY,    153,  144 ;HORSEA     
	mon_cry CRY_CLEFAIRY,     60,  129 ;SEADRA       
	mon_cry CRY_SLUGMA,      763,  256 ;KINGDRA  
	mon_cry CRY_CYNDAQUIL,   510,  320;SWINUB     
	mon_cry CRY_MAGCARGO,   -265,  256 ;PILOSWINE     
	mon_cry CRY_MAGCARGO,   -265,  356 ;MAMOSWINE 
	mon_cry CRY_TOTODILE,     49,  200 ;YANMA  
	mon_cry CRY_TOTODILE,     49,  200 ;YANMEGA 
    mon_cry CRY_CHARMANDER,  255,  176 ;MAGMAR     
	mon_cry CRY_CHARMANDER,  255,  176 ;MAGMORTAR
    mon_cry CRY_VOLTORB,     143,  383 ;ELECTABUZZ  
	mon_cry CRY_VOLTORB,     143,  383 ;ELECTIVIRE 
	mon_cry CRY_CYNDAQUIL,    57,  320  ;HOUNDOUR     
	mon_cry CRY_TOTODILE,   -266,  256 ;HOUNDOOM   
	mon_cry CRY_PARAS,         2,  160 ;STARYU    
	mon_cry CRY_PARAS,         0,  256 ;STARMIE   
	mon_cry CRY_DIGLETT,       0,  256 ;EXEGGCUTE       
	mon_cry CRY_DROWZEE,       0,  256 ;EXEGGUTOR 
	mon_cry CRY_AMPHAROS,     53,  224 ;HERACROSS 
    mon_cry CRY_AMPHAROS,   2217,  384 ; SKARMORY
	mon_cry CRY_AIPOM,        44,  264  ;TYROGUE    
 	mon_cry CRY_SEEL,	    238,  320  ;HITMONCHAN    
	mon_cry CRY_GOLEM,      128,  320  ;HITMONLEE
	mon_cry CRY_HOOTHOOT,    354,  256 ;UNOWN
    mon_cry CRY_PSYDUCK,      10,  84 ; TREECKO
	mon_cry CRY_TYPHLOSION, 200,  84 ; GROVYLE
    mon_cry CRY_TYPHLOSION, 600,  84 ;SCEPTILE
    mon_cry CRY_CHARMANDER,  -40,  192	 ;TORHIC 
    mon_cry CRY_CHARMANDER,   256,  256	 ;COMBUSKEN   
    mon_cry CRY_CHARMANDER,   365,  350	 ;BLAZIKEN 
    mon_cry CRY_TEDDIURSA,     2,  50 ;MUKIP     
	mon_cry CRY_TEDDIURSA,     -17,  106 ;MARSHTOMP    
	mon_cry CRY_TEDDIURSA,     -35,  200;SWAMPERT
	mon_cry CRY_SLUGMA,        0,  56 ;ARON     
	mon_cry CRY_TOTODILE,   -35,  210 ;LAIRON   
	mon_cry CRY_TOTODILE,   -60,  386 ;AGGRON 
	mon_cry CRY_SLUGMA,     -472,  220 ;NUMEL    
	mon_cry CRY_MAGCARGO,   -525,  320 ;CAMERUPT   
	mon_cry CRY_SUNFLORA,      0,  184 ;ROSELIA    
	mon_cry CRY_SUNFLORA,     -23,  255 ;ROSERADE
	mon_cry CRY_PIDGEOTTO,     0,  128  ;CARVANHA    
	mon_cry CRY_PIDGEOTTO,     -256,  256 ;SHARPEDO     
	mon_cry CRY_TOGEPI,       16,  56 ;SWABLU  
	mon_cry CRY_TOGETIC,      59,   128  ;ALTARIA 
	mon_cry CRY_DUNSPARCE,   512,  232  ;SHUPPET     
	mon_cry CRY_DUNSPARCE,     274,  384 ;BANETTE  
    mon_cry CRY_CLEFAIRY,      0,  256 ; CUBONE
    mon_cry CRY_KANGASKHAN,    0,  256 ; KANGASKHAN
	mon_cry CRY_ODDISH,       79,  224 ; MAROWAK
    mon_cry CRY_CLEFAIRY,    212,  386 ;GLAMEOW     
	mon_cry CRY_CLEFAIRY,    356,  512 ;PURUGLY
    mon_cry CRY_GRIMER,        260,  512 ;TROPIUS
	mon_cry CRY_MUK,         128,  256  ;TORKOAL
	mon_cry CRY_LAPRAS,        0,  256 ;LAPRAS 
    mon_cry CRY_CHARMANDER,    0,  256  ;RHYHORN      
	mon_cry CRY_RHYDON,        0,  256 ;RHYDON  
    mon_cry CRY_FEAROW,        0,  256  ;SHELLDER  
	mon_cry CRY_FEAROW,      111,  352 ;CLOYSTER
    mon_cry CRY_SEEL,        600,  320 ; SNORUNT
    mon_cry CRY_SEEL,        512,  512 ; GLALIE
    mon_cry CRY_PIDGEY,      512,  920 ; FROSLASS
    mon_cry CRY_WEEPINBELL,    0,  256 ; PONYTA
	mon_cry CRY_WEEPINBELL,   32,  320 ; RAPIDASH
    mon_cry CRY_AIPOM,      -352,  384 ;STANTLER
	mon_cry CRY_SQUIRTLE,     17,  192 ;TAUROS  
	mon_cry CRY_GLIGAR,     -461,  416 ;MILTANK 
	mon_cry CRY_GRIMER,       85,  129 ;SNORLAX 
	mon_cry CRY_PIDGEOTTO,    10,  320 ; CHANSEY
	mon_cry CRY_SLOWKING,    659,  320 ; BLISSEY
	mon_cry CRY_CLEFAIRY,      -30,  256 ;RIOLU  
	mon_cry CRY_ODDISH,       50,  224 ;LUCARIO 
	mon_cry CRY_MARILL,      104,  128  ;SURSKIT   
	mon_cry CRY_MARILL,      80,  256 ;MASQUERAIN
	mon_cry CRY_CLEFFA,     2904,  128 ;BALTOY    
	mon_cry CRY_CLEFFA,     2904,  256 ;CLAYDOL 
	mon_cry CRY_CATERPIE,      0,  256 ;SCYTHER     
	mon_cry CRY_AMPHAROS,      0,  352 ;SCIZOR  
	mon_cry CRY_SLOWPOKE,      0,  256 ;SLOWPOKE   
	mon_cry CRY_GROWLITHE,     0,  256 ;SLOWBRO      
	mon_cry CRY_SLOWKING,    260,  512 ;SLOWKING 
	mon_cry CRY_DROWZEE,     255,  383  ;JYNX 
    mon_cry CRY_SQUIRTLE,    128,  80 ;ABSOL  
	mon_cry CRY_HOOTHOOT,    145,  216 ; HOOTHOOT
	mon_cry CRY_HOOTHOOT,      0,  416 ; NOCTOWL
    mon_cry CRY_NIDORAN_M,     12,  128 ;SABLEYE 
	mon_cry CRY_VENONAT,     136,  224  ;EEVEE    
	mon_cry CRY_VENONAT,     170,  383 ;VAPOREON   
	mon_cry CRY_VENONAT,      61,  256 ;JOLTEON   
	mon_cry CRY_VENONAT,      16,  160 ;FLAREON   
	mon_cry CRY_AIPOM,       162,  320  ;ESPEON    
	mon_cry CRY_VENONAT,    -233,  240  ;UMBREON
    mon_cry CRY_LAPRAS,        -256,  128 ;SHELLOS     
	mon_cry CRY_LAPRAS,        -512,  256 ;GASTRODON      
	mon_cry CRY_WEEPINBELL,  170,  383 ;PORYGON     
	mon_cry CRY_GIRAFARIG,   115,  576 ;PORYGON2 
	mon_cry CRY_VILEPLUME,    32,  368 ;AERODACTYL   
	mon_cry CRY_CATERPIE,    187,  192 ;KABUTO     
	mon_cry CRY_FEAROW,      238,  129 ;KABUTOPS  
	mon_cry CRY_GROWLITHE,   240,  155 ;LILEEP    
	mon_cry CRY_GROWLITHE,   255,  255  ;CRADILY
	mon_cry CRY_BULBASAUR,    96,  192 ;DRATINI    
	mon_cry CRY_BULBASAUR,    64,  256 ;DRAGONAIR   
	mon_cry CRY_BULBASAUR,    60,  320 ;DRAGONITE  
    mon_cry CRY_RAIKOU,       95,  208 ;LARVITAR   
	mon_cry CRY_SPINARAK,   -475,  336 ;PUPITAR  
	mon_cry CRY_RAIKOU,     -256,  384  ;TYRANITAR 
	mon_cry CRY_VENONAT,     238,  64  ;BELDUM   
	mon_cry CRY_VENONAT,     238,  128  ;METANG    
	mon_cry CRY_VENONAT,     238,  256  ;METAGROSS  
	mon_cry CRY_KANGASKHAN,    64,  64  ;GIBLE   
	mon_cry CRY_KANGASKHAN,    32,  128 ;GABITE     
	mon_cry CRY_KANGASKHAN,    16,  256  ;GARCHOMP
	mon_cry CRY_RAICHU,      128,  192 ;ARTICUNO    
	mon_cry CRY_FEAROW,      255,  256 ;ZAPDOS    
	mon_cry CRY_RAICHU,      248,  192 ;MOLTRES 
	mon_cry CRY_RAIKOU,      558,  288  ;RAIKOU
	mon_cry CRY_ENTEI,         0,  416 ;ENTEI 
	mon_cry CRY_MAGCARGO,      0,  384 ;SUICUNE 
	mon_cry CRY_PARAS,       153,  383 ;MEWTWO  
    mon_cry CRY_ENTEI,       330,  512  ;LATIAS
    mon_cry CRY_ENTEI,       256,  512  ;LATIOS
	mon_cry CRY_TYPHLOSION,    600,  284 ;HEATRAN      
	mon_cry CRY_MANTINE,    -45,  212  ;CRESSELIA
    mon_cry CRY_KRABBY,      -66,  212 ;GIRATINA 
	mon_cry CRY_NIDORAN_M,     0,    0 ; 253
	mon_cry CRY_NIDORAN_M,     0,    0 ; 254
	mon_cry CRY_NIDORAN_M,     0,    0 ; 255
