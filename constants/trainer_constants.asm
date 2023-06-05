__trainer_class__ = 0

trainerclass: MACRO
\1 EQU __trainer_class__
__trainer_class__ = __trainer_class__ + 1
const_value = 1
ENDM

; trainer class ids
; `trainerclass` indexes are for:
; - TrainerClassNames (see data/trainers/class_names.asm)
; - TrainerClassAttributes (see data/trainers/attributes.asm)
; - TrainerClassDVs (see data/trainers/dvs.asm)
; - TrainerGroups (see data/trainers/party_pointers.asm)
; - TrainerEncounterMusic (see data/trainers/encounter_music.asm)
; - TrainerPicPointers (see data/trainers/pic_pointers.asm)
; - TrainerPalettes (see data/trainers/palettes.asm)
; - BTTrainerClassSprites (see data/trainers/sprites.asm)
; - BTTrainerClassGenders (see data/trainers/genders.asm)
; trainer constants are Trainers indexes, for the sub-tables of TrainerGroups (see data/trainers/parties.asm)
CHRIS EQU __trainer_class__
	trainerclass TRAINER_NONE ; 0
	const PHONECONTACT_MOM
	const PHONECONTACT_BIKESHOP
	const PHONECONTACT_BILL
	const PHONECONTACT_ELM
	const PHONECONTACT_BUENA
DEF NUM_NONTRAINER_PHONECONTACTS EQU const_value - 1

 ;Gym Leaders Etalon

	trainerclass TREY
	const TREY1

	trainerclass DARIA
	const DARIA1

	trainerclass ANNABELLE
	const ANNABELLE1

	trainerclass ERI
	const ERI1

	trainerclass TSUBAKI
	const TSUBAKI1

	trainerclass BEPPI
	const BEPPI1

	trainerclass NERO
	const NERO1

	trainerclass LORELEI
	const LORELEI1

;Rivals and Notable Trainers in Etalon

	trainerclass INDIGO
	const INDIGO1

	trainerclass INDIGO_2
	const INDIGO_21
	
	trainerclass ERI_2
	const ERI_21

	trainerclass TSUBAKI_2
	const TSUBAKI_21

	trainerclass LORELEI_2
	const LORELEI_21

; Kanto Gym Leaders	

	trainerclass BRUNO 
	const BRUNO1

	trainerclass MISTY  
	const MISTY1

	trainerclass BROCK 
	const BROCK1

	trainerclass AGATHA
	const AGATHA1

; Johto Gym Leaders

	trainerclass WHITNEY 
	const WHITNEY1

	trainerclass MYSTICALMAN 
	const EUSINE

	trainerclass SILVER
	const SILVER1

	trainerclass CHAMPION
	const LANCE

; Johto/Kanto E4 and CHAMPION

	trainerclass MORTY
	const MORTY1

	trainerclass SABRINA 
	const SABRINA1

	trainerclass GIOVANNI
	const GIOVANNI1
	
	trainerclass CLAIR 
	const CLAIR1

	trainerclass KAREN 
	const KAREN1

; Legendary Trainers

	trainerclass RED 
	const RED1

	trainerclass BLUE 
	const BLUE1

	trainerclass GREEN
	const GREEN1

KRIS EQU __trainer_class__
	trainerclass MORGAN
	const MORGAN1

; JamZ

	trainerclass VIOLA
	const VIOLA1

	trainerclass VIOLA_2
	const VIOLA_21

	trainerclass JAMZM
	const JAMZM1
	const JAMZM2
	const JAMZM3
	const JAMZM4

	trainerclass JAMZF
	const JAMZF1
	const JAMZF2

