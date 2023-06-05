; pokemon ids
; indexes for:
; - PokemonNames (see data/pokemon/names.asm)
; - BaseData (see data/pokemon/base_stats.asm)
; - EvosAttacksPointers (see data/pokemon/evos_attacks_pointers.asm)
; - EggMovePointers (see data/pokemon/egg_move_pointers.asm)
; - PokemonCries (see data/pokemon/cries.asm)
; - MonMenuIcons (see data/pokemon/menu_icons.asm)
; - PokemonPicPointers (see data/pokemon/pic_pointers.asm)
; - PokemonPalettes (see data/pokemon/palettes.asm)
; - PokedexDataPointerTable (see data/pokemon/dex_entry_pointers.asm)
; - AlphabeticalPokedexOrder (see data/pokemon/dex_order_alpha.asm)
; - EZChat_SortedPokemon (see data/pokemon/ezchat_order.asm)
; - NewPokedexOrder (see data/pokemon/dex_order_new.asm)
; - Pokered_MonIndices (see data/pokemon/gen1_order.asm)
; - AnimationPointers (see gfx/pokemon/anim_pointers.asm)
; - AnimationIdlePointers (see gfx/pokemon/idle_pointers.asm)
; - BitmasksPointers (see gfx/pokemon/bitmask_pointers.asm)
; - FramesPointers (see gfx/pokemon/frame_pointers.asm)
; - Footprints (see gfx/footprints.asm)
	const_def 1
	const RALTS 
	const KIRLIA 
	const GARDEVOIR
	const GARDEVOIRM
	const ZIGZAGOON
	const LINOONE
	const WEEDLE 
	const KAKUNA
	const BEEDRILL
	const STARLY 
	const STARAVIA
	const STARAPTOR
	const SHINX 
	const LUXIO 
	const LUXRAY
	const ODDISH 
	const GLOOM 
	const VILEPLUME
	const BELLOSSOM
	const POLIWAG 
	const POLIWHIRL
	const POLIWRATH
	const POLITOED
	const NIDORAN_M 
	const NIDORINO 
	const NIDOKING 
	const NIDORAN_F
	const NIDORINA 
	const NIDOQUEEN
	const PIKACHU 
	const RAICHU 
	const SANDSHREW 
	const SANDSLASH
	const BULBASAUR 
	const IVYSAUR
	const VENUSAUR
	const CHARMANDER 
	const CHARMELEON
	const CHARIZARD
	const SQUIRTLE 
	const WARTORTLE 
	const BLASTOISE
	const ZUBAT 
	const GOLBAT
	const CROBAT
	const KOFFING
	const WEEZING
	const EKANS 
	const ARBOK
	const MEOWTH
	const PERSIAN
	const CACNEA 
	const CACTURNE
	const WOBBUFFET
	const MAWILE
	const GEODUDE 
	const GRAVELER
	const GOLEM
	const MACHOP 
	const MACHOKE  
	const MACHAMP
	const ABRA 
	const KADABRA
	const ALAKAZAM
	const GASTLY 
	const HAUNTER
	const GENGAR
	const GROWLITHE 
	const ARCANINE 
	const VULPIX 
	const NINETALES 
	const PSYDUCK 
	const GOLDUCK
	const TEDDIURSA
	const URSARING
	const MAKUHITA
	const HARIYAMA
	const MEDITITE
	const MEDICHAM
	const CLEFAIRY
	const CLEFABLE
	const ONIX
	const STEELIX
	const VENONAT 
	const VENOMOTH
	const PINECO
	const FORRETRESS
	const LOTAD 
	const LOMBRE
	const LUDICOLO
	const GRIMER 
	const MUK 
	const MAGNEMITE 
	const MAGNETON
	const MAGNEZONE
	const CROAGUNK 
	const TOXICROAK
	const MR_MIME 
	const PHANPY 
	const DONPHAN
	const BUNEARY
	const LOPUNNY
	const CHIKORITA 
	const BAYLEEF
	const MEGANIUM
	const CYNDAQUIL 
	const QUILAVA
	const TYPHLOSION
	const TOTODILE 
	const CROCONAW
	const FERALIGATR
	const TAILOW 
	const SWELLOW 
	const MAREEP
	const FLAAFFY
	const AMPHAROS
	const FEEBAS 
	const MILOTIC 
	const MAGIKARP 
	const GYARADOS
	const SNEASEL 
	const WEAVILE 
	const MURKROW 
	const HONCHKROW
	const MISDREAVUS 
	const MISMAGIUS
	const GLIGAR 
	const GLISCOR
	const HORSEA 
	const SEADRA 
	const KINGDRA 
	const SWINUB 
	const PILOSWINE
	const MAMOSWINE
	const YANMA 
	const YANMEGA 
	const MAGMAR 
	const MAGMORTAR 
	const ELECTABUZZ 
	const ELECTIVIRE
	const HOUNDOUR 
	const HOUNDOOM
	const STARYU
	const STARMIE
	const EXEGGCUTE 
	const EXEGGUTOR
	const HERACROSS 
	const SKARMORY
	const TYROGUE
	const HITMONCHAN
	const HITMONLEE
	const UNOWN
	const TREECKO
