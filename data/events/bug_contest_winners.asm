BugContestantPointers:
; there are NUM_BUG_CONTESTANTS + 1 entries
	dw BugContestant_BugCatcherDon ; this reverts back to the player
	dw BugContestant_BugCatcherDon
	dw BugContestant_BugCatcherEd
	dw BugContestant_CooltrainerMNick
	dw BugContestant_PokefanMWilliam
	dw BugContestant_BugCatcherBenny
	dw BugContestant_CamperBarry
	dw BugContestant_PicnickerCindy
	dw BugContestant_BugCatcherJosh
	dw BugContestant_YoungsterSamuel
	dw BugContestant_SchoolboyKipp

; contestant format:
;   db class, id
;   dbw 1st-place mon, score
;   dbw 2nd-place mon, score
;   dbw 3rd-place mon, score

BugContestant_BugCatcherDon:
	db BUG_CATCHER, HUGO
	dbw KAKUNA,     300
	dbw KAKUNA,    285
	dbw WEEDLE,   226

BugContestant_BugCatcherEd:
	db BUG_CATCHER, HUGO
	dbw BEEDRILL, 286
	dbw BEEDRILL, 251
	dbw WEEDLE,   237

BugContestant_CooltrainerMNick:
	db COOLTRAINERM, NICK
	dbw SCYTHER,    357
	dbw BEEDRILL, 349
	dbw HERACROSS,     368

BugContestant_PokefanMWilliam:
	db POKEFANM, WILLIAM
	dbw HERACROSS,     332
	dbw BEEDRILL, 324
	dbw VENONAT,    321

BugContestant_BugCatcherBenny:
	db BUG_CATCHER, HUGO
	dbw BEEDRILL, 318
	dbw WEEDLE,     295
	dbw WEEDLE,   285

BugContestant_CamperBarry:
	db CAMPER, BARRY
	dbw HERACROSS,     366
	dbw VENONAT,    329
	dbw KAKUNA,     314

BugContestant_PicnickerCindy:
	db PICNICKER, CINDY
	dbw BEEDRILL, 341
	dbw KAKUNA,    301
	dbw WEEDLE,   264

BugContestant_BugCatcherJosh:
	db BUG_CATCHER, HUGO
	dbw SCYTHER,    326
	dbw BEEDRILL, 292
	dbw KAKUNA,    282

BugContestant_YoungsterSamuel:
	db YOUNGSTER, SAMUEL
	dbw WEEDLE,     270
	dbw HERACROSS,     282
	dbw WEEDLE,   251

BugContestant_SchoolboyKipp:
	db SCHOOLBOY, KIPP
	dbw VENONAT,    267
	dbw VENOMOTH,      254
	dbw KAKUNA,     259