; Rocket 

	trainerclass GRUNTM 
	const GRUNTM_1
	const GRUNTM_2
	const GRUNTM_3
	const GRUNTM_4
	const GRUNTM_5
	const GRUNTM_6
	const GRUNTM_7
	const GRUNTM_8
	const GRUNTM_9
	const GRUNTM_10
	const GRUNTM_11
	const GRUNTM_12
	const GRUNTM_13
	const GRUNTM_14
	const GRUNTM_15
	const GRUNTM_16
	const GRUNTM_17
	const GRUNTM_18
	const GRUNTM_19
	const GRUNTM_20
	const GRUNTM_21
	const GRUNTM_22
	const GRUNTM_23
	const GRUNTM_24
	const GRUNTM_25
	const GRUNTM_26
	const GRUNTM_27
	const GRUNTM_28
	const GRUNTM_29
	const GRUNTM_30
	const GRUNTM_31

	trainerclass GRUNTF 
	const GRUNTF_1
	const GRUNTF_2
	const GRUNTF_3
	const GRUNTF_4
	const GRUNTF_5

	trainerclass EXECUTIVEM 
	const EXECUTIVEM_1
	const EXECUTIVEM_2
	const EXECUTIVEM_3
	const EXECUTIVEM_4

	trainerclass EXECUTIVEF ; 37
	const EXECUTIVEF_1
	const EXECUTIVEF_2

	trainerclass JESSIE
	const JESSIE1
	
	trainerclass RJAMES
	const RJAMES1