DEF JOHTO_POKEMON EQU const_value
	const GROVYLE
	const SCEPTILE
	const TORCHIC 
	const COMBUSKEN
	const BLAZIKEN
	const MUDKIP 
	const MARSHTOMP
	const SWAMPERT
	const ARON 
	const LAIRON 
	const AGGRON
	const NUMEL 
	const CAMERUPT
	const ROSELIA 
	const ROSERADE
	const CARVANHA 
	const SHARPEDO
	const SWABLU
	const ALTARIA 
	const SHUPPET
	const BANETTE
	const CUBONE 
	const KANGASKHAN
	const MAROWAK
	const GLAMEOW 
	const PURUGLY
	const TROPIUS 
	const TORKOAL
	const LAPRAS
	const RHYHORN 
	const RHYDON
	const SHELLDER
	const CLOYSTER
	const SNORUNT
	const GLALIE
	const FROSLASS
	const PONYTA 
	const RAPIDASH
	const STANTLER 
	const TAUROS 
	const MILTANK 
	const SNORLAX
	const CHANSEY 
	const BLISSEY 
	const RIOLU 
	const LUCARIO 
	const SURSKIT 
	const MASQUERAIN
	const BALTOY 
	const CLAYDOL
	const SCYTHER 
	const SCIZOR 
	const SLOWPOKE 
	const SLOWBRO 
	const SLOWKING
	const JYNX 
	const ABSOL
	const HOOTHOOT 
	const NOCTOWL
	const SABLEYE
	const EEVEE
	const VAPOREON 
	const JOLTEON 
	const FLAREON 
	const ESPEON 
	const UMBREON 
	const SHELLOS 
	const GASTRODON 
	const PORYGON
	const PORYGON2
	const AERODACTYL
	const KABUTO 
	const KABUTOPS 
	const LILEEP 
	const CRADILY 
	const DRATINI 
	const DRAGONAIR 
	const DRAGONITE 
	const LARVITAR 
	const PUPITAR
	const TYRANITAR
	const BELDUM 
	const METANG
	const METAGROSS
	const GIBLE 
	const GABITE
	const GARCHOMP
	const ARTICUNO 
	const ZAPDOS 
	const MOLTRES 
	const RAIKOU 
	const ENTEI 
	const SUICUNE 
	const MEWTWO 
	const LATIAS 
	const LATIOS 
	const HEATRAN 
	const CRESSELIA 
	const GIRATINA 
NUM_POKEMON EQU const_value - 1
	const EGG        ; fd

; Unown forms
; indexes for:
; - UnownWords (see data/pokemon/unown_words.asm)
; - UnownPicPointers (see data/pokemon/unown_pic_pointers.asm)
; - UnownAnimationPointers (see gfx/pokemon/unown_anim_pointers.asm)
; - UnownAnimationIdlePointers (see gfx/pokemon/unown_idle_pointers.asm)
; - UnownBitmasksPointers (see gfx/pokemon/unown_bitmask_pointers.asm)
; - UnownFramesPointers (see gfx/pokemon/unown_frame_pointers.asm)
	const_def 1
	const UNOWN_A ;  1
	const UNOWN_B ;  2
	const UNOWN_C ;  3
	const UNOWN_D ;  4
	const UNOWN_E ;  5
	const UNOWN_F ;  6
	const UNOWN_G ;  7
	const UNOWN_H ;  8
	const UNOWN_I ;  9
	const UNOWN_J ; 10
	const UNOWN_K ; 11
	const UNOWN_L ; 12
	const UNOWN_M ; 13
	const UNOWN_N ; 14
	const UNOWN_O ; 15
	const UNOWN_P ; 16
	const UNOWN_Q ; 17
	const UNOWN_R ; 18
	const UNOWN_S ; 19
	const UNOWN_T ; 20
	const UNOWN_U ; 21
	const UNOWN_V ; 22
	const UNOWN_W ; 23
	const UNOWN_X ; 24
	const UNOWN_Y ; 25
	const UNOWN_Z ; 26
NUM_UNOWN EQU const_value - 1 ; 26
