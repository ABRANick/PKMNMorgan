evs: MACRO
	db (\1 << 6) | (\2 << 4) | (\3 << 2) | \4
	db (\5 << 6) | (\6 << 4)
ENDM

tmhm: MACRO
; used in data/pokemon/base_stats/*.asm
_tms1 = 0 ; TM01-TM24 (24)
_tms2 = 0 ; TM25-TM48 (24)
_tms3 = 0 ; TM49-TM50 + HM01-HM07 + MT01-MT03 (12/24)
rept _NARG
	if DEF(\1_TMNUM)
	if \1_TMNUM < 24 + 1
_tms1 = _tms1 | (1 << ((\1_TMNUM) - 1))
	elif \1_TMNUM < 48 + 1
_tms2 = _tms2 | (1 << ((\1_TMNUM) - 1 - 24))
	else
_tms3 = _tms3 | (1 << ((\1_TMNUM) - 1 - 48))
	endc
	else
		fail "\1 is not a TM, HM, or move tutor move"
	endc
	shift
endr
rept 3 ; TM01-TM24 (24/24)
	db _tms1 & $ff
_tms1 = _tms1 >> 8
endr
rept 3 ; TM25-TM48 (24/24)
	db _tms2 & $ff
_tms2 = _tms2 >> 8
endr
rept 2 ; TM49-TM50 + HM01-HM07 + MT01-MT03 (12/16)
	db _tms3 & $ff
_tms3 = _tms3 >> 8
endr
ENDM

BaseData::
INCLUDE "data/pokemon/base_stats/ralts.asm"
INCLUDE "data/pokemon/base_stats/kirlia.asm"
INCLUDE "data/pokemon/base_stats/gardevoir.asm"
INCLUDE "data/pokemon/base_stats/gardevoirm.asm"
INCLUDE "data/pokemon/base_stats/zigzagoon.asm"
INCLUDE "data/pokemon/base_stats/linoone.asm"
INCLUDE "data/pokemon/base_stats/weedle.asm"
INCLUDE "data/pokemon/base_stats/kakuna.asm"
INCLUDE "data/pokemon/base_stats/beedrill.asm"
INCLUDE "data/pokemon/base_stats/starly.asm"
INCLUDE "data/pokemon/base_stats/staravia.asm"
INCLUDE "data/pokemon/base_stats/staraptor.asm"
INCLUDE "data/pokemon/base_stats/shinx.asm"
INCLUDE "data/pokemon/base_stats/luxio.asm"
INCLUDE "data/pokemon/base_stats/luxray.asm"
INCLUDE "data/pokemon/base_stats/oddish.asm"
INCLUDE "data/pokemon/base_stats/gloom.asm"
INCLUDE "data/pokemon/base_stats/vileplume.asm"
INCLUDE "data/pokemon/base_stats/bellossom.asm"
INCLUDE "data/pokemon/base_stats/poliwag.asm"
INCLUDE "data/pokemon/base_stats/poliwhirl.asm"
INCLUDE "data/pokemon/base_stats/poliwrath.asm"
INCLUDE "data/pokemon/base_stats/politoed.asm"
INCLUDE "data/pokemon/base_stats/nidoranm.asm"
INCLUDE "data/pokemon/base_stats/nidorino.asm"
INCLUDE "data/pokemon/base_stats/nidoking.asm"
INCLUDE "data/pokemon/base_stats/nidoranf.asm"
INCLUDE "data/pokemon/base_stats/nidorina.asm"
INCLUDE "data/pokemon/base_stats/nidoqueen.asm"
INCLUDE "data/pokemon/base_stats/pikachu.asm"
INCLUDE "data/pokemon/base_stats/raichu.asm"
INCLUDE "data/pokemon/base_stats/sandshrew.asm"
INCLUDE "data/pokemon/base_stats/sandslash.asm"
INCLUDE "data/pokemon/base_stats/bulbasaur.asm"
INCLUDE "data/pokemon/base_stats/ivysaur.asm"
INCLUDE "data/pokemon/base_stats/venusaur.asm"
INCLUDE "data/pokemon/base_stats/charmander.asm"
INCLUDE "data/pokemon/base_stats/charmeleon.asm"
INCLUDE "data/pokemon/base_stats/charizard.asm"
INCLUDE "data/pokemon/base_stats/squirtle.asm"
INCLUDE "data/pokemon/base_stats/wartortle.asm"
INCLUDE "data/pokemon/base_stats/blastoise.asm"
INCLUDE "data/pokemon/base_stats/zubat.asm"
INCLUDE "data/pokemon/base_stats/golbat.asm"
INCLUDE "data/pokemon/base_stats/crobat.asm"
INCLUDE "data/pokemon/base_stats/koffing.asm"
INCLUDE "data/pokemon/base_stats/weezing.asm"
INCLUDE "data/pokemon/base_stats/ekans.asm"
INCLUDE "data/pokemon/base_stats/arbok.asm"
INCLUDE "data/pokemon/base_stats/meowth.asm"
INCLUDE "data/pokemon/base_stats/persian.asm"
INCLUDE "data/pokemon/base_stats/cacnea.asm"
INCLUDE "data/pokemon/base_stats/cacturne.asm"
INCLUDE "data/pokemon/base_stats/wobbuffet.asm"
INCLUDE "data/pokemon/base_stats/mawile.asm"
INCLUDE "data/pokemon/base_stats/geodude.asm"
INCLUDE "data/pokemon/base_stats/graveler.asm"
INCLUDE "data/pokemon/base_stats/golem.asm"
INCLUDE "data/pokemon/base_stats/machop.asm"
INCLUDE "data/pokemon/base_stats/machoke.asm"
INCLUDE "data/pokemon/base_stats/machamp.asm"
INCLUDE "data/pokemon/base_stats/abra.asm"
INCLUDE "data/pokemon/base_stats/kadabra.asm"
INCLUDE "data/pokemon/base_stats/alakazam.asm"
INCLUDE "data/pokemon/base_stats/gastly.asm"
INCLUDE "data/pokemon/base_stats/haunter.asm"
INCLUDE "data/pokemon/base_stats/gengar.asm"
INCLUDE "data/pokemon/base_stats/growlithe.asm"
INCLUDE "data/pokemon/base_stats/arcanine.asm"
INCLUDE "data/pokemon/base_stats/vulpix.asm"
INCLUDE "data/pokemon/base_stats/ninetales.asm"
INCLUDE "data/pokemon/base_stats/psyduck.asm"
INCLUDE "data/pokemon/base_stats/golduck.asm"
INCLUDE "data/pokemon/base_stats/teddiursa.asm"
INCLUDE "data/pokemon/base_stats/ursaring.asm"
INCLUDE "data/pokemon/base_stats/makuhita.asm"
INCLUDE "data/pokemon/base_stats/hariyama.asm"
INCLUDE "data/pokemon/base_stats/meditite.asm"
INCLUDE "data/pokemon/base_stats/medicham.asm"
INCLUDE "data/pokemon/base_stats/clefairy.asm"
INCLUDE "data/pokemon/base_stats/clefable.asm"
INCLUDE "data/pokemon/base_stats/onix.asm"
INCLUDE "data/pokemon/base_stats/steelix.asm"
INCLUDE "data/pokemon/base_stats/venonat.asm"
INCLUDE "data/pokemon/base_stats/venomoth.asm"
INCLUDE "data/pokemon/base_stats/pineco.asm"
INCLUDE "data/pokemon/base_stats/forretress.asm"
INCLUDE "data/pokemon/base_stats/lotad.asm"
INCLUDE "data/pokemon/base_stats/lombre.asm"
INCLUDE "data/pokemon/base_stats/ludicolo.asm"
INCLUDE "data/pokemon/base_stats/grimer.asm"
INCLUDE "data/pokemon/base_stats/muk.asm"
INCLUDE "data/pokemon/base_stats/magnemite.asm"
INCLUDE "data/pokemon/base_stats/magneton.asm"
INCLUDE "data/pokemon/base_stats/magnezone.asm"
INCLUDE "data/pokemon/base_stats/croagunk.asm"
INCLUDE "data/pokemon/base_stats/toxicroak.asm"
INCLUDE "data/pokemon/base_stats/mrmime.asm"
INCLUDE "data/pokemon/base_stats/phanpy.asm"
INCLUDE "data/pokemon/base_stats/donphan.asm"
INCLUDE "data/pokemon/base_stats/buneary.asm"
INCLUDE "data/pokemon/base_stats/lopunny.asm"
INCLUDE "data/pokemon/base_stats/chikorita.asm"
INCLUDE "data/pokemon/base_stats/bayleef.asm"
INCLUDE "data/pokemon/base_stats/meganium.asm"
INCLUDE "data/pokemon/base_stats/cyndaquil.asm"
INCLUDE "data/pokemon/base_stats/quilava.asm"
INCLUDE "data/pokemon/base_stats/typhlosion.asm"
INCLUDE "data/pokemon/base_stats/totodile.asm"
INCLUDE "data/pokemon/base_stats/croconaw.asm"
INCLUDE "data/pokemon/base_stats/feraligatr.asm"
INCLUDE "data/pokemon/base_stats/taillow.asm"
INCLUDE "data/pokemon/base_stats/swellow.asm"
INCLUDE "data/pokemon/base_stats/mareep.asm"
INCLUDE "data/pokemon/base_stats/flaaffy.asm"
INCLUDE "data/pokemon/base_stats/ampharos.asm"
INCLUDE "data/pokemon/base_stats/feebas.asm"
INCLUDE "data/pokemon/base_stats/milotic.asm"
INCLUDE "data/pokemon/base_stats/magikarp.asm"
INCLUDE "data/pokemon/base_stats/gyarados.asm"
INCLUDE "data/pokemon/base_stats/sneasel.asm"
INCLUDE "data/pokemon/base_stats/weavile.asm"
INCLUDE "data/pokemon/base_stats/murkrow.asm"
INCLUDE "data/pokemon/base_stats/honchkrow.asm"
INCLUDE "data/pokemon/base_stats/misdreavus.asm"
INCLUDE "data/pokemon/base_stats/mismagius.asm"
INCLUDE "data/pokemon/base_stats/gligar.asm"
INCLUDE "data/pokemon/base_stats/gliscor.asm"
INCLUDE "data/pokemon/base_stats/horsea.asm"
INCLUDE "data/pokemon/base_stats/seadra.asm"
INCLUDE "data/pokemon/base_stats/kingdra.asm"
INCLUDE "data/pokemon/base_stats/swinub.asm"
INCLUDE "data/pokemon/base_stats/piloswine.asm"
INCLUDE "data/pokemon/base_stats/mamoswine.asm"
INCLUDE "data/pokemon/base_stats/yanma.asm"
INCLUDE "data/pokemon/base_stats/yanmega.asm"
INCLUDE "data/pokemon/base_stats/magmar.asm"
INCLUDE "data/pokemon/base_stats/magmortar.asm"
INCLUDE "data/pokemon/base_stats/electabuzz.asm"
INCLUDE "data/pokemon/base_stats/electivire.asm"
INCLUDE "data/pokemon/base_stats/houndour.asm"
INCLUDE "data/pokemon/base_stats/houndoom.asm"
INCLUDE "data/pokemon/base_stats/staryu.asm"
INCLUDE "data/pokemon/base_stats/starmie.asm"
INCLUDE "data/pokemon/base_stats/exeggcute.asm"
INCLUDE "data/pokemon/base_stats/exeggutor.asm"
INCLUDE "data/pokemon/base_stats/heracross.asm"
INCLUDE "data/pokemon/base_stats/skarmory.asm"
INCLUDE "data/pokemon/base_stats/tyrogue.asm"
INCLUDE "data/pokemon/base_stats/hitmonchan.asm"
INCLUDE "data/pokemon/base_stats/hitmonlee.asm"
INCLUDE "data/pokemon/base_stats/unown.asm"
INCLUDE "data/pokemon/base_stats/treecko.asm"
INCLUDE "data/pokemon/base_stats/grovyle.asm"
INCLUDE "data/pokemon/base_stats/sceptile.asm"
INCLUDE "data/pokemon/base_stats/torchic.asm"
INCLUDE "data/pokemon/base_stats/combusken.asm"
INCLUDE "data/pokemon/base_stats/blaziken.asm"
INCLUDE "data/pokemon/base_stats/mudkip.asm"
INCLUDE "data/pokemon/base_stats/marshtomp.asm"
INCLUDE "data/pokemon/base_stats/swampert.asm"
INCLUDE "data/pokemon/base_stats/aron.asm"
INCLUDE "data/pokemon/base_stats/lairon.asm"
INCLUDE "data/pokemon/base_stats/aggron.asm"
INCLUDE "data/pokemon/base_stats/numel.asm"
INCLUDE "data/pokemon/base_stats/camerupt.asm"
INCLUDE "data/pokemon/base_stats/roselia.asm"
INCLUDE "data/pokemon/base_stats/roserade.asm"
INCLUDE "data/pokemon/base_stats/carvanha.asm"
INCLUDE "data/pokemon/base_stats/sharpedo.asm"
INCLUDE "data/pokemon/base_stats/swablu.asm"
INCLUDE "data/pokemon/base_stats/altaria.asm"
INCLUDE "data/pokemon/base_stats/shuppet.asm"
INCLUDE "data/pokemon/base_stats/banette.asm"
INCLUDE "data/pokemon/base_stats/cubone.asm"
INCLUDE "data/pokemon/base_stats/kangaskhan.asm"
INCLUDE "data/pokemon/base_stats/marowak.asm"
INCLUDE "data/pokemon/base_stats/glameow.asm"
INCLUDE "data/pokemon/base_stats/purugly.asm"
INCLUDE "data/pokemon/base_stats/tropius.asm"
INCLUDE "data/pokemon/base_stats/torkoal.asm"
INCLUDE "data/pokemon/base_stats/lapras.asm"
INCLUDE "data/pokemon/base_stats/rhyhorn.asm"
INCLUDE "data/pokemon/base_stats/rhydon.asm"
INCLUDE "data/pokemon/base_stats/shellder.asm"
INCLUDE "data/pokemon/base_stats/cloyster.asm"
INCLUDE "data/pokemon/base_stats/snorunt.asm"
INCLUDE "data/pokemon/base_stats/glalie.asm"
INCLUDE "data/pokemon/base_stats/froslass.asm"
INCLUDE "data/pokemon/base_stats/ponyta.asm"
INCLUDE "data/pokemon/base_stats/rapidash.asm"
INCLUDE "data/pokemon/base_stats/stantler.asm"
INCLUDE "data/pokemon/base_stats/tauros.asm"
INCLUDE "data/pokemon/base_stats/miltank.asm"
INCLUDE "data/pokemon/base_stats/snorlax.asm"
INCLUDE "data/pokemon/base_stats/chansey.asm"
INCLUDE "data/pokemon/base_stats/blissey.asm"
INCLUDE "data/pokemon/base_stats/riolu.asm"
INCLUDE "data/pokemon/base_stats/lucario.asm"
INCLUDE "data/pokemon/base_stats/surskit.asm"
INCLUDE "data/pokemon/base_stats/masquerain.asm"
INCLUDE "data/pokemon/base_stats/baltoy.asm"
INCLUDE "data/pokemon/base_stats/claydol.asm"
INCLUDE "data/pokemon/base_stats/scyther.asm"
INCLUDE "data/pokemon/base_stats/scizor.asm"
INCLUDE "data/pokemon/base_stats/slowpoke.asm"
INCLUDE "data/pokemon/base_stats/slowbro.asm"
INCLUDE "data/pokemon/base_stats/slowking.asm"
INCLUDE "data/pokemon/base_stats/jynx.asm"
INCLUDE "data/pokemon/base_stats/absol.asm"
INCLUDE "data/pokemon/base_stats/hoothoot.asm"
INCLUDE "data/pokemon/base_stats/noctowl.asm"
INCLUDE "data/pokemon/base_stats/sableye.asm"
INCLUDE "data/pokemon/base_stats/eevee.asm"
INCLUDE "data/pokemon/base_stats/vaporeon.asm"
INCLUDE "data/pokemon/base_stats/jolteon.asm"
INCLUDE "data/pokemon/base_stats/flareon.asm"
INCLUDE "data/pokemon/base_stats/espeon.asm"
INCLUDE "data/pokemon/base_stats/umbreon.asm"
INCLUDE "data/pokemon/base_stats/shellos.asm"
INCLUDE "data/pokemon/base_stats/gastrodon.asm"
INCLUDE "data/pokemon/base_stats/porygon.asm"
INCLUDE "data/pokemon/base_stats/porygon2.asm"
INCLUDE "data/pokemon/base_stats/aerodactyl.asm"
INCLUDE "data/pokemon/base_stats/kabuto.asm"
INCLUDE "data/pokemon/base_stats/kabutops.asm"
INCLUDE "data/pokemon/base_stats/lileep.asm"
INCLUDE "data/pokemon/base_stats/cradily.asm"
INCLUDE "data/pokemon/base_stats/dratini.asm"
INCLUDE "data/pokemon/base_stats/dragonair.asm"
INCLUDE "data/pokemon/base_stats/dragonite.asm"
INCLUDE "data/pokemon/base_stats/larvitar.asm"
INCLUDE "data/pokemon/base_stats/pupitar.asm"
INCLUDE "data/pokemon/base_stats/tyranitar.asm"
INCLUDE "data/pokemon/base_stats/beldum.asm"
INCLUDE "data/pokemon/base_stats/metang.asm"
INCLUDE "data/pokemon/base_stats/metagross.asm"
INCLUDE "data/pokemon/base_stats/gible.asm"
INCLUDE "data/pokemon/base_stats/gabite.asm"
INCLUDE "data/pokemon/base_stats/garchomp.asm"
INCLUDE "data/pokemon/base_stats/articuno.asm"
INCLUDE "data/pokemon/base_stats/zapdos.asm"
INCLUDE "data/pokemon/base_stats/moltres.asm"
INCLUDE "data/pokemon/base_stats/raikou.asm"
INCLUDE "data/pokemon/base_stats/entei.asm"
INCLUDE "data/pokemon/base_stats/suicune.asm"
INCLUDE "data/pokemon/base_stats/mewtwo.asm"
INCLUDE "data/pokemon/base_stats/latios.asm"
INCLUDE "data/pokemon/base_stats/latias.asm"
INCLUDE "data/pokemon/base_stats/heatran.asm"
INCLUDE "data/pokemon/base_stats/cresselia.asm"
INCLUDE "data/pokemon/base_stats/giratina.asm"