;General Trainers


	trainerclass BURGLAR ; 2f
	const DUNCAN
	const EDDIE
	const COREY

	trainerclass FIREBREATHER ; 30
	const OTIS
	const DICK
	const NED
	const BURT
	const BILL
	const WALT
	const RAY
	const LYLE

	trainerclass JUGGLER ; 31
	const IRWIN1
	const FRITZ
	const HORTON
	const IRWIN2
	const IRWIN3
	const IRWIN4

	trainerclass BLACKBELT_T ; 32
	const KENJO3
	const YOSHI
	const KENJO2
	const LAO
	const NOB
	const KIYO
	const LUNG
	const HONDA
	const RIKI

	trainerclass PSYCHIC_T ; 34
	const JOUICHI
	const KOUSHI


	trainerclass PICNICKER ; 35
	const LIZ1
	const GINA1
	const BROOKE
	const KIM
	const CINDY
	const HOPE
	const SHARON
	const DEBRA
	const GINA2
	const ERIN1
	const LIZ2
	const LIZ3
	const HEIDI
	const EDNA
	const GINA3
	const TIFFANY1
	const TIFFANY2
	const ERIN2
	const TANYA
	const TIFFANY3
	const ERIN3
	const LIZ4
	const LIZ5
	const GINA4
	const GINA5
	const TIFFANY4

	trainerclass CAMPER ; 36
	const ROLAND
	const TODD1
	const IVAN
	const ELLIOT
	const BARRY
	const LLOYD
	const DEAN
	const SID
	const HARVEY
	const DALE
	const TED
	const TODD2
	const TODD3
	const THOMAS
	const LEROY
	const DAVID
	const JOHN
	const JERRY
	const SPENCER
	const TODD4
	const TODD5
	const QUENTIN
	const DUTCH

	trainerclass SAGE ; 38
	const CHOW
	const NICO
	const JIN
	const TROY
	const JEFFREY
	const PING
	const EDMOND
	const NEAL
	const LI
	const GAKU
	const MASA
	const KOJI

	trainerclass MEDIUM ; 39
	const KUMIKO
	const MAYOI
	const CHIHIRO
	const HARUMI


	trainerclass BOARDER ; 3a
	const BRAD
	const DOUGLAS

	trainerclass POKEFANM ; 3b
	const WILLIAM
	const DEREK1
	const ROBERT
	const JOSHUA
	const CARTER
	const TREVOR
	const BRANDON
	const JEREMY
	const COLIN
	const DEREK2
	const DEREK3
	const ALEX
	const REX
	const ALLAN

	trainerclass KIMONO_GIRL ; 3c
	const NAOKO1
	const NAOKO2
	const SAYO
	const ZUKI
	const KUNI
	const MIKI
	
	trainerclass POKEFANF ; 3e
	const ROSALIE
	

	trainerclass OFFICER ; 41
	const KEITH
	const DIRK

	trainerclass OFFICERF ; 41
	const JENNY

	trainerclass NURSE
	const ELLIOT_5

	trainerclass GUITARIST ; 2b
	const CLYDE
	const VINCENT

	trainerclass HIKER ; 2c
	const ANTHONY1
	const RUSSELL
	const PHILLIP
	const LEONARD
	const ANTHONY2
	const BENJAMIN
	const ERIK
	const MICHAEL
	const PARRY1
	const TIMOTHY
	const BAILEY
	const ANTHONY3
	const TIM
	const NOLAND
	const SIDNEY
	const KENNY
	const JIM
	const DANIEL
	const PARRY2
	const PARRY3
	const ANTHONY4
	const ANTHONY5
	const JONES

	trainerclass BIKER ; 2d
	const BIKER_BENNY
	const KAZU
	const HARRIS
	const CHARLES
	const RILEY
	const JOEL
	const GLENN
	const BUZZ
	const CROW
	const BUTCH
	const TINY
	const ZEKE
	const DWAYNE

	trainerclass CUE_BALL
	const BASS
	const RIFF
	const MAC
	const ALYX
	const ARCHIE
		
	trainerclass SCIENTIST ; 14
	const ROSS
	const MITCH
	const JED
	const MARC
	const RICH

	trainerclass YOUNGSTER ; 16
	const JOEY1
	const MIKEY
	const ALBERT
	const GORDON
	const SAMUEL
	const IAN
	const JOEY2
	const JOEY3
	const WARREN
	const JIMMY
	const OWEN
	const JASON
	const JOEY4
	const JOEY5
	const LARRY2
	const JONAS
	const THEO2

	trainerclass LASS ;
	const NIEVA
	const VALERIE1
	const GISELLE
	const SHANNON2
	const MARIE
	const RIKKA

	trainerclass COOLTRAINERM ; 1b
	const NICK
	const AARON
	const PAUL
	const CODY
	const MIKE
	const GAVEN1
	const GAVEN2
	const RYAN
	const JAKE
	const GAVEN3
	const BLAKE
	const BRIAN
	const ERICK
	const ANDY
	const TYLER
	const SEAN
	const KEVIN
	const STEVE
	const ALLEN
	const DARIN
	const DARWIN
	const KAI

	trainerclass COOLTRAINERF ; 1c
	const GWEN
	const LOIS
	const KATE
	const IRENE
	const KELLY
	const JOYCE
	const BETH1
	const REENA1
	const MEGAN
	const BETH2
	const CAROL
	const QUINN
	const EMMA
	const CYBIL
	const JENN
	const BETH3
	const REENA2
	const REENA3
	const CARA

	trainerclass BEAUTY ; 1d
	const LISA
	const LIA
	const JESSICA
	const ALEXIS
	
	trainerclass GAMBLER
	const PIERRE
	const KARL
	const PHILIPPE
	const JORDAN 

	trainerclass POKEMANIAC ; 1e
	const LARRY
	const ANDREW
	const CALVIN
	const SHANE
	const BEN
	const BRENT1
	const RON
	const ETHAN
	const BRENT2
	const BRENT3
	const ISSAC
	const DONALD
	const ZACH
	const BRENT4
	const MILLER

	trainerclass GENTLEMAN ; 20
	const EDWARD
	const ALFRED
	const GREGORY
	const MIGUEL

	trainerclass SKIER ; 21
	const ROXANNE
	const CLARISSA


	trainerclass BUG_CATCHER ; 24

	const WADE1
	const ARNIE1
	const WADE2
	const WADE3
	const ARNIE2
	const ARNIE3
	const HUGO
	const WES 
	const GAEL


	trainerclass FISHER ; 25
	const JUSTIN
	const RALPH1
	const ARNOLD
	const KYLE
	const HENRY
	const MARVIN
	const TULLY1
	const ANDRE
	const RAYMOND
	const WILTON1
	const EDGAR
	const JONAH
	const MARTIN
	const STEPHEN
	const BARNEY
	const RALPH2
	const RALPH3
	const TULLY2
	const TULLY3
	const WILTON2
	const SCOTT
	const WILTON3
	const RALPH4
	const RALPH5
	const TULLY4
	const TONY2

	trainerclass SWIMMERM ; 26
	const HAROLD
	const SIMON
	const RANDALL
	const CHARLIE
	const GEORGE
	const BERKE
	const KIRK
	const MATHEW
	const HAL
	const PATON
	const DARYL
	const WALTER
	const TONY
	const JEROME
	const TUCKER
	const RICK
	const CAMERON
	const SETH
	const JAMES
	const LEWIS
	const PARKER

	trainerclass SWIMMERF ; 27
	const ELAINE
	const PAULA
	const KAYLEE
	const SUSIE
	const DENISE
	const KARA
	const WENDY
	const JILL
	const MARY
	const KATIE
	const DAWN
	const TARA
	const NICOLE
	const LORI
	const JODY
	const NIKKI
	const DIANA
	const BRIANA

	trainerclass SAILOR ; 28
	const DAVEY
	const HURLEY
	const TERRELL
	const KENT
	const ERNEST
	const JEFF
	const GARRETT
	const KENNETH
	const STANLY
	const HARRY
	const HUEY2
	const HUEY3
	const HUEY4

	trainerclass SUPER_NERD ; 29
	const STAN
	const GREGG
	const JAY
	const DAVE
	const SAMON
	const TOM
	const SHAWN
	const TERU
	const RUSS
	const NORTON
	const HUGH
	const MARKUS
	const WILLIAM1
	const ERIC
	const PAT

	trainerclass COOLTRAINM
	const FERN
	
	trainerclass COOLTRAINF
	const AVRIL

	trainerclass BATTLEGIRL
	const SAM 
	const KYOKO

	trainerclass SENSEI
	const KENJI
	const KENJI2

	trainerclass HAGA ; 3
	const HAGA1

; legacy trainers, remove at some point 

	trainerclass FALKNER ; 1
	const FALKNER1


	trainerclass PRYCE ; 5
	const PRYCE1

	trainerclass JASMINE ; 6
	const JASMINE1

	trainerclass CHUCK ; 7
	const CHUCK1

	trainerclass RIVAL1 ; 9
	const RIVAL1_1_CHIKORITA
	const RIVAL1_1_CYNDAQUIL
	const RIVAL1_1_TOTODILE
	const RIVAL1_2_CHIKORITA
	const RIVAL1_2_CYNDAQUIL
	const RIVAL1_2_TOTODILE
	const RIVAL1_3_CHIKORITA
	const RIVAL1_3_CYNDAQUIL
	const RIVAL1_3_TOTODILE
	const RIVAL1_4_CHIKORITA
	const RIVAL1_4_CYNDAQUIL
	const RIVAL1_4_TOTODILE
	const RIVAL1_5_CHIKORITA
	const RIVAL1_5_CYNDAQUIL
	const RIVAL1_5_TOTODILE

	trainerclass POKEMON_PROF ; a

	trainerclass WILL ; b
	const WILL1

	trainerclass CAL ; c
	const CAL1
	const CAL2
	const CAL3


	trainerclass KOGA ; f
	const KOGA1


	trainerclass LT_SURGE ; 13
	const LT_SURGE1

	
	trainerclass ERIKA ; 15
	const ERIKA1

	trainerclass SCHOOLBOY ; 17
	const JACK1
	const KIPP
	const ALAN1
	const JOHNNY
	const DANNY
	const TOMMY
	const DUDLEY
	const JOE
	const BILLY
	const CHAD1
	const NATE
	const RICKY
	const JACK2
	const JACK3
	const ALAN2
	const ALAN3
	const CHAD2
	const CHAD3
	const JACK4
	const JACK5
	const ALAN4
	const ALAN5
	const CHAD4
	const CHAD5

	trainerclass BIRD_KEEPER ; 18
	const ROD
	const ABE
	const BRYAN
	const THEO
	const TOBY
	const DENIS
	const VANCE1
	const HANK
	const ROY
	const BORIS
	const BOB
	const JOSE1
	const PETER
	const JOSE2
	const PERRY
	const BRET
	const JOSE3
	const VANCE2
	const VANCE3

	trainerclass JANINE ; 1a
	const JANINE1
		

	trainerclass TEACHER ; 22
	const COLETTE
	const HILLARY
	const SHIRLEY



	trainerclass RIVAL2 ; 2a
	const RIVAL2_1_CHIKORITA
	const RIVAL2_1_CYNDAQUIL
	const RIVAL2_1_TOTODILE
	const RIVAL2_2_CHIKORITA
	const RIVAL2_2_CYNDAQUIL
	const RIVAL2_2_TOTODILE
	
	trainerclass BLAINE ; 2e
	const BLAINE1


	trainerclass TWINS ; 3d
	const AMYANDMAY1
	const ANNANDANNE1
	const ANNANDANNE2
	const AMYANDMAY2
	const JOANDZOE1
	const JOANDZOE2
	const MEGANDPEG1
	const MEGANDPEG2
	const LEAANDPIA1
	const LEAANDPIA2


NUM_TRAINER_CLASSES EQU __trainer_class__
