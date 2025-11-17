# Lule Sami language model documentation

All doc-comment documentation in one large file.

---

## src-cg3-disambiguator.cg3.md 



#### Semantic tags

* Rules for removing some Props which are identical to common nouns

* **IfonlyVerb** selects the FMAINV reading in the cohort

Go for minimal weight (requires --with-backend-format=openfst-tropical)
* @NO CODE@

## Removing Err/Orth

* * *

<small>This (part of) documentation was generated from [src/cg3/disambiguator.cg3](https://github.com/giellalt/lang-smj/blob/main/src/cg3/disambiguator.cg3)</small>

---

## src-fst-morphology-affixes-abbreviations.lexc.md 


## Continuation lexicons for abbreviations

### Lexica for adding tags and periods

### The sublexica

#### Continuation lexicons for abbrs both with and witout final period

* **LEXICON ab-noun   **

* **LEXICON ab-adj   **

* **LEXICON ab-adv   **

* **LEXICON ab-num   **

#### Lexicons without final period

* **LEXICON ab-nodot-noun   **  The bulk

* **LEXICON ab-nodot-adj   **

* **LEXICON ab-nodot-adv   **

* **LEXICON ab-nodot-num   **

#### Lexicons with final period

* **LEXICON ab-dot-noun   **  This is the lexicon for abbrs that must have a period.

* **LEXICON ab-dot-adj   **  This is the lexicon for abbrs that must have a period.

* **LEXICON ab-dot-adv   **  This is the lexicon for abbrs that must have a period.

* **LEXICON ab-dot-num   **  This is the lexicon for abbrs that must have a period.

* **LEXICON ab-dot-cc   **

* **LEXICON ab-dot-verb   **

* **LEXICON ab-nodot-verb   **

* **LEXICON ab-dot-IVprfprc   **

* **LEXICON nodot-attrnomaccgen-infl   **

* **LEXICON nodot-attr-infl   **

* **LEXICON nodot-nomaccgen-infl   **

* **LEXICON dot-attrnomaccgen-infl   **

* **LEXICON dot-attr   **

* **LEXICON dot-nomaccgen-infl   **

* **LEXICON DOT   ** - Adds the dot to dotted abbreviations.

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/affixes/abbreviations.lexc](https://github.com/giellalt/lang-smj/blob/main/src/fst/morphology/affixes/abbreviations.lexc)</small>

---

## src-fst-morphology-affixes-adjectives.lexc.md 



## Sublexica for Adjective

### Even-syllable stems

LEXICON GIEVRRA  Adjectives with attribute in WeG and -s. As 1a in Spiik. Sg Acc: gievrav, Attr: gievras.

* gárttje # Even-syllable test examples:*
* *gárttje:* `gárttje+A+Sg+Nom`
* *gártjev:* `gárttje+A+Sg+Acc`
* *gártjes:* `gárttje+A+Attr`
* *gártjep:* `gárttje+A+Der/Comp+A+Sg+Nom`

LEXICON NUORRA   Adjectives with attribute same as pred. As 1b in Spiik. Sg Acc: nuorav, Attr: nuorra.

* visská # Even-syllable test examples:*
* *visská:* `visská+A+Sg+Nom`
* *viskáv:* `visská+A+Sg+Acc`
* *visská:* `visská+A+Attr`
* *viskáp:* `visská+A+Der/Comp+A+Sg+Nom`

LEXICON GALLJE   Adjectives on -e, the attribute is in WeG and e > a. As 1d in Spiik. Sg Acc: galjev, Attr: galja.

* uhttse # Even-syllable test examples:*
* *uhttse:* `uhttse+A+Sg+Nom`
* *uhtsev:* `uhttse+A+Sg+Acc`
* *uhtsa:* `uhttse+A+Attr`
* *uhtses:* `uhttse+A+Attr` (Eng. # gets this attr from)
* *uhtsep:* `uhttse+A+Der/Comp+A+Sg+Nom`

LEXICON TJÁBBE   Adjectives on -e, the attribute is in WeG and e > a. Same as GALLJE only different adv derivation. Sg Acc: tjáppev, Attr: tjáppa.

* njálgge # Even-syllable test examples:*
* *njálgge:* `njálgge+A+Sg+Nom`
* *njálgev:* `njálgge+A+Sg+Acc`
* *njálga:* `njálgge+A+Attr`
* *njálgep:* `njálgge+A+Der/Comp+A+Sg+Nom`

LEXICON VILLDA   Adjectives with attribute same as pred, without CG. As 1b in Spiik. Sg Acc: nuorav, Attr: nuorra.

* frisska # Even-syllable test examples:*
* *frisska:* `frisska+A+Sg+Nom`
* *frisskav:* `frisska+A+Sg+Acc`
* *frisska:* `frisska+A+Attr`
* *frisskap:* `frisska+A+Der/Comp+A+Sg+Nom`

LEXICON HÁVSSKE   Adjectives with attribute -s, without WeG. As 1c in Spiik. Sg Acc: hávsskev, Attr: hávsskes.

* hoallá # Even-syllable test examples:*
* *hoallá:* `hoallá+A+Sg+Nom`
* *hoalláv:* `hoallá+A+Sg+Acc`
* *hoallás:* `hoallá+A+Attr`
* *hoalláp:* `hoallá+A+Der/Comp+A+Sg+Nom`

LEXICON TJUODDJE  Adjectives with attribute -is, without WeG. presently only "Tjuoddje" Sg Acc: tjuoddjev, Attr: tjuoddjis.

* tjuoddje # Even-syllable test examples:*
* *tjuoddje:* `tjuoddje+A+Sg+Nom`
* *tjuoddjev:* `tjuoddje+A+Sg+Acc`
* *tjuoddjis:* `tjuoddje+A+Attr`
* *tjuoddjep:* `tjuoddje+A+Der/Comp+A+Sg+Nom`

Pres.participles 

LEXICON SÁVADAHTTE   Causative-participles. No attribute. No comparision. As 1e in Spiik. Sg Acc: sávadahttev. PrsPrc of causative verbs "uttrykker at handlingen lar seg gjøre eller er verdt å gjøre" (Kintel 1991).

* vuojedahtte # Even-syllable test examples:*
* *vuojedahtte:* `vuojedahtte+A+Sg+Nom`
* *vuojedahttev:* `vuojedahtte+A+Sg+Acc`

LEXICON JUHKKE   participles with -s attributive. No comparision As 1e in Spiik. Sg Acc: juhkkev, Attr: juhkkes. Spiik: presens particip har med den attributive formen på -s betydelsen "någon som är duktig i, snabb til att, begiven att utföra handlingen".

* vuohttje # Even-syllable test examples:*
* *vuohttje:* `vuohttje+A+Sg+Nom`
* *vuohttjev:* `vuohttje+A+Sg+Acc`
* *vuohttjes:* `vuohttje+A+Attr`

LEXICON BÅRRE   participles without the -s attributive. As 1e in Spiik. Sg Acc: bårrev, Attr: bårre. Spiik: presens particip har med den attributiva formen utan -s betydelsen ºdem  som utför handlingenº.

* ednabårre # Even-syllable test examples:*
* *ednabårre:* `ednabårre+A+Sg+Nom`
* *ednabårrev:* `ednabårre+A+Sg+Acc`
* *ednabårre:* `ednabårre+A+Attr`

Test data:

Loan words lexicas

####  Correctly assimilated loanwords, derived from real noun.

LEXICON METÅVDÅLASJ  LOAN! Foreign -isk adjectives adapted in updated normative way. To smj ending -alasj, adjective is truly derived from a noun. Mekanisk-mekanihkka-mekanihkalasj, instead of mekánalasj that goes to MEKÁNALASJ_BADASS. Pred and attr are both -alasj. Attr same as pred. With comparatives. 

LEXICON METÅVDÅLASJ_CMP_INFL 

* kapitalismalasj # Even-syllable test examples:*
* *kapitalismalasj:* `kapitalismalasj+A+Sg+Nom`
* *kapitalismalattjav:* `kapitalismalasj+A+Sg+Acc`
* *kapitalismalasj:* `kapitalismalasj+A+Attr`
* *kapitalismalabbo:* `kapitalismalasj+A+Der/Comp+A+Sg+Nom`

LEXICON MEKANIHKA_MEKANIJKA_LASJ  LOAN! Same type of adjectives as METÅVDÅLASJ, only for adjektives that become mekanihkalasj in norway and mekanijkalasj in sweden, because of differences mekanik vs mekanikk>mekanijkka vs mekanihkka.  Attr same as pred. With comparatives. 

LEXICON IJJALASJ  Just lik  METÅVDÅLASJ only for words ending on ijjalasj/iddjalasj, so that we don't need a lot of Area and Err tags in stems file.

LEXICON IJJALASJ_CMP_INFL 

LEXICON OGIJJALASJ  Just like IJJALASJ only for words ending on ogijjalasj/ogiddjalasj, so that we don't need a lot of err tags in stems files. For words like "pedagogijjalasj" which also have "pedagåvgålasj" (not really a wrong derivation, but doesn't mean pedagogisk) and "pedagogalasj" err taged.  

LEXICON OGIJJALASJ_CMP_INFL  

LEXICON SJÅNÅLASJ_SJONAL  -sjonal/sjonell and -tional/tionel loanwords. Only for words that work as nouns, so that they are REAL dervations, as nasjonal-nasjåvnnå-nasjåvnålasj. NOT for words like "rasjonell", with no real noun. Words as "rasjonell>rasjonálla-rasjonálalasj" go to lexicon ÁLLA.  The fake derivation "nasjonálalasj" is err taged, so is the strange "nasjonálla/nasjunálla". 

LEXICON SJÅNÅLASJ_SJONAL_CMP_INFL  

* konstitusjåvnålasj # Even-syllable test examples:*
* *nasjåvnålasj:* `nasjåvnålasj+A+Sg+Nom`
* *nasjåvnålattjav:* `nasjåvnålasj+A+Sg+Acc`
* *nasjåvnålasj:* `nasjåvnålasj+A+Attr`

LEXICON SJÅNÅLASJ_SJONELL  -sjonal/sjonell and -tional/tionel loanwords. Only for words that work as nouns, so that they are REAL dervations, as nasjonal-nasjåvnnå-nasjåvnålasj. NOT for words like "rasjonell", with no real noun. Words as "rasjonell>rasjonálla-rasjonálalasj" go to lexicon ÁLLA.  The fake derivation "nasjonálalasj" is err taged, so is the strange "nasjonálla/nasjunálla". 

LEXICON SJÅNÅLASJ_SJONELL_CMP_INFL  

* konstitusjåvnålasj # Even-syllable test examples:*
* *konstitusjåvnålasj:* `konstitusjåvnålasj+A+Sg+Nom`
* *konstitusjåvnålattjav:* `konstitusjåvnålasj+A+Sg+Acc`
* *konstitusjåvnålasj:* `konstitusjåvnålasj+A+Attr`

####  Badly assimilated loanwords, some against norm others with no norm

LEXICON MEKÁNALASJ_BADASS  LOAN! Wronly assimilated -lasj adjectives from SE/NO -isk. Looks derived but isn't since there is no real noun to be derived from. Like mekanisk-mekánalasj, but "mekádna" is no real noun! Like  METÅVDÅLASJ, but gives the Err/Der tag, so it's only for these wronly/non-derived loan adjectives. 

LEXICON ARKTALASJ_CMP_INFL  Foreign -isk, that are not real derivations. Same as MEKÁNALASJ_BADASS, but no +Use/-Spell tag since ther is no "right" way to assimilate these. This is a question for GG. Adapted to smj by simply adding -alasj in place of -isk. These are not real derivations, but sitation borrowed loan adjectives. Only words without a noun base, like arktisk and syntetisk. Pred and attr are both -lasj. No comparatives. 

* syntetalasj # Even-syllable test examples:*
* *syntetalasj:* `syntetalasj+A+Sg+Nom`
* *syntetalattjav:* `syntetalasj+A+Sg+Acc`
* *syntetalasj:* `syntetalasj+A+Attr`

LEXICON ORÁNSSJA  Loan adjectives, not -isk. Used without the -lasj. Adjectives with attribute same as pred. So far only for oránssja.

LEXICON DEMONSTRATIJVA_LASJ_NO_NORM  Loan adjectives from norwegian/swedish (Not adjectives ending on -isk). Words like demonstrativ, transitiv, dupleks, informativ, analog, privat. Gives both "demonstratijvva" and "demonstratijvalasj". Two ways of adapting these adjectives are used, the adding of -lasj isn't okey, because that's a false derivation. But GG hasn't decided how these should be handled. Looks like noun instead of adjective when adapted without the -lasj ending.  Attr is in weak grad, used in strong grad ass pred even thou this seems a little bit odd "Værbba l transitijvva". 

LEXICON DEMONSTRATIJVA_LASJ_CMP_INFL    

* aktijvva # Even-syllable test examples:*
* *aktijva:* `aktijvva+A+Attr`
* *aktijvva:* `aktijvva+A+Sg+Nom`
* *aktijvav:* `aktijvva+A+Sg+Acc`

LEXICON ÁLA_LASJ_NO_NORM  Same as DEMONSTRATIJVA_LASJ_NO_NORM. Only for adjectives ending on -al. Words like digital,liberal, lokal.  Gives both "eksponentiálla" and "eksponentiálalasj". Different lexicon for these -al adjectives because of Err/Orth tags. OBS, "dialektal", is assimilated "dialevtalasj", and goes to lexicon  METÅVDÅLASJ.

LEXICON ÁLA_LASJ_INFL_CMP 

LEXICON ELLA_LASJ_NO_NORM  Loanwords, same as ÁLA_LASJ_NO_NORM  and  DEMONSTRANTIJVA_LASJ_NO_NORM. For NO and SE adjectives ending on -ell, eksperimentell, ideell, parallell. The short form is nom parallælla, attr, parallella The long form: paralellalasj, attr parallellalasj. Different lexicon for these -ell adjectives because of err/orth tags. OBS, "individuell", is assimilated "indivijdalasj", and goes to lexicon  METÅVDÅLASJ.

LEXICON ELLA_LASJ_INFL_CMP  

LEXICON ÁLLA-ÆLLA 

LEXICON MEKÁNALASJ_CMP_INFL  Same as  METÅVDÅLASJ only without vuohta. 

Inherent comparatives and superlatives lexica

LEXICON OANEP   Inherent comparatives, gives comp and superl.  Adjectives that are lexicalized in their comparative (and superlative) forms, like sisŋep, bárep.  Some entries are likely incorrect compared forms of other adjectives, like ådåp and ruvvap (more research needed).

* lagáp # Even-syllable test examples:*
* *lagáp:* `lagáp+A+Sg+Nom`
* *lagámus:* `lagáp+A+Der/Superl+A+Sg+Nom`

LEXICON TJAVGGÁMUS    Inherent superlatives, only gives superl. Some words are lexicalized in their superlative forms, like dájvvámus. Some are likely incorrect superlative forms, like tjábbámus (more research is needed)

* dájvvámus # Even-syllable test examples:*
* *dájvvámus:* `dájvvámus+A+Sg+Nom`

4-syllable miscellanious stems

LEXICON ÁRMMOGIS  Adjectives on -is, attribute same as pred. Odd-syllable comparison. As 2 in Spiik. Sg Acc: ármmogisáv, Attr: ármmogis. 

* bahágis # Even-syllable test examples:*
* *bahágis:* `bahágis+A+Sg+Nom`
* *bahágisáv:* `bahágis+A+Sg+Acc`
* *bahágis:* `bahágis+A+Attr`
* *bahágabbo:* `bahágis+A+Der/Comp+A+Sg+Nom`

LEXICON SÆHKÁLAK  Adjectives on -álak, attribute same as pred. Odd-syllable comparison. So far only for "sæhkálak".

* sæhkálak # Even-syllable test examples:*
* *sæhkálak:* `sæhkálak+A+Sg+Nom`
* *sähkálak:* `sæhkálak+A+Sg+Nom`
* *sæhkálagáv:* `sæhkálak+A+Sg+Acc`
* *sähkálagáv:* `sæhkálak+A+Sg+Acc`
* *sæhkálak:* `sæhkálak+A+Attr`
* *sähkálak:* `sæhkálak+A+Attr`
* *sæhkálabbo:* `sæhkálak+A+Der/Comp+A+Sg+Nom`
* *sähkálabbo:* `sæhkálak+A+Der/Comp+A+Sg+Nom`

LEXICON ÅLLAGSJ_CMP_INFL  Adjectives on -asj, attribute same as pred.  No comparatives. 2 in Spiik. Sg Acc: ållagattjav, Attr: ållagasj.

* belulasj # Even-syllable test examples:*
* *belulasj:* `belulasj+A+Sg+Nom`
* *belulattjav:* `belulasj+A+Sg+Acc`
* *belulasj:* `belulasj+A+Attr`

LEXICON DÁRBULASJ_CMP_INFL  Adjectives on -asj, attribute same as pred. Odd-syllable comparison. Sg Acc: dárbulattjav, Attr: dárbulasj. Essive -attjan, -adtjan is subtaged. Err/Orth also -ahttja.  

* dábálasj # Even-syllable test examples:*
* *dábálasj:* `dábálasj+A+Sg+Nom`
* *dábálattjav:* `dábálasj+A+Sg+Acc`
* *dábálasj:* `dábálasj+A+Attr`
* *dábális:* `dábálasj+A+Attr`
* *dábálabbo:* `dábálasj+A+Der/Comp+A+Sg+Nom`

LEXICON ASIDASJ_CMP_INFL  Adjectives on -asj, -is attr. Odd-syllable comparison. Sg Acc: asidattjav, Attr: asidis.

* gågulasj # Even-syllable test examples:*
* *gågulasj:* `gågulasj+A+Sg+Nom`
* *gågulattjav:* `gågulasj+A+Sg+Acc`
* *gågulis:* `gågulasj+A+Attr`
* *gågulabbo:* `gågulasj+A+Der/Comp+A+Sg+Nom`

LEXICON UDNODIBME  Adjectives on -dibme, attribute on -is. Odd-syllable comparison. Sg Acc: udnodimev, Attr: udnodis.

* gælvodibme # Even-syllable test examples:*
* *gælvodibme:* `gælvodibme+A+Sg+Nom`
* *gälvodibme:* `gælvodibme+A+Sg+Nom`
* *gælvodimev:* `gælvodibme+A+Sg+Acc`
* *gälvodimev:* `gælvodibme+A+Sg+Acc`
* *gælvodis:* `gælvodibme+A+Attr`
* *gälvodis:* `gælvodibme+A+Attr`
* *gælvodabbo:* `gælvodibme+A+Der/Comp+A+Sg+Nom`
* *gälvodabbo:* `gælvodibme+A+Der/Comp+A+Sg+Nom`

LEXICON TJALMEDIBME   Like UDNODIBME but no comparatives. Sg Acc: tjalmedimev, Attr: tjalmedis.

* huvsodibme # Even-syllable test examples:*
* *huvsodibme:* `huvsodibme+A+Sg+Nom`
* *huvsodimev:* `huvsodibme+A+Sg+Acc`
* *huvsodis:* `huvsodibme+A+Attr`

LEXICON SUOLASIEHKE  -siehke. Sg Acc: suolasiegev, attr: suolasiek

* hánessiehke # Even-syllable test examples:*
* *hánessiehke:* `hánessiehke+A+Sg+Nom`
* *hánessiegev:* `hánessiehke+A+Sg+Acc`
* *hánessiek:* `hánessiehke+A+Attr`

### Odd-syllable stems
####  With CG Sorted by attr

LEXICON TJIEGOS  Attr same as pred. For adjectives with -e in second syllable e>á: divtes>diktásav in StrG. As a. in Spiik.  Sg Acc: tjiehkusav, Attr: tjiegos. Consonant gradation. 

* hánes # Odd-syllable test examples:*
* *måskas:* `måskas+A+Sg+Nom`
* *moasskasav:* `måskas+A+Sg+Acc`
* *måskas:* `måskas+A+Attr`
* *moasskasabbo:* `måskas+A+Der/Comp+A+Sg+Nom`
* *bihtja:* `bihtja+A+Sg+Nom`
* *bihttjagav:* `bihtja+A+Sg+Acc`
* *bihtja:* `bihtja+A+Attr`
* *bihttjagabbo:* `bihtja+A+Der/Comp+A+Sg+Nom`

LEXICON LINES  Attr ending on -a. Adjektives ending on -es. Does same as TJIEGOS, but with attr -a.   As g. in Spiik.  lines, Sg Acc: lidnásav, attr: lidna. Consonant gradation.

* lines # Odd-syllable test examples:*
* *lines:* `lines+A+Sg+Nom`
* *lidnásav:* `lines+A+Sg+Acc`
* *lidna:* `lines+A+Attr`
* *lidnásabbo:* `lines+A+Der/Comp+A+Sg+Nom`

LEXICON GALMAS   Attr ending on -a or -å. Adjectives on -as, ås- and ás. As e. in Spiik. Sg Acc: galmmasav, attr: galmma, Consonant gradation.

* njuoskas # Odd-syllable test examples:*
* *njuoskas:* `njuoskas+A+Sg+Nom`
* *njuosskasav:* `njuoskas+A+Sg+Acc`
* *njuosska:* `njuoskas+A+Attr`
* *njuosskasabbo:* `njuoskas+A+Der/Comp+A+Sg+Nom`

LEXICON OAMES  Attr ending on -e. Adjectives on -es with attribute -e. As g2. in Spiik. Sg Acc: oabmásav, Attr: oabme. Consonant gradation.

* goastes # Odd-syllable test examples:*
* *goastes:* `goastes+A+Sg+Nom`
* *goasstásav:* `goastes+A+Sg+Acc`
* *goasste:* `goastes+A+Attr`
* *goasstásabbo:* `goastes+A+Der/Comp+A+Sg+Nom`

LEXICON SUOHKAT  Attr III -is, not suohkkadis but SUOHKKIS. With CG to attr, not from nom to Acc. Same as JALGGAT only with this CG. SUOHKKIS. Without CG between nom and acc. Adjectives on -at and -åt, with attribute III -is. As f. in Spiik. Sg Acc: suohkadav, attr: suohkkis,

* rávvat # Odd-syllable test examples:*
* *rávvat:* `rávvat+A+Sg+Nom`
* *rávvadav:* `rávvat+A+Sg+Acc`
* *rávvis:* `rávvat+A+Attr`
* *rávvadabbo:* `rávvat+A+Der/Comp+A+Sg+Nom`

LEXICON MÅJDÅS  Adjectives with no attr. With CG. Sg Acc: måjddåsav. If there is an attribute that dosn't fit to any lexicon it mus be hardcoded.

* rávdes # Odd-syllable test examples:*
* *rávdes:* `rávdes+A+Sg+Nom`
* *rávddásav:* `rávdes+A+Sg+Acc`
* *rávddásabbo:* `rávdes+A+Der/Comp+A+Sg+Nom`

Without CG

LEXICON VIEKSES  Attr same as pred. Without CG, but With vowel changes.  Sg Acc: væksásav, Attr: viekses. Like TJIEGOS only without the CG but with vowel changes. Mayby change this to a lexicon withput attr and then hardcode attr?

LEXICON ALEK  Attr same as pred. Without CG, without any vowel changes. Like TJIEGOS only without the CG an vowelchanges. 

* purpur # Odd-syllable test examples:*
* *purpur:* `purpur+A+Sg+Nom`
* *purpurav:* `purpur+A+Sg+Acc`
* *purpur:* `purpur+A+Attr`
* *purpurabbo:* `purpur+A+Der/Comp+A+Sg+Nom`

LEXICON BASSTEL   Attr ening on -is. Without CG. Adjs on -et, -l, -r, sm om -k, -sj with attr -is and no consonant gradation. As b. in Spiik. Sg Acc: basstelav, Attr: basstelis. Many of these entries might be instances of derivations, like belak, deblak, and maybe also basstel, bargán.

* goavrret # Odd-syllable test examples:*
* *goavrret:* `goavrret+A+Sg+Nom`
* *goavrredav:* `goavrret+A+Sg+Acc`
* *goavrredis:* `goavrret+A+Attr`
* *goavrredabbo:* `goavrret+A+Der/Comp+A+Sg+Nom`

LEXICON MUTTÁK  Two attr enings -is and same as pred. Without CG. Adjs on -ák/-ak/-ek, two attr: -is and same as pred. As c. in Spiik. Sg Acc: muttágav, Attr: muttágis and mutták. These seem to be instances of the adjectival -k derivation. Unclear whether such derivation have different attr forms or not, and thats maybe why some of these derivations are found in BASSTEL lexicon.

* bárvak # Odd-syllable test examples:*
* *bárvak:* `bárvak+A+Sg+Nom`
* *bárvagav:* `bárvak+A+Sg+Acc`
* *bárvak:* `bárvak+A+Attr`
* *bárvagis:* `bárvak+A+Attr`
* *bárvagabbo:* `bárvak+A+Der/Comp+A+Sg+Nom`

LEXICON JALGGAT  Attr III -is, not jalggadis but JALGGIS. Without CG.  Adjectives on -at, with attribute III -is. As f. in Spiik. Sg Acc: jalggadav, attr: jalggis,

* russjkat # Odd-syllable test examples:*
* *russjkat:* `russjkat+A+Sg+Nom`
* *russjkadav:* `russjkat+A+Sg+Acc`
* *russjkis:* `russjkat+A+Attr`
* *russjkadabbo:* `russjkat+A+Der/Comp+A+Sg+Nom`

LEXICON TJÅRGGÅT  Attr III -is, not tjårggådis but tjårggis. Without CG. Same as JALGGAT only for adjectives ending ot -åt. Adjectives on -åt, with attribute III -is. As f. in Spiik. Sg Acc: jalggadav, attr: jalggis,

* russjkat # Odd-syllable test examples:*
* *russjkat:* `russjkat+A+Sg+Nom`
* *russjkadav:* `russjkat+A+Sg+Acc`
* *russjkis:* `russjkat+A+Attr`
* *russjkadabbo:* `russjkat+A+Der/Comp+A+Sg+Nom`

LEXICON RIHTSOK  No attr, without CG and also without any vowelchanges. The lexicon gives no attribute, either because the adjective dosnºt have attr, because there is stemvowel change in attr that the lexicon canºt handle or because there are strange atrributes that donºt fit to any other lexicon (these attributes are hardcoded). Sg Acc: rihtsogav. 

* rihtsok # Odd-syllable test examples:*
* *rihtsok:* `rihtsok+A+Sg+Nom`
* *rihtsogav:* `rihtsok+A+Sg+Acc`
* *rihtsogabbo:* `rihtsok+A+Der/Comp+A+Sg+Nom`

exception lexicons for odd-syll

LEXICON IENNILS  no comparatives, attr same as pred.

* ieŋŋils # Odd-syllable test examples:*
* *ieŋŋils:* `ieŋŋils+A+Sg+Nom`
* *ieŋŋilsav:* `ieŋŋils+A+Sg+Acc`

LEXICON RÁDAS   Presently only used for "rádas". This word has special consonant gradation d>dd. Attr same as pred. Sg Acc: ráddasav, Attr: rádas. Consonant gradation.

* rádas # Odd-syllable test examples:*
* *rádas:* `rádas+A+Sg+Nom`
* *ráddasav:* `rádas+A+Sg+Acc`
* *rádas:* `rádas+A+Attr`
* *ráda:* `rádas+A+Attr` (Eng. # from LEXATTR)
* *ráddasabbo:* `rádas+A+Der/Comp+A+Sg+Nom`

LEXICON LUOBES   Err/Orth lexicon! Does the same as TJIEGOS only e>a instead of usuall e>á, must be some err/orth. Sg Acc: luohpasav, Attr: luobes. Consonant gradation. NO Attr, must be hardcoded

LEXICON LÅSSÅT  Two attr, two comp. As f3. in Spiik. So far the only word i this lexicon i "låssåt", because both låssis and låsså are attr and comparative is both låsep(hybrid?) and låssådabbo.

* låssåt # Odd-syllable test examples:*
* *låssåt:* `låssåt+A+Sg+Nom`
* *låssådav:* `låssåt+A+Sg+Acc`
* *låssis:* `låssåt+A+Attr`
* *låsså:* `låssåt+A+Attr`
* *låssådabbo:* `låssåt+A+Der/Comp+A+Sg+Nom`
* *låsep:* `låssåt+A+Der/Comp+A+Sg+Nom`

LEXICON STUORAK   Only for stuorak. It hase two attributes. Has even-syllable comparison: stuoráp and stuorámus.Sg Acc: stuoragav, attr: stuor and stuorra. This might be a -k derivation of adjective stuorre attr stuor(ra). The comparison is thus based on the original adjective and thus it naturally is an even syll comparison.

* stuorak # Odd-syllable test examples:*
* *stuorak:* `stuorak+A+Sg+Nom`
* *stuoragav:* `stuorak+A+Sg+Acc`
* *stuorra:* `stuorak+A+Attr`
* *stuor:* `stuorak+A+Attr`
* *stuoráp:* `stuorak+A+Der/Comp+A+Sg+Nom`

LEXICON ALLAK  Adjs on -ak, attr.on -a. Have both gasep/gaggagabbo and alep/allagabbo as comparatives. As d. in Spiik. So far only the adjectives "allak" and "gassak" go to this lexicon.

* gassak # Odd-syllable test examples:*
* *gassak:* `gassak+A+Sg+Nom`
* *gassagav:* `gassak+A+Sg+Acc`
* *gassa:* `gassak+A+Attr`
* *gassagabbo:* `gassak+A+Der/Comp+A+Sg+Nom`
* *gasep:* `gassak+A+Der/Comp+A+Sg+Nom`

LEXICON GÅBDDÅK   Adjs on -åk, attr. on -å. Has even-syllable comparison: gåbdep and gåbdemus. So far "gåbddåk" is the only word in this lexicon. As d2. in Spiik. Sg Acc: gåbddågav, Attr: gåbddå.

* gåbddåk # Odd-syllable test examples:*
* *gåbddåk:* `gåbddåk+A+Sg+Nom`
* *gåbddågav:* `gåbddåk+A+Sg+Acc`
* *gåbddå:* `gåbddåk+A+Attr`
* *gåbdep:* `gåbddåk+A+Der/Comp+A+Sg+Nom`

Inherent comparatives and superlatives

LEXICON NUORTTALABBO    Inherent comparatives, gives both comp and superl. Most of the words are the compared forms of -el(a) words, like nuorttal, lullel.

* guddnelabbo # Even-syllable test examples:*
* *guddnelabbo:* `guddnelabbo+A+Sg+Nom`
* *guddnelamos:* `guddnelabbo+A+Der/Superl+A+Sg+Nom`
* *guddnelap:* `guddnelabbo+A+Attr`
* *guddnelup:* `guddnelabbo+A+Attr`

LEXICON GASSKALAMOS    Inherent superlatives, gives onlys superl. Words that are lexicalized in their superlative forms. 

* ájtodamos # Even-syllable test examples:*
* *ájtodamos:* `ájtodamos+A+Sg+Nom`

### Contracted stems

LEXICON SÁDNES   Attr same as pred. Sg Acc: sáddnáv, Attr: sádnes.

* hávres # Contracted test examples:*
* *hávres:* `hávres+A+Sg+Nom`
* *hávrráv:* `hávres+A+Sg+Acc`
* *hávres:* `hávres+A+Attr`
* *hávrráp:* `hávres+A+Der/Comp+A+Sg+Nom`

LEXICON GOAVSOS   Attr same as pred. Sg Acc: goaksuv, Attr: goavsos.(goavsos is so far the only word in this lexicon)

* goavsos # Contracted test examples:*
* *goavsos:* `goavsos+A+Sg+Nom`
* *goaksuv:* `goavsos+A+Sg+Acc`
* *goaksusav:* `goavsos+A+Sg+Acc` (Eng. # From lexicon TJIEGOS)
* *goavsos:* `goavsos+A+Attr`
* *goaksup:* `goavsos+A+Der/Comp+A+Sg+Nom`
* *goaksusabbo:* `goavsos+A+Der/Comp+A+Sg+Nom` (Eng. # from lexicon TJIEGOS)

LEXICON SUVRES   Sg Acc: suvrráv, Attr: suvra.

* suvres # Contracted test examples:*
* *suvres:* `suvres+A+Sg+Nom`
* *suvrráv:* `suvres+A+Sg+Acc`
* *suvrrásav:* `suvres+A+Sg+Acc` (Eng. # From lexicon SJÆVNNJAT)
* *suvra:* `suvres+A+Attr`
* *suvrráp:* `suvres+A+Der/Comp+A+Sg+Nom`
* *suvrrásabbo:* `suvres+A+Der/Comp+A+Sg+Nom` (Eng. # from LINES)

LEXICON GÅLMAKTES   Attr same as pred. without cg but with vowel changes. Sg Acc: gålmaktáv, Attr: gålmaktes. VIEKSES makes odd-syll same thing. 

----

## Comparation

LEXICON BU/MUS   comparison for even-syll adjectives. Also derivates diminutive and adverbs from the comparisions.

LEXICON ABBO/AMOS   comparison for odd-syll adjectives.  Also derivates diminutive and adverbs from the comparisions.

LEXICON BUStem  Comparative even-syll, case and attr.

LEXICON ABBO  Comparative odd-syll, get case and attr. With the dialect differences "-ubbo" and "-æbbo".

### Superlative

LEXICON BUOREMUS  Superlative even-syll, get attr and nom case.

LEXICON AMOS  Superlative odd-syll, get case and attr. With the dialect differences "-umos" and "-æmos".

Comparative and Superlative sub-lexica

LEXICON CompSup-EVEN 

LEXICON CompSup-EVENWEAKSTEM  

LEXICON ATTR   Sends attributes to

LEXICON ATTR_PrsPrc   Attr without -vuohta derivation.

### Derivation of adjectives

LEXICON DenominalAdjsV1  ! even noun stems are sent here

LEXICON DenominalAdjsV1_1  ! even noun stems without grade alternation are sent here

LEXICON DenominalAdjsV2  ! even noun stems are sent here. -asj derivation

LEXICON DenominalAdjsKINO  ! unassimilated nouns are sent here

LEXICON DenominalAdjsODD   ! gives derivation -ahtes

LEXICON DenominalAdjsContr 

Derivations to adjectives, hardcoded in adjectives stems file

LEXICON DIEHTEMAHTES  ! odd syllable For hardcoded -ahtes words. Derived from odd-syll NomAct (Bårråt>bårråm-bårråmahtes), or from odd-syll verbs as buorránit>buorránahtes. Migth want to split lexicon in two.

LEXICON LÁGÁSJ 

LEXICON BÁJNUK  ! hardcoded denominal derivations, latus has changed from o>u, a>a, e>á (Bájnno>bájnuk, juolgge>juolgák, giella>gielak.  Attr same as pred, no comp in this lexicon. 

LEXICON TSÅHPÅK  ! hardcoded denominal derivations latus has changed from o>u, a>a, e>á AND -GIS attr. Attr same as pred is err/orth taged. no comp in this lexicon. 

LEXICON GIEVLEK  ! hardcoded derivations, not same as BÁJNUK since latus has unexpected vowel. Latus hasn't changed o>u, a>a, e>á. Goes directly to BÁJNUK, only made to sort these different kinds of derivations. Many of these may be derivated from verbs or other adjectives.

LEXICON SJERVAK  ! hardcoded derivations, not same as TSÅHPÅK since latus has unexpected vowel. Latus hasn't changed o>u, a>a, e>á. Goes directly to TSÅHPÅK, only made to sort these different kinds of derivations. Many of these may be derivated from verbs or other adjectives.

LEXICON DIBME  ! even and contracted

LEXICON LIS  ! Handlernomen på -is?

LEXICON Ahkásasj  ! lexicalized and denominal -asj derivations

LEXICON STÁVVALIS  ! Must be "stávvalis" in bot pred and attr, as "guovddelis". OK& Kintel 2012: stávval attr stávvalis this is err/orth taged, also as second compound, this is err/orth taged. No comparison.

Derivations to adjectives, continuation lexicon not for hardcoded adjectives

LEXICON AHTES  ! odd syllable, only a continuation lexicon for words that are not in adjectives stems. Just as DIEHTEMAHTES, only with the +A tag that adjectives already get i stems file.

LEXICON AHKES   

LEXICON AGAdj  ! denominal derivations go here, attr same as pred, no comp in this lexicon

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/affixes/adjectives.lexc](https://github.com/giellalt/lang-smj/blob/main/src/fst/morphology/affixes/adjectives.lexc)</small>

---

## src-fst-morphology-affixes-nouns.lexc.md 



## Sublexica for Noun

### Even-syllable stems

#### 2syll stems

LEXICON MUORRA  Standard even stems with cg (note Q1). OBS: Nouns with invisible 3>2 cg (as busºsa) go to this lexicon.

* # Even-syllable test examples:*
* *kártta:* `kártta+N+Sg+Nom`
* *kártajn:* `kártta+N+Sg+Com`

LEXICON TÁLLA  Same as MUORRA, but for words with º (extra length). Not in MUORRA because of other err/orths

LEXICON ALMME  Same as MUORRA, but with special -LASJ derivation. For noun that have strong grade -lasj. "Almmelasj" instead of "almálasj" which is Err/Orth-taged..

LEXICON NOADE  Even stem without cg. OBS: No nouns with invisible 3>2 cg (as busºsa) in this lexicon. OBS: Because of denominal nouns taking a weak grade stem, entries in grade 3 are given the gradation mark º in order to prevent alternation to weak grade. We should consider creating a separate denominal nouns lexicon for NOADE instead.

* låda # Even-syllable test examples:*
* *låda:* `låda+N+Sg+Nom`
* *lådas:* `låda+N+Sg+Ela`

LEXICON KÁFFA  For even-syll words with cg cg III-I: káf'fa-káfav, jáf'fo-jáfo. No vowelchanges jet, need new twolc code.

* káffa # Even-syllable test examples:*
* *káffa:* `káffa+N+Sg+Nom`
* *gáffa:* `káffa+N+Sg+Nom`
* *gáfas:* `káffa+N+Sg+Ela`
* *káfas:* `káffa+N+Sg+Ela`

LEXICON LINNJA  Only for the loan word "linnja". Because it's a loan word, the "nnj" is pronounced "nn-j", and therefore does not behave as the regular lule sami "nj" sound and therefore it doesn't follow the rule that makes a:á in 1. grade with short vowel in first syllable (It isn't as linnja-linjáv or birás-birrasav). This word is therefore sub taged. Norwegian/Swedish words with a short "i" followed by two different consonants are assimilated to lule sami in different manners accoring to the consonants in question, but the word is always on grade III (Morén-Duolljá 2014). Both err/orth and correct form is part of this lexicon. 

* linja # Even-syllable test examples:*

LEXICON BOAKSA  Only for word "boaksa". Both boaksa-båvsa and Err/Orth boaksa-båksa are part of lexicon.

LEXICON SÁMEGIEL  Compounds on -giella, with short -giel as middle compound (sámegielåhpadiddje)

* rievsakgiella # Even-syllable test examples:*
* *rievsakgiella:* `rievsakgiella+N+Sg+Nom`

LEXICON AHKA  Words like tjerastahka, with short compound form

* báládahka # Even-syllable test examples:*
* *báládahka:* `báládahka+N+Sg+Nom`
* *báládak:* `báládahka+N+Sg+Nom`
* *báládagáv:* `báládahka+N+Sg+Acc`

LEXICON DARRHA  Only for "darrha" or compounds that end on "darrha".

* báktedarrha # Even-syllable test examples:*
* *báktedarrha:* `báktedarrha+N+Sg+Nom`
* *báktedarháv:* `báktedarrha+N+Sg+Acc`

#### Nouns with comparatives

LEXICON GÁDDE  2 syllable stems with cg (note Q1) with comparatives, like MUORRA

* boassjo # Even-syllable test examples:*
* *boassjo:* `boassjo+N+Sg+Nom`
* *båssjujn:* `boassjo+N+Sg+Com`
* *boassjojn:* `boassjo+N+Sg+Com`
* *boassjop:* `boassjo+N+Der/Comp+A+Sg+Nom`

LEXICON VUODO  2 syllable stems without cg (note Q1) with comparatives, like NOADE

* låda # Even-syllable test examples:*
* *vuodo:* `vuodo+N+Sg+Nom`
* *vuodos:* `vuodo+N+Sg+Ela`

LEXICON SJIEVNNJET  Like GAHPER but with comparatives. Odd-syllable C-final noun without cg, no vowchange, no short Ess.

* stiebil # Odd-syllable test examples:*
* *sjievnnjet:* `sjievnnjet+N+Sg+Nom`
* *sjievnnjedis:* `sjievnnjet+N+Sg+Ela`
* *sjievnnjedabbo* `sjievnnje+N+Der/Comp+A+Sg+Nom`
* *sjievnnjedamos* `sjievnnje+N+Der/Superl+A+Sg+Nom`

LEXICON ÅLGGO  Like MUORRA, but with comparatives. This lexicon was previously without sg ill/ine/elat, but these nouns can be conjugated for regular location cases. However, "adverbs" like ålggot (from outside), nuorttan (at north), oarjas (to south), etc., are more commonly used to denote location/direction (should therefore maybe consider subing the regular location case forms).

* lulle # Even-syllable test examples:*
* *lulle:* `lulle+N+Sg+Nom`
* *lulev:* `lulle+N+Sg+Acc`
* *lulep:* `lulle+N+Der/Comp+A+Sg+Nom`

LEXICON MIEHTE  Like MUORRA but no locative/elative/illative sg. Presently no words in this lexica except for err subed nuortto

* nuortto # Even-syllable test examples:*
* *nuortto:* `nuortto+N+Sg+Nom`
* *nuortov:* `nuortto+N+Sg+Acc`

#### Plural stems

LEXICON BÅVSÅ  Like MUORRA, only in plural. All, except ganta, juvdá and ávta, have regular, singular stem counterparts.

* båvså # Even-syllable test examples:*
* *båvså:* `båvså+N+Pl+Nom`
* *båvsåjt:* `båvså+N+Pl+Acc`

LEXICON LÅHTSASA  Like GAHPER, only in plural. Without derivations, these should maybe be added. 

#### Partially assimilated loanwords. The first part of the word is "citation borrowed" and keeps its norwegian/swedish orthography, only the last two syllables are adapted to sami.

LEXICON MUORRA_LOAN   For loan words that do not fit in a loan word lexicon because of wrong short cmp, or partially assimilated loanwords without separate lexicas (medállja), or for Err/Orths assimilated with cg but with other errors. This lexicon gives no short compound forms. Potential short cmps must therefore be hard coded into the FirstComponent lexicon. This also for compounded words with partially assimilated loan words. Examples of problem words: sirup>siráhppa og stetoskop>stetoskoahppa.

LEXICON MUORRA_LOAN_NO_LASJ   Like MUORRA_LOAN without -lasj derivation. This lexicon is made for Sem/Hum words like økonåvmmå, biolåvggå, agronåvmmå and so on. We don't want agronåvmålasj since it means something else than "agronomisk", the meaning of agronåvmålasj is barely used but messed up with "agronomijjalasj"

LEXICON MUORRA_LOAN_EXTRA_LENGTH   Same as MUORRA_LOAN just for words with º (extra length). 

LEXICON KAFIEDJA_CMP_INFL   Recent loanwords on -edja. Ends on -é in norwegian. Short and long cmp. "Kafea" and "kaféa" are subtaged. See comments about the -ie/-e dialtags in ALFABIEHTTA.

LEXICON ALLEGORIJJA_CMP_INFL  Recent loanwords ending on -i in NOR/SWE, with long and short compound form. Standardized as-iddja (SWE) and -ijºja (NOR). Previously often assimilated as -ija (or just -ia), but both forms are ungrammatical: Short vowels cannot preceed and follow a single intervocalic consonant. -ija is thus ungrammatical as the short a would be lenghtened to á, like "idja-ijá".

* partijja # Even-syllable test examples:*
* *akademiddja:* `akademijja+N+Sg+Nom`
* *akademijja:* `akademijja+N+Sg+Nom`
* *akademidjas:* `akademijja+N+Sg+Ela`
* *akademijjas:* `akademijja+N+Sg+Ela`

LEXICON TEKSTIJLLA_CMP_INFL  Recent loanwords on -ijlla with long and short compound-form. . Frequently typos that does not follow lulesami rules are sub taged; These forms goes against the standarization rule, but are found because of earlier standarizations rules and dictionaries.

* tekstijlla # Even-syllable test examples:*
* *tekstijlla:* `tekstijlla+N+Sg+Nom`
* *tekstijlas:* `tekstijlla+N+Sg+Ela`

LEXICON ASIJLLA_CMP_INFL  Recent loanwords on -ijlla, from nor and swe words ending on -yl. With long and short compound-form.  Frequently typos that does not follow lulesami rules are sub taged; These forms goes against the standarization rule, but are found because of earlier standarizations rules and dictionaries.

* asijlla # Even-syllable test examples:*
* *asijlla:* `asijlla+N+Sg+Nom`
* *asijlas:* `asijlla+N+Sg+Ela`

LEXICON BENSIJNNA  Recent loanwords on -ijnna with long and short compound-form

LEXICON BENSIJNNA_CMP_INFL  Recent loanwords on -ijnna with long and short compound-form. Frequently typos that does not follow lulesami rules are sub taged; These forms goes against the standarization rule, but are found because of earlier standarizations rules and dictionaries.

* tamburijnna # Even-syllable test examples:*
* *tamburijnna:* `tamburijnna+N+Sg+Nom`
* *tamburijnas:* `tamburijnna+N+Sg+Ela`

LEXICON MASJIJNNA_CMP_INFL  Recent loanwords on -sjijnna with long and short compound-form: -SKIN

* bivtasmasjijnna # Even-syllable test examples:*
* *bivtasmasjijnna:* `bivtasmasjijnna+N+Sg+Nom`
* *bivtasmasjijnas:* `bivtasmasjijnna+N+Sg+Ela`

LEXICON ADJEKTIJVVA_CMP_INFL  Recent loanwords on -ijvva with long and short compound-form

* datijvva # Even-syllable test examples:*
* *datijvva:* `datijvva+N+Sg+Nom`
* *datijvas:* `datijvva+N+Sg+Ela`

LEXICON PARADIJSSA_CMP_INFL  Recent loanwords on -ijssa with long and short compound-form. Frequently typos that does not follow lulesami rules are sub taged; These forms goes against the standarization rule, but are found because of earlier standarizations rules and dictionaries.

* servijssa # Even-syllable test examples:*
* *servijssa:* `servijssa+N+Sg+Nom`
* *servijsas:* `servijssa+N+Sg+Ela`

LEXICON TELEFÅVNNÅ_CMP_INFL  Recent loanwords on -åvnnå with long and short compound-form. Frequently typos that does not follow lulesami rules are sub taged; These forms goes against the standarization rule, but are found because of earlier standarizations rules and dictionaries.

* persåvnnå # Even-syllable test examples:*
* *persåvnnå:* `persåvnnå+N+Sg+Nom`
* *persåvnås:* `persåvnnå+N+Sg+Ela`

LEXICON INSTITUSJÅVNNÅ_CMP_INFL   Recent loanwords on -sjåvnnå with long and short compound-form: -TION IN SWEDISH. Frequently typos that does not follow lulesami rules are sub taged; These forms goes against the standarization rule, but are found because of earlier standarizations rules and dictionaries.

* populasjåvnnå # Even-syllable test examples:*
* *populasjåvnnå:* `populasjåvnnå+N+Sg+Nom`
* *populasjåvnås:* `populasjåvnnå+N+Sg+Ela`

LEXICON MISJÅVNNÅ_CMP_INFL  Recent loanwords on -sjåvnnå with long and short compound-form: -SSION IN SWEDISH. Frequently typos that does not follow lulesami rules are sub taged; These forms goes against the standarization rule, but are found because of earlier standarizations rules and dictionaries.

* sesjåvnnå # Even-syllable test examples:*
* *sesjåvnnå:* `sesjåvnnå+N+Sg+Nom`
* *sesjåvnås:* `sesjåvnnå+N+Sg+Ela`

LEXICON PENSJÅVNNÅ_CMP_INFL  Recent loanwords on -sjåvnnå with long and short compound-form: -SION IN SWEDISH. Frequently typos that does not follow lulesami rules are sub taged; These forms goes against the standarization rule, but are found because of earlier standarizations rules and dictionaries.

* suspensjåvnnå # Even-syllable test examples:*
* *suspensjåvnnå:* `suspensjåvnnå+N+Sg+Nom`
* *suspensjåvnås:* `suspensjåvnnå+N+Sg+Ela`

LEXICON PARTISIHPPA_CMP_INFL  Recent loanwords from swe -cip and nor -sipp, becoming -sihppa in Norway, both -sijppa and -sihppa are used in Sweden (Particip vs partisipp). Short and long compound-form. 

* partisihppa # Even-syllable test examples:*
* *partisihppa:* `partisihppa+N+Sg+Nom`
* *partisihpas:* `partisihppa+N+Sg+Ela`
* *partisijppa:* `partisihppa+N+Sg+Nom`
* *partisijpas:* `partisihppa+N+Sg+Ela`

LEXICON ALKOHÅVLLÅ_CMP_INFL  Recent loanwords on -åvllå with long and short compound-form. The old stadarization form "alkohola" is sub taged. Frequently typos that does not follow lulesami rules are sub taged; These forms goes against the standarization rule, but are found because of earlier standarizations rules and dictionaries.

* parabåvllå # Even-syllable test examples:*
* *parabåvllå:* `parabåvllå+N+Sg+Nom`
* *parabåvlås:* `parabåvllå+N+Sg+Ela`

LEXICON AGRONÅVMMÅ_CMP_INFL  Recent loanwords on -åvmma with long and short compound-form. -lasj derivation is error taged. The old stadarization form  -oma that does not follow lulesami rules is sub taged.

* agronåvmmå # Even-syllable test examples:*
* *agronåvmmå:* `agronåvmmå+N+Sg+Nom`
* *agronåvmås:* `agronåvmmå+N+Sg+Ela`

LEXICON DEMAGÅVGGÅ_CMP_INFL  Recent loanwords ending on -og with long and short compound form. Assimilated to smj as -åvggå. -lasj derivation is error taged. The old stadarization -oga that does not follow lulesami rules is sub taged.

* pedagoga # Even-syllable test examples:*
* *pedagåvggå:* `pedagåvggå+N+Sg+Nom`
* *pedagåvggå:* `pedagåvggå+N+Sg+Nom`
* *pedagåvgås:* `pedagåvggå+N+Sg+Ela`

LEXICON LAKTÅVSSÅ_CMP_INFL  Recent loanwords ending on -ose in nrowegian and -os in swedish, with long and short compound form. Assimilated to smj as -åvsså. The old stadarization -oga that does not follow lulesami rules is sub taged.

* pedagoga # Even-syllable test examples:*
* *laktåvsså:* `laktåvsså+N+Sg+Nom`
* *laktåvsås:* `laktåvsså+N+Sg+Ela`

LEXICON FAKTÅVRRÅ_CMP_INFL  Recent loanwords on -åvrrå with long and short compound-form.

LEXICON MIKROSKÅVPPÅ_CMP_INFL  Recent loanwords on -åvppå (-op in NOB/SWE) with long and short compound-form.  Long vowel and short consonant is assimilated with njuoban, but somehow a lot of -op words are assimilated -oahppa (biskop is pronounced as -opp, so that's different, maybe some have used "biskop" as template), so this is Err/Orth taged. 

* oajvvekontåvrrå # Even-syllable test examples:*
* *oajvvekontåvrrå:* `oajvvekontåvrrå+N+Sg+Nom`
* *oajvvekontåvrås:* `oajvvekontåvrrå+N+Sg+Ela`

LEXICON KULTUVRRA_CMP_INFL  Recent loanwords on -vrra with long and short compound-form. Frequently typos that does not follow lulesami rules are sub taged; These forms goes against the standarization rule, but are found because of earlier standarizations rules and dictionaries.

* muvrra # Even-syllable test examples:*
* *muvrra:* `muvrra+N+Sg+Nom`
* *muvrajn:* `muvrra+N+Sg+Com`

LEXICON TERAPÆVTTA_CMP_INFL  Recent loanwords on -ævtta/ievtta with long and short compound-form. No -lasj derivation. Frequently typos that does not follow lulesami rules are sub taged; These forms goes against the standarization rule, but are found because of earlier standarizations rules and dictionaries.

* muvrra # Even-syllable test examples:*
* *terapævtta:* `terapævtta+N+Sg+Nom`
* *terapävtta:* `terapævtta+N+Sg+Nom`
* *terapievtta:* `terapævtta+N+Sg+Nom`
* *terapevtajn:* `terapævtta+N+Sg+Com`
* *terapievtajn:* `terapævtta+N+Sg+Com`

LEXICON ADVÆRBBA_CMP_INFL  Recent loanwords on -ærbba with long and short compound-form

* detransitijvvaværbba # Even-syllable test examples:*
* *detransitijvvaværbba:* `detransitijvvaværbba+N+Sg+Nom`
* *detransitijvvavärbba:* `detransitijvvaværbba+N+Sg+Nom`
* *detransitijvvaverbas:* `detransitijvvaværbba+N+Sg+Ela`

LEXICON SUBSTÁNSSA_CMP_INFL  Recent loanwords on -ánssa with long and short compound-form. Originally -ans in SWE and NOR. Frequently typos that does not follow lulesami rules are sub taged; These forms goes against the standarization rule, but are found because of earlier standarizations rules and dictionaries.

* instánssa # Even-syllable test examples:*
* *instánssa:* `instánssa+N+Sg+Nom`
* *instánsas:* `instánssa+N+Sg+Ela`

LEXICON VALÆNSSA_CMP_INFL  Recent loanwords on -ænssa with long and short compound-form. Frequently typos that does not follow lulesami rules are sub taged; These forms goes against the standarization rule, but are found because of earlier standarizations rules and dictionaries.

* intelligænssa # Even-syllable test examples:*
* *intelligænssa:* `intelligænssa+N+Sg+Nom`
* *intelligänssa:* `intelligænssa+N+Sg+Nom`
* *intelligensav:* `intelligænssa+N+Sg+Acc`

LEXICON ADVOKÁHTTA_CMP_INFL  Recent loanwords on -áhtta with long and short compound-form. Frequently typos that does not follow lulesami rules are sub taged; These forms goes against the standarization rule, but are found because of earlier standarizations rules and dictionaries.

* klimáhtta # Even-syllable test examples:*
* *klimáhtta:* `klimáhtta+N+Sg+Nom`
* *klimáhtas:* `klimáhtta+N+Sg+Ela`

 LEXICON ALFABIEHTTA_CMP_INFL  Recent loanwords originally on -et both in Norway and Sweden. Assimilation differences, however, create two lule sami forms: -iehtta in NOR and -æhtta in SWE. LONG -e is assimilated in different ways in Norway and Sweden: In Norway, it becomes -ie, and in Sweden -e. Tiedja/tedja, systiebma/systebma and so on. This is especially apparent in assimilated words with long e in third grade: E becomes æ in third grade so we get "universitæhtta" in SWE, but this is very strange to people on the norwegian side of the border as they want "universitiehtta". Both -ie and -e are dialtaged in lexicons HYDROGIEDNA, APOTIEHKKA, SYSTIEBMA, KAFÉ. Previously people often wrote -ehtta in Norway, but this is incorrect as e always becomes æ in grade three.

* mobilitiehtta # Even-syllable test examples:*
* *mobilitähtta:* `mobilitiehtta+N+Sg+Nom`
* *mobilitiehtta:* `mobilitiehtta+N+Sg+Nom`
* *mobilitehtav:* `mobilitiehtta+N+Sg+Acc`
* *mobilitiehtav:* `mobilitiehtta+N+Sg+Acc`

LEXICON INTERNÆHTTA_CMP_INFL  Recent loanwords on -æhtta with long and short compound-form: -ET IN SWEDISH, -ETT in norwegian. Differs from ALFABIEHTTA because -ehtta isn't used in NOR.

* intranæhtta # Even-syllable test examples:*
* *intranæhtta:* `intranæhtta+N+Sg+Nom`
* *intranähtta:* `intranæhtta+N+Sg+Nom`
* *intranehtas:* `intranæhtta+N+Sg+Ela`

LEXICON TABLÆHTTA_CMP_INFL  Recent loanwords on -æhtta with long and short compound-form. -ETT in both norwegian and in swedish.

* kvartæhtta # Even-syllable test examples:*
* *kvartæhtta:* `kvartæhtta+N+Sg+Nom`
* *kvartähtta:* `kvartæhtta+N+Sg+Nom`
* *kvartehtas:* `kvartæhtta+N+Sg+Ela`

LEXICON INSTITUHTTA_CMP_INFL  Recent loanwords on -uhtta, with long and short compound-form on -utt(NOR)/-ut(SWE). The swedish -ut also gets uvtta, as ANTIHKKA-antijkka, but instituhtta is also used in sweden, so no Area/NO tag. 

* minuhtta # Even-syllable test examples:*
* *minuhtta:* `minuhtta+N+Sg+Nom`
* *minuvtta:* `minuhtta+N+Sg+Nom`
* *minuhtas:* `minuhtta+N+Sg+Ela`
* *minuvtas:* `minuhtta+N+Sg+Ela`

LEXICON SATELIHTTA_CMP_INFL  Recent loanwords on -ihtta, with long and short compound-form on -itt(NOR)/-it(SWE). The swedish -it also gets ijtta, as ANTIHKKA-antijkka, but satelihtta is also used in sweden, so no Area/NO tag. 

* inuihtta # Even-syllable test examples:*
* *inuihtta:* `inuihtta+N+Sg+Nom`
* *inuijtta:* `inuihtta+N+Sg+Nom`
* *inuihtas:* `inuihtta+N+Sg+Ela`
* *inuijtas:* `inuihtta+N+Sg+Ela`

LEXICON APOTIEHKKA_CMP_INFL  Recent loanwords on -iehkka in NOR, -æhkka in SWE. -ehkka as sub. With long and short compound-form on -k. See comments about the -ie/-e dialtags in ALFABIEHTTA.

old "apotehkka" (long e not allowed in grad III, even though it's in dictionaries it's wrong)

* kartotiehkka # Even-syllable test examples:*
* *kartotähkka:* `kartotiehkka+N+Sg+Nom`
* *kartotehkas:* `kartotiehkka+N+Sg+Ela`
* *kartotiehkka:* `kartotiehkka+N+Sg+Nom`
* *kartotiehkas:* `kartotiehkka+N+Sg+Ela`

LEXICON ANTIHKKA_CMP_INFL  Recent loanwords on -hkka in Norway, both -ijkka and -hkka are used in Sweden (Antik vs antikk). With long and short compound-form on -kk/-k. The swedish forms were earlier added to stems for the Swedish version, but now added here.

* dialektihkka # Even-syllable test examples:*
* *dialektihkka:* `dialektihkka+N+Sg+Nom`
* *dialektihkas:* `dialektihkka+N+Sg+Ela`
* *dialektijkka:* `dialektihkka+N+Sg+Nom`
* *dialektijkas:* `dialektihkka+N+Sg+Ela`

LEXICON SEMINÁRRA_CMP_INFL  Recent loanwords on -árra with long and short compound-form. Frequently typos that does not follow lulesami rules are sub taged; These forms goes against the standarization rule, but are found because of earlier standarizations rules and dictionaries.

* hektárra # Even-syllable test examples:*
* *hektárra:* `hektárra+N+Sg+Nom`
* *hektáras:* `hektárra+N+Sg+Ela`

LEXICON AREÁLLA_CMP_INFL  Recent loanwords on -álla with long and short compound-form. Frequently typos that does not follow lulesami rules are sub taged; These forms goes against the standarization rule, but are found because of earlier standarizations rules and dictionaries.

* gasskavokálla # Even-syllable test examples:*
* *gasskavokálla:* `gasskavokálla+N+Sg+Nom`
* *gasskavokálas:* `gasskavokálla+N+Sg+Ela`

LEXICON AMBASSADERRA_CMP_INFL  Recent loanwords on -ør with long and short compound-form. Standarized by Giellagálldo 05.05.14 as -erra. -ørra is subtaged

* observaterra # Even-syllable test examples:*
* *observaterra:* `observaterra+N+Sg+Nom`
* *observateras:* `observaterra+N+Sg+Ela`

LEXICON VETERINERRA_CMP_INFL  Recent loanwords on -erra. Words ending in -ær in both SWE and NOR. Both long and short compound-form. The old standardization form -æra, without cg, is subtaged, -also -ær'ra and -ærra.                   

LEXICON ATMOSFERRA_CMP_INFL  Recent loanwords -on erra. But with different endings in SE and NO, ending on -ære, -ær in NOR and -är, -ära in SWE (Ingefær NO, ingefära in SE).  Only long compound-form, short form must be hardcoded in firstcompnent lexicon. The old standardization form -æra, and -era, without cg, are subtaged, -also -ær'ra and -ærra.             

* observaterra # Even-syllable test examples:*
* *atmosferra:* `atmosferra+N+Sg+Nom`
* *atmosferas:* `atmosferra+N+Sg+Ela`

LEXICON KARAKTIERRA_CMP_INFL  Recent loanwords -on ierra in NOR, -erra in SWE, because of long e assimilates diffenrent ways. Words ending on -er in NOR, and -er or -är in SWE. Only long compound-form, short form must be hardcoded in firstcompnent lexicon.  

* observaterra # Even-syllable test examples:*
* *karaktierra:* `karaktierra+N+Sg+Nom`
* *karaktieras:* `karaktierra+N+Sg+Ela`
* *karakterra:* `karaktierra+N+Sg+Nom`
* *karakteras:* `karaktierra+N+Sg+Ela`

LEXICON TABÆLLA_CMP_INFL  Recent loanwords on -älºla with long and short compound-form. Frequently typos that does not follow lulesami rules are sub taged; These forms goes against the standarization rule, but are found because of earlier standarizations rules and dictionaries.

* flotælla # Even-syllable test examples:*
* *flotælla:* `flotælla+N+Sg+Nom`
* *flotälla:* `flotælla+N+Sg+Nom`
* *flotellas:* `flotælla+N+Sg+Ela`

LEXICON TELEGRÁMMA_CMP_INFL  Recent loanwords on -ámºma with long and short compound-form

* grámma # Even-syllable test examples:*
* *grámma:* `grámma+N+Sg+Nom`
* *grámmas:* `grámma+N+Sg+Ela`

LEXICON TOPOGRÁFFA_CMP_INFL  Recent loanwords on -áfºfa with long and short compound-form, no -lasj derivation since most of these words are humans. 

* telegráffa # Even-syllable test examples:*
* *telegráffa:* `telegráffa+N+Sg+Nom`
* *telegráfas:* `telegráffa+N+Sg+Ela`

LEXICON SYSTIEBMA_CMP_INFL  Recent loanwords on -ebma/-iebma with long and short compound-form. -em in NOR and SWE. See comments about the -ie/-e dialtags in ALFABIEHTTA. Frequently typos that does not follow lulesami rules are sub taged; These forms goes against the standarization rule, but are found because of earlier standarizations rules and dictionaries.

* vokalsystiebma # Even-syllable test examples:*
* *vokalsystebma:* `vokalsystiebma+N+Sg+Nom`
* *vokalsystiebma:* `vokalsystiebma+N+Sg+Nom`
* *vokalsystiemas:* `vokalsystiebma+N+Sg+Ela`
* *vokalsystemas:* `vokalsystiebma+N+Sg+Ela`

LEXICON ORGÁDNA_CMP_INFL  Recent loanwords on -ádna with long and short compound-form

* doarjjaorgádna # Even-syllable test examples:*
* *doarjjaorgádna:* `doarjjaorgádna+N+Sg+Nom`
* *doarjjaorgánna:* `doarjjaorgádna+N+Sg+Nom`
* *doarjjaorgánav:* `doarjjaorgádna+N+Sg+Acc`

LEXICON KOLLÆKTA_CMP_INFL  Recent loanwords on -ækta with long and short compound-form

* subjækta # Even-syllable test examples:*
* *subjækta:* `subjækta+N+Sg+Nom`
* *subjäkta:* `subjækta+N+Sg+Nom`
* *subjevtas:* `subjækta+N+Sg+Ela`

LEXICON HYDROGIEDNA_CMP_INFL  Recent loanwords on -iedna in NOR and -edna in SWE. Both long and short compound-form. Norwegian/swedish -en. The old standardization form -ena, without cg, is subtaged. See comments about the -ie/-e dialtags in ALFABIEHTTA.

LEXICON PATÆNNTA_CMP_INFL  Recent loanwords on -ænnta with long and short compound-form. The -ennta form (used in "Ådå testamennta") is taged as sub (e always becomes æ in grade three).

* patænnta # Even-syllable test examples:*
* *patænnta:* `patænnta+N+Sg+Nom`
* *patännta:* `patænnta+N+Sg+Nom`
* *patentas:* `patænnta+N+Sg+Ela`

LEXICON VARIÁNNTA_CMP_INFL  Recent loanwords on -ánnta with long and short compound-form. Frequently typos that does not follow lulesami rules are sub taged; These forms goes against the standarization rule, but are found because of earlier standarizations rules and dictionaries.

* praktikánnta # Even-syllable test examples:*
* *praktikánnta:* `praktikánnta+N+Sg+Nom`
* *praktikántas:* `praktikánnta+N+Sg+Ela`

LEXICON FANATISSMA_CMP_INFL  Recent loanwords on -ssma with long and short compound-form.

* kabbalissma # Even-syllable test examples:*
* *kabbalissma:* `kabbalissma+N+Sg+Nom`
* *kabbalismas:* `kabbalissma+N+Sg+Ela`

LEXICON TURISSTA_CMP_INFL  Recent loanwords on -ssta with long and short compound-form. -lasj derivation is error taged.  Frequently typos that does not follow lulesami rules are sub taged; These forms goes against the standarization rule, but are found because of earlier standarizations rules and dictionaries.

* journalissta # Even-syllable test examples:*
* *journalissta:* `journalissta+N+Sg+Nom`
* *journalistas:* `journalissta+N+Sg+Ela`

#### Loanwords becoming odd-syll

LEXICON PRIEMIJ_CMP_INFL  Assimilated loanwords. on -ie/-y, like premie and bandy. Become odd syllable loan words with cg, like "riebij". Nom: premij, gen prebmiha. Long and short essive.

* priemij # Even-syllable test examples:*
* *priemij:* `priemij+N+Sg+Nom`
* *premij:* `priemij+N+Sg+Nom`
* *priebmihis:* `priemij+N+Sg+Ela`
* *prebmihis:* `priemij+N+Sg+Ela`
* *priemin:* `priemij+N+Ess`
* *premin:* `priemij+N+Ess`
* *priebmihin:* `priemij+N+Ess`
* *prebmihin:* `priemij+N+Ess`

#### Loanwords becoming contracted-syll

#### See further down: ÅLMÅJ_LOAN

####  Error-lexicons, made to not get too many entries with both Err/Orth and correct

LEXICON A_CMP_INFL   Sub-forms. Lexicon for giving sub-variation conjugation by simply adding an -a to the norwegian/swedish word. No cg. Like "alkohola" and "agronoma". These forms goes against the standarization rule, but are found because of earlier standarizations rules and dictionaries.

LEXICON ERR/ORTH_EVEN_WEAK_CASES  Even stem Err/orth lexicon without nominative, illative and essive. Only for entries with ERR/ORTH tag. Made so that we don't get entries that are both norm and with error tag. Entries like "ålggo" have no grade alternation, a common error is writing it like it has, ålggo>ålgov. tálla>tálav, klimáksa>klimáksav, prefiksa>prefiksav, barggo>barggov

LEXICON ERR/ORTH_EVEN_WEAK_CASES2  Even stem Err/orth lexicon without nominative, illative and essive, AND ALSO without  Sg+Gen, Sg+Ine, Pl+Nom, Pl+Com and Pl+Gen (to not get homonemies.

LEXICON ERR/ORTH_EVEN_STRONG_CASES   Even stem Err/orth lexicon with only nominative, illative and essive. Only for entries with ERR/ORTH tag. Made so that we don't get entries that are both norm and with error tag. Hydrogena is used as nom and is err/orth, hydrogena>hydrogenav is not err/orth. marináda-nom, banána-nom

LEXICON ERR/ORTH_ODD  Err/Orth lexicon doing the opposit of what odd-syllable nouns do. Strong grade in nom and weak in all other. fiehpar-fiebara

####  Badly assimilated loanwords

LEXICON NOADE_BADASS  2 syll stems without cg. Badly or wrongly assimilated words, ie. assimilated in a way that isn't lulesami. (Same as NOADE) Most of the words are Err/Orth tagged with a standardized lemma. Some are Err/Lex tagged, 5.9.2019: EJP/SNM: fjerna +Use/-Spell - sjølv om vi ikkje likar orda, så vil vi sjå til at dei blir skrive rett etter smj-ortografien! Dei fleste orda er uansett merka med +Err/Orth :)

* balláda # Even-syllable test examples:*
* *balláda* `balláda+N+Sg+Nom`
* *balládas* `balláda+N+Sg+Ela`

LEXICON C_ILL_IJ_BADASS  Badly or wrongly assimilated words. Last letter is consonant, no cg, no vowchange, with illative -ij. (Same as GAHPER) Assimilated in a way that isn't lulesami. Most of the words are Err/Orth tagged with a standardized lemma. Some are Err/Lex tagged, and some only recieve the +Use/-Spell tag from the lexicon.

* sentimehter # Odd-syllable test examples:*
* *sentimehter* `sentimehter+N+Sg+Nom`
* *sentimehteris* `sentimehter+N+Sg+Ela`
* *sentimehterij* `sentimehter+N+Sg+Ill`

LEXICON C_ILL_AJ_BADASS  Badly or wrongly assimilated words. Last letter in consonant, no cg, no vowchange, with illative -aj. Should have been assimilated to even-syll, but are used as odd-syll, and mostly just assimilated with changing to letter á. So almosed same as CELSIUS_UNASS.

* kálsium # Odd-syllable test examples:*
* *kálsium* `kálsium+N+Sg+Nom`
* *kálsiumas* `kálsium+N+Sg+Ela`
* *kálsiumaj* `kálsium+N+Sg+Ill`

####  Unassimilated loanwords

LEXICON KINO_UNASS_CMP_INFL  V-final unassimilated loanwords. Not lulesami. No diacritics whatsoever. Words that aren't assimilated at all. Really just norwegian words with a kind of sami inflection. Get even syllable case marking. Are part of the spell checker.

* netto # Even-syllable test examples:*
* *netto:* `netto+N+Sg+Nom`
* *nettos:* `netto+N+Sg+Ela`

LEXICON C_ILL_IJ_UNASS  C-final unassimilated loanwords, gives illative- ij. Not lulesami. No diacritics whatsoever. Really just foreign words with a kind of sami inflection. Odd syllable case marking (like GAHPER). Are part of the spell checker. 

* sirkus # Even-syllable test examples:*
* *sirkus:* `sirkus+N+Sg+Nom`
* *sirkusij:* `sirkus+N+Sg+Ill`
* *sirkusis:* `sirkus+N+Sg+Ela`

LEXICON C_ILL_AJ_UNASS  C-final unassimilated loanwords, gives illativ -aj. Also odd-syll words ending on letter i, as selleri. Not lulesami. No diacritics whatsoever. Really just norwegian words with a kind of sami inflection. Case marking like standard even 4 syllable stems (see proper nouns file on the case marking of foreign words with stressed last syllable). Are part of the spell checker. 

* aids # Even-syllable test examples:*
* *aids:* `aids+N+Sg+Nom`
* *aidsaj:* `aids+N+Sg+Ill`
* *aidsas:* `aids+N+Sg+Ela`
* *aidsan:* `aids+N+Ess`
* *aidsadak:* `aids+N+Abe`
* *aidsada:* `aids+N+Abe`
* *aidsasj:* `aids+N+Der/Dimin+N+Sg+Nom`

+Der4+Der/ahtes:e»g AHTES ; Only for odd-syllble stems

#### 4syll stems 

LEXICON GÅNÅGIS  Standard C-final 4-syllabic stems

* rahtjamus # Even-syllable test examples:*
* *rahtjamus:* `rahtjamus+N+Sg+Nom`
* *rahtjamussaj:* `rahtjamus+N+Sg+Ill`
* *rahtjamusás:* `rahtjamus+N+Sg+Ela`

LEXICON BERULASJ  For words ending on -asj. Same as GÅNÅGIS but with strong essive and illative -adjtan and -adtjaj subtaged, same with PX "-adjtam". These forms are barely used today. -lahttja is also Err/Orth-taged.

LEXICON BEDNAGASJ  Like BERULASJ, but for derived nouns in diminutive. No cg, no vowchange, no short Ess. Has only one dimin derivation since these words already are dimin, ie. no double dim as for GAHPER. No abessive, not totally sure about this, I think we must use postposition dagi when it's diminutive,

* stiebil # Odd-syllable test examples:*
* *bednagasj:* `bednagasj+N+Sg+Nom`
* *bednagattjas:* `bednagasj+N+Sg+Ela`

LEXICON HÁVSAGUSJ  Like BEDNAGASJ, but not diminutive. No cg, no vowchange, no short Ess. Has only one dimin derivation. No abessive, not totally sure about this, I think we must use postposition dagi when it's diminutive,

LEXICON JIHPELIJ  gen:jihpelahá

* gehtsulij # Even-syllable test examples:*
* *gehtsulij:* `gehtsulij+N+Sg+Nom`
* *gehtsulaháv:* `gehtsulij+N+Sg+Acc`

LEXICON OARJJILIJ  gen:oarjjilihá

* allilij # Even-syllable test examples:*
* *allilij:* `allilij+N+Sg+Nom`
* *allilihás:* `allilij+N+Sg+Ela`

LEXICON VIESSOMUJ  gen:viessumuhá

* bårråmuj # Even-syllable test examples:*
* *bårråmuj:* `bårråmuj+N+Sg+Nom`
* *bårråmuháj:* `bårråmuj+N+Sg+Ill`

#### 4 syllable plurals

LEXICON OADÁDAGÁ  Plural forms of words like tjerastahka with short compound-form

* látjádagá # Even-syllable test examples:*
* *látjádagá:* `látjádagá+N+Pl+Nom`
* *látjádagájs:* `látjádagá+N+Pl+Ela`

LEXICON BERRAHATTJA  Plural stems. Like IEDNITJA, these do not have corresponding singular stems. Most stems here have the same form as the pl nom form of diminutive derivations, but (while it may have originated as a diminuitive derivation) it is not the same derivation (today) and it does not have a singular form.

* gahpanisá # Even-syllable test examples:*
* *gahpanisá:* `gahpanisá+N+Pl+Nom`
* *gahpanisájda:* `gahpanisá+N+Pl+Ill`
* *gahpanisájs:* `gahpanisá+N+Pl+Ela`

LEXICON SIJDDALAHÁ   Plurals

* lullelahá # Even-syllable test examples:*
* *lullelahá:* `lullelahá+N+Pl+Nom`
* *lullelahájt:* `lullelahá+N+Pl+Acc`

 LEXICON SISSNELUHÁ   plurals. presently only for sissŋeluhá

* sissŋeluhá # Even-syllable test examples:*
* *sissŋeluhá:* `sissŋeluhá+N+Pl+Nom`
* *sissŋeluhájda:* `sissŋeluhá+N+Pl+Ill`

LEXICON DAGI_SINGULAR  Earlier we generated "bijladagi" and bijlajdagi as abbessiv. This has been fixed, but to be able to analyse what we earlier generated, we needed this lexicon. Only singular. Gives Err/tag to "bijladagi" and makes correct "bijla dagi".

LEXICON DAGI_PLURAL  Earlier we generated "bijladagi" and bijlajdagi as abbessiv. This has been fixed, but to be able to analyse what we earlier generated, we needed this lexicon. Only plural. Gives Err/tag to "bijlajdagi" and makes correct "bijlaj dagi".

#### Adjectival sublexicas. Give 4 syll adjectives inflection

LEXICON SURGULASJ-EVEN 

LEXICON N-EVENWEAKSTEM-NO-ABE  same as N-EVENWEAKSTEM but without abessive (abessive it Err/Infl-taged). Used for 4-syll nouns

#### Compound lexicas

### Odd-syllable stems

#### without cg

LEXICON GAHPER  Odd-syllable C-final noun without cg, no vowchange, no short Ess. Spiik A3

* stiebil # Odd-syllable test examples:*
* *stiebil:* `stiebil+N+Sg+Nom`
* *stiebilis:* `stiebil+N+Sg+Ela`

#### with cg

LEXICON ÅRES  Odd-syllable C-final noun with CG, 2ndsyll vowchange. Long and short essive. Spiik A1

* sjattos # Odd-syllable test examples:*
* *sjattos:* `sjattos+N+Sg+Nom`
* *sjaddusis:* `sjattos+N+Sg+Ela`
* *sjaddusin:* `sjattos+N+Ess`
* *sjatton:* `sjattos+N+Ess`

LEXICON SÅHKÅR  Odd-syllable C-final noun with CG and 2ndsyll vowelchange. Has only long essive. Spiik 2b

* spiger # Odd-syllable test examples:*
* *spiger:* `spiger+N+Sg+Nom`
* *spihkáris:* `spiger+N+Sg+Ela`
* *spihkárin:* `spiger+N+Ess`

LEXICON MIEHTAR  Only for word "miehtar". Same as SÅHKÅR but with Area-differences and a lot of Err/Orths. 

* miehtar # Odd-syllable test examples:*
* *miehtar:* `miehtar+N+Sg+Nom`
* *mehtar:* `miehtar+N+Sg+Nom`
* *miehttaris:* `miehtar+N+Sg+Ela`
* *mähttaris:* `miehtar+N+Sg+Ela`
* *mähttarin:* `miehtar+N+Ess`
* *miehttarin:* `miehtar+N+Ess`

LEXICON GÁMAS  Odd-syllable C-final noun with CG, no 2ndsyll vowchange (OBS: a does not change). Long and short essive. Spiik A2

* sjábtjas # Odd-syllable test examples:*
* *sjábtjas:* `sjábtjas+N+Sg+Nom`
* *sjábttjasis:* `sjábtjas+N+Sg+Ela`

LEXICON BENA  Odd-syllable V-final noun with cg, no 2nsyll vowchange. Deletes g. Long and short essive. Spiik 2a

* galma # Odd-syllable test examples:*
* *galma:* `galma+N+Sg+Nom`
* *galmmagis:* `galma+N+Sg+Ela`

### Irregular stems

LEXICON SUOBDE   gen: suobddega.  Presently only for "suobde". For some reason -e dosn't become á. So not in lexicon BENA. Long and short essive.

* ságe # Odd-syllable test examples:*
* *ságe:* `ságe+N+Sg+Nom`
* *sáhkahav:* `ságe+N+Sg+Acc`

LEXICON SÁGE   gen: sáhkaha.  Presently only for "ságe". Long and short essive.

* ságe # Odd-syllable test examples:*
* *ságe:* `ságe+N+Sg+Nom`
* *sáhkahav:* `ságe+N+Sg+Acc`

LEXICON BAVSEV   Ends on -v and last vowel changes to i: bavsev:baksIma. Not like gierkav gierkkAma and birev birEma.

* sievtev # Odd-syllable test examples:*
* *sievtev:* `sievtev+N+Sg+Nom`
* *siektimis:* `sievtev+N+Sg+Ela`

LEXICON RÁBEV  rábev:ráhpuga. Presently only for "rábev".

* rábev # Odd-syllable test examples:*
* *rábev:* `rábev+N+Sg+Nom`
* *ráhpugis:* `rábev+N+Sg+Ela`

LEXICON RITJAS !  Like GÁMAS but without stem a-lengthening for grade I (underlying long -i-). presently only for "ritjas".

* ritjas # Odd-syllable test examples:*
* *ritjas:* `ritjas+N+Sg+Nom`
* *rihtjasis:* `ritjas+N+Sg+Ela`

LEXICON SÅGAS   gen: sågaska. Presently only for "sågas".

* sågas # Odd-syllable test examples:*
* *sågas:* `sågas+N+Sg+Nom`
* *sågaskav:* `sågas+N+Sg+Acc`

LEXICON SJUVÁJ   Presently only for "sjuváj". sjuváj-sjuvvaga. Only this word

* sjuváj # Odd-syllable test examples:*
* *sjuváj:* `sjuváj+N+Sg+Nom`
* *sjuvvagis:* `sjuváj+N+Sg+Ela`

LEXICON BØSOJ  Because of bösoj in O.Korhonen, and bæsoj-bessuga. Only for these two words. J becomes g.

LEXICON GUOVSOJVUOJOJ  vuojoj:vuodjom. Presently only for "guovsojvuojoj".

* guovsojvuojoj # Odd-syllable test examples:*
* *guovsojvuojoj:* `guovsojvuojoj+N+Sg+Nom`
* *guovsojvuodjomav:* `guovsojvuojoj+N+Sg+Acc`

LEXICON BUTJES   butjes-buttjása. Presently only for "butjes". This is an sub. Korhonen has this form but if you look in Grundstöm it's buttjes-budtjasa. Must be a typo in Korhonen, because ttj-tj dosn't exist in smj. This form is err subed in stems file.

LEXICON TJÅLKES  tjålkes:tjoalkkas- Presently only for "tjålkes and tsålkes". This must be wrong, and it dosn't exist in Grundström. Å in 1. syll isn't possible with e in 2. syll. Must be tjoalkes-tjoalkkása or tjålkas-tjoalkkasa. This form is err subed in stems file.

* tsålkes # Odd-syllable test examples:*
* ★*tsålkes:* `tsålkes+N+Sg+Nom` (is not standard language)
* ★*tsoalkkasav:* `tsålkes+N+Sg+Acc` (is not standard language)

LEXICON VÁJES   vájes:vádjas- Presently only for "báhkovájes". It's a sub: 2. syll e doesn't become a. Must be vájes-vádjása or vájas-vádjasa. The second is used in NT, so I belive thats the right one. This form is err subed in stems file.

Derived stems

LEXICON BADJEL  Derived nouns with acc -elav, ill -elij, elat -elas, etc. These were previously categorized as adpositions and adverbs, but according to Bruce Morén-Duolljá (2014) they are actually case forms of nouns derived from certain location nouns. Derived from even strong stems (badje -> badjel). Odd syllable inflection, but only singular nominative-elative (not clear if they take comitative and essive case). With comparatives. No Px.

* allel # Odd-syllable test examples:*
* *allel:* `allel+N+Sg+Nom`
* *allelis:* `allel+N+Sg+Ela`
* *allelabbo:* `allel+N+Der/Comp+A+Sg+Nom`

LEXICON BÁRNEP  bárnep:bárnebu-. Comparisation of nouns. No -ahtá abesive.

* iednep # Odd-syllable test examples:*
* *iednep:* `iednep+N+Sg+Nom`
* *iednebuv:* `iednep+N+Sg+Acc`

LEXICON OAPPÁSJ   Like GAHPER, but for derived nouns in diminutive, have an underived form. Doesn't get abesive -ahtá or -ahtes derivation. Oddsyll, no cg, no vowchange, no short Ess. Has only one dimin derivation since these words already are dimin, ie. not double dim as in GAHPER.

* stiebil # Odd-syllable test examples:*
* *oappásj:* `oappásj+N+Sg+Nom`
* *oappátjis:* `oappásj+N+Sg+Ela`

LEXICON FIERUN   Like GAHPER, but instruments derived from verbs. Fierrot>fierun. No short essive.

* stiebil # Odd-syllable test examples:*
* *fierun:* `fierun+N+Sg+Nom`
* *fierunis:* `fierun+N+Sg+Ela`

LEXICON GUOLLÁR  Like GAHPER, but actor derived from contracted verbs (ACTOR for evensyll verbs). Guollit>guollár. No short essive.   

LEXICON IELLEM  Nomen actionionis derived from even verbs. Earlier these went directly to VSBST-ODD, now they get tag Gram/NomAct before going there. Can't put it in VSBST-ODD lexicon because paths from verb lexicons.  

LEXICON TJIEKTJAMA  Pl Nomen actionionis derived from even verbs. Earlier these went directly to VSBST-ODD-PL, now they get tag Gram/NomAct before going there. Can't put it in VSBST-ODD-PL lexicon because of paths from verb lexicons.  

LEXICON AKTIDIBME  Nomen actionionis derived from uneven verbs, ending DIBME. Earlier these went directly to VSBST-EVEN, now they get tag Gram/NomAct before going there. Can't put it in VSBST-ODD lexicon because paths from verb lexicons.  

LEXICON BERUSTIBME  Nomen actionionis derived from uneven verbs, ending STIBME and DIBME is Err/orth-taged. Earlier these went directly to VSBST-EVEN, now they get tag Gram/NomAct before going there. Can't put it in VSBST-ODD lexicon because paths from verb lexicons.  

#### Plural odd-syll

LEXICON DÁRBBAGA  Like BENA, but plural. Presently only for "dárbbaga", has singular stem counterpart.

* dárbbaga # Odd-syllable test examples:*
* *dárbbaga:* `dárbbaga+N+Pl+Nom`
* *dárbbagijt:* `dárbbaga+N+Pl+Acc`

LEXICON BÆLLJASA  Like GÁMAS, but plural. These have corresponding singular stems.

* jiednabælljasa # Odd-syllable test examples:*
* *jiednabælljasa:* `jiednabælljasa+N+Pl+Nom`
* *jiednabälljasa:* `jiednabælljasa+N+Pl+Nom`
* *jiednabælljasijt:* `jiednabælljasa+N+Pl+Acc`
* *jiednabälljasijt:* `jiednabælljasa+N+Pl+Acc`

LEXICON IEDNITJA  Odd syllable pluralforms only. These do not have a singular form.

* jáhkoguojmitja # Odd-syllable test examples:*
* *jáhkoguojmitja:* `jáhkoguojmitja+N+Pl+Nom`
* *jáhkoguojmitjijt:* `jáhkoguojmitja+N+Pl+Acc`

LEXICON SNJIERÁGA  Odd syllable pluralforms only. These have corresponding singular stems.

* guovlloådåsa # Odd-syllable test examples:*
* *guovlloådåsa:* `guovlloådåsa+N+Pl+Nom`
* *guovlloådåsijt:* `guovlloådåsa+N+Pl+Acc`

LEXICON MANEBU  oddsyllable plural only. presently only for "maŋebu".

* maŋebu # Odd-syllable test examples:*
* *maŋebu:* `maŋebu+N+Pl+Nom`
* *maŋebujt:* `maŋebu+N+Pl+Acc`

### Contracted stems

LEXICON SUOLOJ  C-final with cg II-III: ålmåj:ålmmå

* njurgoj # Contracted test examples:*
* *njurgoj:* `njurgoj+N+Sg+Nom`
* *njurgguv:* `njurgoj+N+Sg+Acc`

LEXICON ÅLMÅJ_LOAN  Same as SUOLOJ, only for loan words. Follows Ráhka/Mikkelsen's Bårjås 2014. C-final with cg II-III: ålmåj:ålmmå

* bistroj # Contracted test examples:*
* *bistroj:* `bistroj+N+Sg+Nom`
* *bisstruv:* `bistroj+N+Sg+Acc`
* *bisstruhav:* `bistroj+N+Sg+Acc`

LEXICON GUOMOJ  C-final with cg I-III: guomoj:guobbmu

* ænoj # Contracted test examples:*
* *ænoj:* `ænoj+N+Sg+Nom`
* *æddnuv:* `ænoj+N+Sg+Acc`
* *änoj:* `ænoj+N+Sg+Nom`
* *äddnuv:* `ænoj+N+Sg+Acc`

LEXICON SARVES  C-final with cg II-III. sarves:sarvvá

* moarmes # Contracted test examples:*
* *moarmes:* `moarmes+N+Sg+Nom`
* *moarmmáv:* `moarmes+N+Sg+Acc`

LEXICON SVÁLES  C-final with cg I-III. sváles:svállá (lºl)

* sváles # Contracted test examples:*
* *sváles:* `sváles+N+Sg+Nom`
* *sválláv:* `sváles+N+Sg+Acc`

LEXICON GÅHKES  C-final with cg II-III with vowel harmony (a/á=å). gåhkes:gåhkkå. Presently only for "gåhkes".

* gåhkes # Contracted test examples:*
* *gåhkes:* `gåhkes+N+Sg+Nom`
* *gåhkkåv:* `gåhkes+N+Sg+Acc`

LEXICON SJUOKKAJ  sjuokkaj:sjuoggá. Presently only for "sjuokkaj".

* sjuokkaj # Contracted test examples:*
* *sjuokkaj:* `sjuokkaj+N+Sg+Nom`
* *sjuoggáv:* `sjuokkaj+N+Sg+Acc`

LEXICON GISTÁ  gistá:gisstá. Presently only for "gistá".

* gistá # Contracted test examples:*
* *gistá:* `gistá+N+Sg+Nom`
* *gisstáv:* `gistá+N+Sg+Acc`

####  Contracted stems sublexica

### Px lexica

LEXICON DUOLMUN   Fierrot>fierun, instruments derived from verbs, used only for verb derivation, not for lexicalized lemmas. No short essive.

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/affixes/nouns.lexc](https://github.com/giellalt/lang-smj/blob/main/src/fst/morphology/affixes/nouns.lexc)</small>

---

## src-fst-morphology-affixes-pronouns.lexc.md 



+Use/NG+Gen:n      NAMÁK ; ! adjectival -k derivation does not take pronouns
+Use/NG+Ela:sstága K ; !Can't find this anywhere. Maybe this is really dástága/dastagá? in "dáhtakcas"

+Use/NG+Gen:      NAMÁK ; ! adjectival -k derivation does not take pronouns

+Use/NG+Gen:aj      NAMÁK ; ! adjectival -k derivation does not take pronouns
+Ine:a%>jna  K-s ;
+Abe+Use/NG:a%>jdak  K ;  ! covered in non-idiosync   
+Abe+Use/NG:a%>jdagi  K ; ! covered in non-idiosync   
+Abe+Use/NG:a%>jdagá  K ; ! covered in non-idiosync   
+Abe+Use/NG:a%>jtagá  K ; ! covered in non-idiosync   

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/affixes/pronouns.lexc](https://github.com/giellalt/lang-smj/blob/main/src/fst/morphology/affixes/pronouns.lexc)</small>

---

## src-fst-morphology-affixes-propernouns.lexc.md 


## Lule Sáme Proper noun morphology !

### Even syllable proper nouns

Unstressed last syllable

Words in ACCRA lexicons end on vowel, have no CG and get "even-syllable" case marking where case suffixes are added directly. Illative e:i, but not o:u. Last syllable is unstressed. Both non-assimilated and assmilated stems (although not all are fully, or correctly, assmilated)

LEXICON ACCRA-ani   Vowel-final names where case endings are added directly, no cg. Illative e changes to i. Animales.

* Tjuorri # Even-syllable test examples:*
* *Tjuorri:* `Tjuorri+N+Prop+Sem/Ani+Sg+Nom`
* *Tjuorrij:* `Tjuorri+N+Prop+Sem/Ani+Sg+Ill`
* *Tjuorris:* `Tjuorri+N+Prop+Sem/Ani+Sg+Ela`

LEXICON ACCRA-obj  Vowel-final names where case endings are added directly, no cg. Object names

* Gestapo # Even-syllable test examples:*
* *Gestapo:* `Gestapo+N+Prop+Sem/Obj+Sg+Nom`
* *Gestapoj:* `Gestapo+N+Prop+Sem/Obj+Sg+Ill`
* *Gestapos:* `Gestapo+N+Prop+Sem/Obj+Sg+Ela`

LEXICON ACCRA-org  Vowel-final names where caseendings are added directly, no cg. organizations

* Giellatekno # Even-syllable test examples:*
* *Giellatekno:* `Giellatekno+N+Prop+Sem/Org+Sg+Nom`
* *Giellateknoj:* `Giellatekno+N+Prop+Sem/Org+Sg+Ill`
* *Giellateknos:* `Giellatekno+N+Prop+Sem/Org+Sg+Ela`

LEXICON ACCRA-mal  Vowel-final names where case are added directly, no cg. Male names

* Antonio # Even-syllable test examples:*
* *Antonio:* `Antonio+N+Prop+Sem/Mal+Sg+Nom`
* *Antonioj:* `Antonio+N+Prop+Sem/Mal+Sg+Ill`
* *Antonios:* `Antonio+N+Prop+Sem/Mal+Sg+Ela`

LEXICON ACCRA-fem  Vowel-final names where case endings are added directly, no cg. Female names

* Barbro # Even-syllable test examples:*
* *Barbro:* `Barbro+N+Prop+Sem/Fem+Sg+Nom`
* *Barbroj:* `Barbro+N+Prop+Sem/Fem+Sg+Ill`
* *Barbros:* `Barbro+N+Prop+Sem/Fem+Sg+Ela`

LEXICON ACCRA-femsur  Vowel-final names where case endings are added directly, no cg. Female names also used as surnames

* Sara # Even-syllable test examples:*
* *Sara:* `Sara+N+Prop+Sem/Fem+Sg+Nom`
* *Saraj:* `Sara+N+Prop+Sem/Fem+Sg+Ill`
* *Saraj:* `Sara+N+Prop+Sem/Sur+Sg+Ill`
* *Saras:* `Sara+N+Prop+Sem/Fem+Sg+Ela`

LEXICON ACCRA-malfem  Vowel-final names where case endings are added directly, no cg. Names that can be both female and male names

* Janne # Even-syllable test examples:*
* *Janne:* `Janne+N+Prop+Sem/Mal+Sg+Nom`
* *Janne:* `Janne+N+Prop+Sem/Fem+Sg+Nom`
* *Jannij:* `Janne+N+Prop+Sem/Mal+Sg+Ill`
* *Jannes:* `Janne+N+Prop+Sem/Mal+Sg+Ela`

LEXICON ACCRA-objplc  Vowel-final names where case endings are added directly, no cg. Names that can be both objects and place names

* Soria-Moria # Even-syllable test examples:*
* *Soria-Moria:* `Soria-Moria+N+Prop+Sem/Obj+Sg+Nom`
* *Soria-Moriaj:* `Soria-Moria+N+Prop+Sem/Obj+Sg+Ill`
* *Soria-Morias:* `Soria-Moria+N+Prop+Sem/Obj+Sg+Ela`
* *Soria-Moriaj:* `Soria-Moria+N+Prop+Sem/Plc+Sg+Ill`
* *soria-moriak:* `Soria-Moria+N+Prop+Sem/Plc+Der/k+N+Sg+Nom`
* *soria-morialasj:* `Soria-Moria+N+Prop+Sem/Plc+Der/lasj+N+Sg+Nom`

LEXICON ACCRA-femplc  Vowel-final names where case endings are added directly, no cg. Names that can be both female and place names

* Salla # Even-syllable test examples:*
* *Salla:* `Salla+N+Prop+Sem/Fem+Sg+Nom`
* *Salla:* `Salla+N+Prop+Sem/Plc+Pl+Nom`
* *Sallaj:* `Salla+N+Prop+Sem/Fem+Sg+Ill`
* *Sallas:* `Salla+N+Prop+Sem/Fem+Sg+Ela`
* *sallak:* `Salla+N+Prop+Sem/Plc+Der/k+N+Sg+Nom`
* *sallalasj:* `Salla+N+Prop+Sem/Plc+Der/lasj+N+Sg+Nom`

LEXICON ACCRA-sur  Vowel-final names where case endings are added directly, no cg. Surnames

* Tønne # Even-syllable test examples:*
* *Tønne:* `Tønne+N+Prop+Sem/Sur+Sg+Nom`
* *Tønnij:* `Tønne+N+Prop+Sem/Sur+Sg+Ill`
* *Tønnes:* `Tønne+N+Prop+Sem/Sur+Sg+Ela`

LEXICON ACCRA-malsur   Vowel-final names where case endings are added directly, no cg. Names that can be both male- and surnames

* Valio # Even-syllable test examples:*
* *Valio:* `Valio+N+Prop+Sem/Sur+Sg+Nom`
* *Valio:* `Valio+N+Prop+Sem/Mal+Sg+Nom`
* *Valioj:* `Valio+N+Prop+Sem/Sur+Sg+Ill`
* *Valios:* `Valio+N+Prop+Sem/Sur+Sg+Ela`

LEXICON ACCRA-plc  Vowel-final names where caseendings are added directly, no cg. Place names

* Burma # Even-syllable test examples:*
* *Burma:* `Burma+N+Prop+Sem/Plc+Sg+Nom`
* *Burmaj:* `Burma+N+Prop+Sem/Plc+Sg+Ill`
* *Burmas:* `Burma+N+Prop+Sem/Plc+Sg+Ela`
* *burmak:* `Burma+N+Prop+Sem/Plc+Der/k+N+Sg+Nom`
* *burmalasj:* `Burma+N+Prop+Sem/Plc+Der/lasj+N+Sg+Nom`

LEXICON ACCRA_MWE-plc  Vowel-final names where caseendings are added directly, no cg. Place names

LEXICON GIRUNA-plc  For proper Kiruna. Same as ACCRA. Different lexicon because of sma.

* Veitsiluoto # Even-syllable test examples:*
* *Veitsiluoto:* `Veitsiluoto+N+Prop+Sem/Plc+Sg+Nom`
* *Veitsiluoto:* `Veitsiluoto+N+Prop+Sem/Plc+Sg+Nom`
* *Veitsiluotoj:* `Veitsiluoto+N+Prop+Sem/Plc+Sg+Ill`
* *Veitsiluotos:* `Veitsiluoto+N+Prop+Sem/Plc+Sg+Ela`
* *veitsiluotok:* `Veitsiluoto+N+Prop+Sem/Plc+Der/k+N+Sg+Nom`
* *veitsiluotolasj:* `Veitsiluoto+N+Prop+Sem/Plc+Der/lasj+N+Sg+Nom`

LEXICON ACCRA-LOAN-org  Only nominatives. Vowel-final names where case endings are added directly, no cg. organizations

* Samenes Idrettsforbund-Norge # Even-syllable test examples:*
* *Samenes* `Idrettsforbund-Norge:` (Eng. Samenes Idrettsforbund-Norge+N+Prop+Sem/Org+Sg+Nom)
* ★*Samenes* `Idrettsforbund-Norge:` (is not standard language Samenes Idrettsforbund-Norge+N+Prop+Sem/Org+Sg+Ela # negative test)

LEXICON ACCRA-LOAN-obj  Only nominatives. Vowel-final names where case endings are added directly, no cg. Object names

* The Norwegian Sami Experience # Even-syllable test examples:*
* *The* `Norwegian` (Eng. Sami Experience: The Norwegian Sami Experience+N+Prop+Sem/Obj+Sg+Nom)
* ★*The* `Norwegian` (is not standard language Sami Experience: The Norwegian Sami Experience+N+Prop+Sem/Obj+Sg+Ill # Negative test)

LEXICON ACCRA-LOAN-plc  Only nominatives. Vowel-final names where case endings are added directly, no cg.Place names

* Kautokeino # Even-syllable test examples:*
* *Kautokeino:* `Kautokeino+N+Prop+Sem/Plc+Sg+Nom`
* ★*Kautokeinos:* `Kautokeino+N+Prop+Sem/Org+Sg+Ela` (is not standard language # negative test)

In smj RONDANE is same as ACCRA, in use in smi because of diffrences in sme. No -lasj or -k. Last syllable is unstressed. Non-assimilated-stems.

LEXICON RONDANE-plc  E-final names, with no cg. elative -s, ill -ij. Place names

* Bakkane # Even-syllable test examples:*
* *Bakkane:* `Bakkane+N+Prop+Sem/Plc+Sg+Nom`
* *Bakkane:* `Bakkane+N+Prop+Sem/Plc+Sg+Gen`
* *Bakkanev:* `Bakkane+N+Prop+Sem/Plc+Sg+Acc`
* *Bakkanen:* `Bakkane+N+Prop+Sem/Plc+Sg+Ine`
* *Bakkanij:* `Bakkane+N+Prop+Sem/Plc+Sg+Ill`
* *Bakkanes:* `Bakkane+N+Prop+Sem/Plc+Sg+Ela`
* *Bakkanijn:* `Bakkane+N+Prop+Sem/Plc+Sg+Com`
* *Bakkanijda:* `Bakkane+N+Prop+Sem/Plc+Pl+Ill`
* *Bakkanijs:* `Bakkane+N+Prop+Sem/Plc+Pl+Ela`
* ★*bakkanek:* `Bakkane+N+Prop+Sem/Plc+Der/k+N+Sg+Nom` (is not standard language)
* ★*bakkanelasj:* `Bakkane+N+Prop+Sem/Plc+Der/lasj+N+Sg+Nom` (is not standard language)

LEXICON RONDANE-SG-plc  E-final names, with no cg. elative -s, ill -ij. Place names

* Bakkane # Even-syllable test examples:*
* *Bakkane:* `Bakkane+N+Prop+Sem/Plc+Sg+Nom`
* *Bakkane:* `Bakkane+N+Prop+Sem/Plc+Sg+Gen`
* *Bakkanev:* `Bakkane+N+Prop+Sem/Plc+Sg+Acc`

LEXICON RONDANE-LOAN  Only nominative.Place names

* Azorene # Even-syllable test examples:*
* *Azorene:* `Azorene+N+Prop+Sem/Plc+Sg+Nom`
* ★*Azorenij:* `Azorene+N+Prop+Sem/Plc+Sg+Ill` (is not standard language # Negative test)

LEXICON RONDANE-SG-LOAN  Only nominative. Place names

LEXICON RONDANE-sur  Surnames

* Benneche # Even-syllable test examples:*
* *Benneche:* `Benneche+N+Prop+Sem/Sur+Sg+Nom`
* *Bennechij:* `Benneche+N+Prop+Sem/Sur+Sg+Ill`
* *Benneches:* `Benneche+N+Prop+Sem/Sur+Sg+Ela`

LEXICON RONDANE-obj  Objects

* Office # Even-syllable test examples:*
* *Office:* `Office+N+Prop+Sem/Obj+Sg+Nom`
* *Office:* `Office+N+Prop+Sem/Obj+Sg+Gen`
* *Officev:* `Office+N+Prop+Sem/Obj+Sg+Acc`
* *Officen:* `Office+N+Prop+Sem/Obj+Sg+Ine`
* *Officij:* `Office+N+Prop+Sem/Obj+Sg+Ill`
* *Offices:* `Office+N+Prop+Sem/Obj+Sg+Ela`
* *Officijn:* `Office+N+Prop+Sem/Obj+Sg+Com`

LEXICON RONDANE-org  Organizations

* Picture # Even-syllable test examples:*
* *Picture:* `Picture+N+Prop+Sem/Org+Sg+Nom`
* *Picturij:* `Picture+N+Prop+Sem/Org+Sg+Ill`
* *Pictures:* `Picture+N+Prop+Sem/Org+Sg+Ela`

LEXICON RONDANE-mal  Male names

* Lawrence # Even-syllable test examples:*
* *Lawrence:* `Lawrence+N+Prop+Sem/Mal+Sg+Nom`
* *Lawrencij:* `Lawrence+N+Prop+Sem/Mal+Sg+Ill`
* *Lawrences:* `Lawrence+N+Prop+Sem/Mal+Sg+Ela`

LEXICON RONDANE-fem  Female names

* Jannike # Even-syllable test examples:*
* *Jannike:* `Jannike+N+Prop+Sem/Fem+Sg+Nom`
* *Jannikij:* `Jannike+N+Prop+Sem/Fem+Sg+Ill`
* *Jannikes:* `Jannike+N+Prop+Sem/Fem+Sg+Ela`

These sublexica are irrelevant for ACCRA, but added
for the sake of the lexicon MARJA

GATA are Norwegian place names that end on -gata. Gets even-syllable casemarking. Last syllable is unstressed. Non-assimilated stems.

LEXICON GATA-plc   Norwegian place names that end on -gata. Gets even-syllable casemarking. Last syllable is unstressed.

* Munkegata # Even-syllable test examples:*
* *Munkegata:* `Munkegata+N+Prop+Sem/Plc+Sg+Nom`
* *Munkegataj:* `Munkegata+N+Prop+Sem/Plc+Sg+Ill`
* *Munkegatas:* `Munkegata+N+Prop+Sem/Plc+Sg+Ela`

Words in MARJA end on vowel, with CG, even-syllable case marking. Illative change e to á, illative i stays i. Last syllable is unstressed. Real lule sami stems.

LEXICON MARJA-fem  Odd-syllable with cg. Female names

* Gáddjá # Even-syllable test examples:*
* *Gáddjá:* `Gáddjá+N+Prop+Sem/Fem+Sg+Nom`
* *Gáddjáj:* `Gáddjá+N+Prop+Sem/Fem+Sg+Ill`
* *Gádjás:* `Gáddjá+N+Prop+Sem/Fem+Sg+Ela`

LEXICON MARJA-ani  Animal names

* Vilge # Even-syllable test  examples:*
* *Gávrásski:* `Gávrásski+N+Prop+Sem/Ani+Sg+Nom`
* *Gávrásskij:* `Gávrásski+N+Prop+Sem/Ani+Sg+Ill`
* *Gávráskis:* `Gávrásski+N+Prop+Sem/Ani+Sg+Ela`

LEXICON MARJA-mal  Male names

* Biet-Ánnda # Even-syllable test examples:*
* *Biet-Ánnda:* `Biet-Ánnda+N+Prop+Sem/Mal+Sg+Nom`
* *Biet-Ánndaj:* `Biet-Ánnda+N+Prop+Sem/Mal+Sg+Ill`
* *Biet-Ándas:* `Biet-Ánnda+N+Prop+Sem/Mal+Sg+Ela`

LEXICON MARJA-obj  Objects

* Bern-Konvensjåvnnå # Even-syllable test examples:*
* *Bern-Konvensjåvnnå:* `Bern-Konvensjåvnnå+N+Prop+Sem/Obj+Sg+Nom`
* *Bern-Konvensjåvnnåj:* `Bern-Konvensjåvnnå+N+Prop+Sem/Obj+Sg+Ill`
* *Bern-Konvensjåvnås:* `Bern-Konvensjåvnnå+N+Prop+Sem/Obj+Sg+Ela`

LEXICON MARJA-org  Organizations

* Domænadoajmma # Even-syllable test examples:*
* *Domænadoajmma:* `Domænadoajmma+N+Prop+Sem/Org+Sg+Nom`
* *Domænadoajmmaj:* `Domænadoajmma+N+Prop+Sem/Org+Sg+Ill`
* *Domænadåjmas:* `Domænadoajmma+N+Prop+Sem/Org+Sg+Ela`

LEXICON MARJA-plc  Vowel final names with Gradation and Ill change (place names)

* Dundarevuobme # Even-syllable test examples:*
* *Dundarevuobme:* `Dundarevuobme+N+Prop+Sem/Plc+Sg+Nom`
* *Dundarevuobmáj:* `Dundarevuobme+N+Prop+Sem/Plc+Sg+Ill`
* *Dundarevuomes:* `Dundarevuobme+N+Prop+Sem/Plc+Sg+Ela`

LEXICON MARJA-sur  Surnames

* Skálltje # Even-syllable test examples:*
* *Skálltje:* `Skálltje+N+Prop+Sem/Sur+Sg+Nom`
* *Skálltjáj:* `Skálltje+N+Prop+Sem/Sur+Sg+Ill`
* *Skáltjes:* `Skálltje+N+Prop+Sem/Sur+Sg+Ela`

LEXICON MARJA-plc-der  = place name derivations and corresponding flag. Presently not used in SMJ.

LEXICON SUOBMA-plc  Placenames. Like MARJA but no derivation

* Suobma # Even-syllable test examples:*
* *Suobma:* `Suobma+N+Prop+Sem/Plc+Sg+Nom`
* *Suobmaj:* `Suobma+N+Prop+Sem/Plc+Sg+Ill`
* *Suomas:* `Suobma+N+Prop+Sem/Plc+Sg+Ela`

LEXICON SUOBMA-org  Placenames. Like MARJA but no derivation

Stressed last syllable

These proper nouns are in essence partly assimilated loan word as foreign words with stressed last syllable are assimilated to sami by (often adapting the stressed syllable vowel, and) adding an unstressed syllable consisting of adapted (or if necesarry added) consonants and ending on vowel a (Morén-Duollja 2014). Proper nouns are only partly assimilated in that the stressed syllable vowel is not adapted in any way, neither are consonats inserted, only the final "a" remains. These proper nouns therefore work like regular a-stem nouns and get an even syllable case marking.

Words in lexicon NYSTØ end on vowel, no cg. Non-assimilated stems

LEXICON NYSTØ-fem  Femal names

* Britney # Even-syllable test examples:*
* *Britney:* `Britney+N+Prop+Sem/Fem+Sg+Nom`
* *Britneyav:* `Britney+N+Prop+Sem/Fem+Sg+Acc`
* *Britneyaj:* `Britney+N+Prop+Sem/Fem+Sg+Ill`
* *Britneyas:* `Britney+N+Prop+Sem/Fem+Sg+Ela`

LEXICON NYSTØ-mal  Male name

* Taneli # Even-syllable test examples:*
* *Taneli:* `Taneli+N+Prop+Sem/Mal+Sg+Nom`
* *Taneliav:* `Taneli+N+Prop+Sem/Mal+Sg+Acc`
* *Taneliaj:* `Taneli+N+Prop+Sem/Mal+Sg+Ill`
* *Tanelias:* `Taneli+N+Prop+Sem/Mal+Sg+Ela`

LEXICON NYSTØ-obj  Objects

* Infiniti # Even-syllable test examples:*
* *Infiniti:* `Infiniti+N+Prop+Sem/Obj+Sg+Nom`
* *Infinitiav:* `Infiniti+N+Prop+Sem/Obj+Sg+Acc`
* *Infinitiaj:* `Infiniti+N+Prop+Sem/Obj+Sg+Ill`
* *Infinitias:* `Infiniti+N+Prop+Sem/Obj+Sg+Ela`

LEXICON NYSTØ-org   Organizations

* Kulturby # Even-syllable test examples:*
* *Kulturby:* `Kulturby+N+Prop+Sem/Org+Sg+Nom`
* *Kulturbyav:* `Kulturby+N+Prop+Sem/Org+Sg+Acc`
* *Kulturbyaj:* `Kulturby+N+Prop+Sem/Org+Sg+Ill`
* *Kulturbyas:* `Kulturby+N+Prop+Sem/Org+Sg+Ela`

LEXICON NYSTØ-LOAN-org  Organizations loan

* Sameby # Even-syllable test examples:*
* *Sameby:* `Sameby+N+Prop+Sem/Org+Sg+Nom`
* ★*Samebyaj:* `Sameby+N+Prop+Sem/Org+Sg+Ill` (is not standard language)
* ★*Samebyas:* `Sameby+N+Prop+Sem/Org+Sg+Ela` (is not standard language)

LEXICON NYSTØ-sur  Sur names

* Sandoz # Even-syllable test examples:*
* *Sandoz:* `Sandoz+N+Prop+Sem/Sur+Sg+Nom`
* *Sandozav:* `Sandoz+N+Prop+Sem/Sur+Sg+Acc`
* *Sandozaj:* `Sandoz+N+Prop+Sem/Sur+Sg+Ill`
* *Sandozas:* `Sandoz+N+Prop+Sem/Sur+Sg+Ela`

* Teigmo # Even-syllable test examples:*
* *Teigmo:* `Teigmo+N+Prop+Sem/Plc+Sg+Nom`
* *Teigmoav:* `Teigmo+N+Prop+Sem/Plc+Sg+Acc`
* *Teigmoaj:* `Teigmo+N+Prop+Sem/Plc+Sg+Ill`
* *Teigmoas:* `Teigmo+N+Prop+Sem/Plc+Sg+Ela`

LEXICON NYSTØ-LOAN-plc  Place names loan

* Bodø # Even-syllable test examples:*
* *Bodø:* `Bodø+N+Prop+Sem/Plc+Sg+Nom`
* ★*Bodøaj:* `Bodø+N+Prop+Sem/Plc+Sg+Ill` (is not standard language)
* ★*Bodøas:* `Bodø+N+Prop+Sem/Plc+Sg+Ela` (is not standard language)

LEXICON NYSTØ-plc  Place names

* Borgå # Even-syllable test examples:*
* *Borgå:* `Borgå+N+Prop+Sem/Plc+Sg+Nom`
* *Borgåav:* `Borgå+N+Prop+Sem/Plc+Sg+Acc`
* *Borgåaj:* `Borgå+N+Prop+Sem/Plc+Sg+Ill`
* *Borgåas:* `Borgå+N+Prop+Sem/Plc+Sg+Ela`

LEXICON NYSTØ_MWE-plc  Place names

Words in DUBAI lexicon end on vowel+vowel and have no cg. Last syllable is stressed. Get even syllable case marking. Non-assimilated stems. Not sure if this lexicon is necessary, at least for smj's sake.

LEXICON DUBAI-fem  I-final names. No cg. Female names

* Mai  # Even-syllable test examples:*
* *Mai:* `Mai+N+Prop+Sem/Fem+Sg+Nom`
* *Maiaj:* `Mai+N+Prop+Sem/Fem+Sg+Ill`
* *Maias:* `Mai+N+Prop+Sem/Fem+Sg+Ela`

LEXICON DUBAI-obj  I-final names. No cg. Object names

* Hyundai  # Even-syllable test examples:*
* *Hyundai:* `Hyundai+N+Prop+Sem/Obj+Sg+Nom`
* *Hyundaiaj:* `Hyundai+N+Prop+Sem/Obj+Sg+Ill`
* *Hyundaias:* `Hyundai+N+Prop+Sem/Obj+Sg+Ela`

LEXICON DUBAI-org  Organizations

* Khoi # Even-syllable test examples:*
* *Khoi:* `Khoi+N+Prop+Sem/Org+Sg+Nom`
* *Khoiaj:* `Khoi+N+Prop+Sem/Org+Sg+Ill`
* *Khoias:* `Khoi+N+Prop+Sem/Org+Sg+Ela`

LEXICON DUBAI-mal  Male names

* Kublai # Even-syllable test examples:*
* *Kublai:* `Kublai+N+Prop+Sem/Mal+Sg+Nom`
* *Kublaiaj:* `Kublai+N+Prop+Sem/Mal+Sg+Ill`
* *Kublaias:* `Kublai+N+Prop+Sem/Mal+Sg+Ela`

LEXICON DUBAI-sur  Surnames

* Maarthai # Even-syllable test examples:*
* *Maarthai:* `Maarthai+N+Prop+Sem/Sur+Sg+Nom`
* *Maarthaiaj:* `Maarthai+N+Prop+Sem/Sur+Sg+Ill`
* *Maarthaias:* `Maarthai+N+Prop+Sem/Sur+Sg+Ela`

LEXICON DUBAI-plc  Place names

* Madurai # Even-syllable test examples:*
* *Madurai:* `Madurai+N+Prop+Sem/Plc+Sg+Nom`
* *Maduraiaj:* `Madurai+N+Prop+Sem/Plc+Sg+Ill`
* *Maduraias:* `Madurai+N+Prop+Sem/Plc+Sg+Ela`
* *maduraiak:* `Madurai+N+Prop+Sem/Plc+Der/k+N+Sg+Nom`

Words in lexicon BERN end on conconant, no cg, even syllable case marking with -av, -aj, -as, etc. Last syllable is stressed. Both assimilated and non-assmilated stems.

LEXICON BERN-ani   Animals

* Lillemor # Even-syllable test examples:*
* *Lillemor:* `Lillemor+N+Prop+Sem/Ani+Sg+Nom`
* *Lillemoraj:* `Lillemor+N+Prop+Sem/Ani+Sg+Ill`
* *Lillemoras:* `Lillemor+N+Prop+Sem/Ani+Sg+Ela`

LEXICON BERN-mal   Male names

* Eystein # Even-syllable test examples:*
* *Eystein:* `Eystein+N+Prop+Sem/Mal+Sg+Nom`
* *Eysteinaj:* `Eystein+N+Prop+Sem/Mal+Sg+Ill`
* *Eysteinas:* `Eystein+N+Prop+Sem/Mal+Sg+Ela`

LEXICON BERN-surmal   name that are both sur- and male names

* Pipin # Even-syllable test examples:*
* *Pipin:* `Pipin+N+Prop+Sem/Sur+Sg+Nom`
* *Pipinaj:* `Pipin+N+Prop+Sem/Sur+Sg+Ill`
* *Pipinas:* `Pipin+N+Prop+Sem/Sur+Sg+Ela`

LEXICON BERN-fem   Female name

* Ragnfrid # Even-syllable test examples:*
* *Ragnfrid:* `Ragnfrid+N+Prop+Sem/Fem+Sg+Nom`
* *Ragnfridaj:* `Ragnfrid+N+Prop+Sem/Fem+Sg+Ill`
* *Ragnfridas:* `Ragnfrid+N+Prop+Sem/Fem+Sg+Ela`

Different lexicon for female persons. Audhild.

LEXICON BERN-sur  Surnames

* Lind # Even-syllable test examples:*
* *Lind:* `Lind+N+Prop+Sem/Sur+Sg+Nom`
* *Lindaj:* `Lind+N+Prop+Sem/Sur+Sg+Ill`
* *Lindas:* `Lind+N+Prop+Sem/Sur+Sg+Ela`

LEXICON BERN-plc  Placenames

* Beijing # Even-syllable test examples:*
* *Beijing:* `Beijing+N+Prop+Sem/Plc+Sg+Nom`
* *Beijingaj:* `Beijing+N+Prop+Sem/Plc+Sg+Ill`
* *Beijingas:* `Beijing+N+Prop+Sem/Plc+Sg+Ela`

LEXICON BERN_MWE-plc  Placenames

LEXICON BERN-objsur   Names used as both objects and surnames. 

* Stenbukk # Even-syllable test examples:*
* *Stenbukk:* `Stenbukk+N+Prop+Sem/Obj+Sg+Nom`
* *Stenbukkaj:* `Stenbukk+N+Prop+Sem/Obj+Sg+Ill`
* *Stenbukkas:* `Stenbukk+N+Prop+Sem/Obj+Sg+Ela`

LEXICON BERN-orgsur  Names used for both organizations and surnames. 

* Nord # Even-syllable test examples:*
* *Nord:* `Nord+N+Prop+Sem/Org+Sg+Nom`
* *Nordaj:* `Nord+N+Prop+Sem/Org+Sg+Ill`
* *Nordas:* `Nord+N+Prop+Sem/Org+Sg+Ela`

LEXICON BERN-obj  Objects. Obs: Different lexicon for organisations. Microsoft.

* Sult # Even-syllable test examples:*
* *Sult:* `Sult+N+Prop+Sem/Obj+Sg+Nom`
* *Sultaj:* `Sult+N+Prop+Sem/Obj+Sg+Ill`
* *Sultas:* `Sult+N+Prop+Sem/Obj+Sg+Ela`

LEXICON BERN-org  Organizations

* Laks # Even-syllable test examples:*
* *Laks:* `Laks+N+Prop+Sem/Org+Sg+Nom`
* *Laksaj:* `Laks+N+Prop+Sem/Org+Sg+Ill`
* *Laksas:* `Laks+N+Prop+Sem/Org+Sg+Ela`

LEXICON BERN-LOAN-org  Organizations loan.  

* Reinsamelag # Even-syllable test examples:*
* *Reinsamelag:* `Reinsamelag+N+Prop+Sem/Org+Sg+Nom`
* ★*Reinsamelagaj:* `Reinsamelag+N+Prop+Sem/Org+Sg+Ill` (is not standard language)
* ★*Reinsamelagas:* `Reinsamelag+N+Prop+Sem/Org+Sg+Ela` (is not standard language)

LEXICON BERN-LOAN-plc  Placenames loan. 

* Mehamn # Even-syllable test examples:*
* *Mehamn:* `Mehamn+N+Prop+Sem/Plc+Sg+Nom`
* ★*Mehamnaj:* `Mehamn+N+Prop+Sem/Plc+Sg+Ill` (is not standard language)
* ★*Mehamnas:* `Mehamn+N+Prop+Sem/Plc+Sg+Ela` (is not standard language)

LEXICON BERN-LOAN-obj  Objects loan. 

* Verneplan # Even-syllable test examples:*
* *Verneplan:* `Verneplan+N+Prop+Sem/Obj+Sg+Nom`
* ★*Verneplanaj:* `Verneplan+N+Prop+Sem/Obj+Sg+Ill` (is not standard language)
* ★*Verneplanas:* `Verneplan+N+Prop+Sem/Obj+Sg+Ela` (is not standard language)

Different lexicon for names that are both surnames and places.

Lexicons OY work as BERN lexicons

Words in LONDONBERN are sent to both LONDON and BERN lexicons. Non-assmilated stems.

4-syllable stems

Words in lexicon BASUDIS are trisyllabic in sg nom, and work like standard 4-syllable nouns. End on conconant and have cg. Even syllable case marking with acc -áv, ill -áj, ela -ás, etc. Real lule sami stems.

LEXICON BASUDIS-org  Only singular. Placenames

LEXICON BASUDIS-mal   Male names

* Ájluhasj # 4-syllable test examples:*
* *Ájluhasj:* `Ájluhasj+N+Prop+Sem/Mal+Sg+Nom`
* *Ájluhadtjaj:* `Ájluhasj+N+Prop+Sem/Mal+Sg+Ill` (Eng. !should add dummy to prevent unusual dtj-stem?)
* *Ájluhattjas:* `Ájluhasj+N+Prop+Sem/Mal+Sg+Ela`

LEXICON BASUDIS-plc  Place names

* Ulldevis # 4-syllable test examples:*
* *Ulldevis:* `Ulldevis+N+Prop+Sem/Plc+Sg+Nom`
* *Ulldevissaj:* `Ulldevis+N+Prop+Sem/Plc+Sg+Ill`
* *Ulldevisás:* `Ulldevis+N+Prop+Sem/Plc+Sg+Ela`

Plurals

Words in lexicon VARGGAT even-syllable sámi plurals .

LEXICON VARGGAT-plc   Plural stems, sáme names.  Place names

LEXICON VARGGAT-org   Plural stems, sáme names. 

* Bieva #  test examples:*
* ★*Bievva:* `Bieva+N+Prop+Sem/Plc+Sg+Nom` (is not standard language)
* *Bieva:* `Bieva+N+Prop+Sem/Plc+Pl+Nom`
* *Bievajda:* `Bieva+N+Prop+Sem/Plc+Pl+Ill`
* *Bievajs:* `Bieva+N+Prop+Sem/Plc+Pl+Ela`

Words in lexicon ALEUHTAT even-syllables assimilated plurals.

LEXICON ALEUHTAT-plc  Plural names, not sami names. like -váre, -gårtje

### Odd syllable case marking

Words in lexicon LONDON end on conconant, no cg, case marking with -av, -ij, -is, etc. Last syllable is unstressed. Gets a regular odd syllable case marking. Both real lule sami stems, assimilated stems and non-assimilated stems

LEXICON LONDON-sur  Odd-syllable. Surnames. Final foot structure (X.) and (X..) => Loc:%>is

* Åstot # Odd-syllable test examples:*
* *Åstot:* `Åstot+N+Prop+Sem/Sur+Sg+Nom`
* *Åstodij:* `Åstot+N+Prop+Sem/Sur+Sg+Ill`
* *Åstodis:* `Åstot+N+Prop+Sem/Sur+Sg+Ela`

LEXICON LONDON-ani  Animals

* Jubmel # Odd-syllable test examples:*
* *Jubmel:* `Jubmel+N+Prop+Sem/Ani+Sg+Nom`
* *Jubmelij:* `Jubmel+N+Prop+Sem/Ani+Sg+Ill`
* *Jubmelis:* `Jubmel+N+Prop+Sem/Ani+Sg+Ela`

LEXICON LONDON-org   Only singular Organizations

* Klassekampen # Odd-syllable test examples:*
* *Klassekampen:* `Klassekampen+N+Prop+Sem/Org+Sg+Nom`
* *Klassekampenij:* `Klassekampen+N+Prop+Sem/Org+Sg+Ill`
* *Klassekampenis:* `Klassekampen+N+Prop+Sem/Org+Sg+Ela`

LEXICON LONDON-mal  Male names

* Mátteus # Odd-syllable test examples:*
* *Matteus:* `Matteus+N+Prop+Sem/Mal+Sg+Nom`
* *Matteusij:* `Matteus+N+Prop+Sem/Mal+Sg+Ill`
* *Matteusis:* `Matteus+N+Prop+Sem/Mal+Sg+Ela`

LEXICON LONDON-malsur  Names that can be both male- and surnames. Not used in smj-propernouns

* Timeus # Odd-syllable test examples:*
* *Timeus:* `Timeus+N+Prop+Sem/Mal+Sg+Nom`
* *Timeusij:* `Timeus+N+Prop+Sem/Mal+Sg+Ill`
* *Timeusis:* `Timeus+N+Prop+Sem/Mal+Sg+Ela`

LEXICON LONDON-fem  Female names

* Luhták # Odd-syllable test examples:*
* *Luhták:* `Luhták+N+Prop+Sem/Fem+Sg+Nom`
* *Luhtágij:* `Luhták+N+Prop+Sem/Fem+Sg+Ill`
* *Luhtágis:* `Luhták+N+Prop+Sem/Fem+Sg+Ela`

LEXICON LONDON-malfem  Names that can be both male and female names.Not used in smj-propernouns

* Robin # Odd-syllable test examples:*
* *Robin:* `Robin+N+Prop+Sem/Fem+Sg+Nom`
* *Robinij:* `Robin+N+Prop+Sem/Fem+Sg+Ill`
* *Robinis:* `Robin+N+Prop+Sem/Fem+Sg+Ela`

LEXICON LONDON-malplc  Names that can be both male- and placenames.Not used in smj-propernouns

* Jergol # Odd-syllable test examples:*
* *Jergol:* `Jergol+N+Prop+Sem/Mal+Sg+Nom`
* *Jergolij:* `Jergol+N+Prop+Sem/Mal+Sg+Ill`
* *Jergolis:* `Jergol+N+Prop+Sem/Mal+Sg+Ela`

LEXICON LONDON-plc  Only singular. Placenames

* Njierek # Odd-syllable test examples:*
* *Njierek:* `Njierek+N+Prop+Sem/Plc+Sg+Nom`
* *Njieregij:* `Njierek+N+Prop+Sem/Plc+Sg+Ill`
* *Njieregis:* `Njierek+N+Prop+Sem/Plc+Sg+Ela`

LEXICON TJIERREK-plc  Only singular. Placenames. Without cg. Same as LONDON, but does not get Sem/Sur tag, not usuall for SMJ place names to become surnames. 

* Njierek # Odd-syllable test examples:*
* *Njierek:* `Njierek+N+Prop+Sem/Plc+Sg+Nom`
* *Njieregij:* `Njierek+N+Prop+Sem/Plc+Sg+Ill`
* *Njieregis:* `Njierek+N+Prop+Sem/Plc+Sg+Ela`

LEXICON LONDON-orgsur  Names that can be both organizations and surnames.Not used in Smj-propernouns

* Rieser # Odd-syllable test examples:*
* *Rieser:* `Rieser+N+Prop+Sem/Sur+Sg+Nom`
* *Rieserij:* `Rieser+N+Prop+Sem/Sur+Sg+Ill`
* *Rieseris:* `Rieser+N+Prop+Sem/Sur+Sg+Ela`

LEXICON LONDON-obj  Objects. 

* Rovdjursutredningen # Odd-syllable test examples:*
* *Rovdjursutredningen:* `Rovdjursutredningen+N+Prop+Sem/Obj+Sg+Nom`
* *Rovdjursutredningenij:* `Rovdjursutredningen+N+Prop+Sem/Obj+Sg+Ill`
* *Rovdjursutredningenis:* `Rovdjursutredningen+N+Prop+Sem/Obj+Sg+Ela`

LEXICON LONDON-LOAN-obj  Objects loan. Not used in smj-propernouns

* Sameloven # Odd-syllable test examples:*
* *Sameloven:* `Sameloven+N+Prop+Sem/Obj+Sg+Nom`
* ★*Samelovenij:* `Sameloven+N+Prop+Sem/Obj+Sg+Ill` (is not standard language)
* ★*Samelovenis:* `Sameloven+N+Prop+Sem/Obj+Sg+Ela` (is not standard language)

LEXICON LONDON-LOAN-plc  Only nominatives. Placenames loan. Not used in Smj-propernouns

* Jordandalen # Odd-syllable test examples:*
* *Jordandalen:* `Jordandalen+N+Prop+Sem/Plc+Sg+Nom`
* ★*Jordandalenij:* `Jordandalen+N+Prop+Sem/Plc+Sg+Ill` (is not standard language)
* ★*Jordandalenis:* `Jordandalen+N+Prop+Sem/Plc+Sg+Ela` (is not standard language)

LEXICON LONDON-LOAN-org   Only nominative. Organizations loan.Not used in smj-propernouns

* Samfunnsavdelingen # Odd-syllable test examples:*
* *Samfunnsavdelingen:* `Samfunnsavdelingen+N+Prop+Sem/Org+Sg+Nom`
* ★*Samfunnsavdelingenij:* `Samfunnsavdelingen+N+Prop+Sem/Org+Sg+Ill` (is not standard language)
* ★*Samfunnsavdelingenis:* `Samfunnsavdelingen+N+Prop+Sem/Org+Sg+Ela` (is not standard language)

JOKULL-plc are placenames. Lexicon added to make the code compile (?)

 +N+Prop+Sem/Plc: LONDONDECL-PLC-SUR ;  Placenames. NB added to make the code compile, needs revision. Gets an odd syllable case marking. Non-assimilated stems.

* Drangajökull # Even-syllable test examples:*
* *Drangajökull:* `Drangajökull+N+Prop+Sem/Plc+Sg+Nom`
* *Drangajökullij:* `Drangajökull+N+Prop+Sem/Plc+Sg+Ill`
* *Drangajökullis:* `Drangajökull+N+Prop+Sem/Plc+Sg+Ela`

Words in lexicon ANAR  end on conconant, no cg, case marking with ill -ij, ela -is. Gets an odd syllable case marking. Lule sami stems.

LEXICON ANAR-mal  Male names. 

LEXICON ANAR-plc   Place names

* Guhttás # Odd-syllable test examples:*
* *Guhttás:* `Guhttás+N+Prop+Sem/Plc+Sg+Nom`
* *Guhttásij:* `Guhttás+N+Prop+Sem/Plc+Sg+Ill`
* *Guhttásis:* `Guhttás+N+Prop+Sem/Plc+Sg+Ela`

Words in PIPPI lexicons are i-final, have no cg, no second syllable vowel change, and get odd syllable case marking with acc -hav, ill -hij, elat -his, etc. Works as "riebij", but without the -j in nominative (it should maybe be Sirij and Pippij in nom?) and without cg. The last syllable is unstressed. Non-assimilated stems. 

LEXICON PIPPI-ani  IVowel-final names where case endings are added directly, no cg. Animals.

* Rullahuuli # Even-syllable test examples:*
* *Rullahuuli:* `Rullahuuli+N+Prop+Sem/Ani+Sg+Nom`
* *Rullahuulihij:* `Rullahuuli+N+Prop+Sem/Ani+Sg+Ill`
* *Rullahuulihis:* `Rullahuuli+N+Prop+Sem/Ani+Sg+Ela`

LEXICON PIPPI-obj  Vowel-final names where case endings are added directly, no cg. Object names

* Audi # Even-syllable test examples:*
* *Audi:* `Audi+N+Prop+Sem/Obj+Sg+Nom`
* *Audihij:* `Audi+N+Prop+Sem/Obj+Sg+Ill`
* *Audihis:* `Audi+N+Prop+Sem/Obj+Sg+Ela`

LEXICON PIPPI-org  Vowel-final names where caseendings are added directly, no cg. organizations

* Kon-Tiki # Even-syllable test examples:*
* *Kon-Tiki:* `Kon-Tiki+N+Prop+Sem/Org+Sg+Nom`
* *Kon-Tikihij:* `Kon-Tiki+N+Prop+Sem/Org+Sg+Ill`
* *Kon-Tikihis:* `Kon-Tiki+N+Prop+Sem/Org+Sg+Ela`

LEXICON PIPPI-mal  Vowel-final names where case are added directly, no cg. Male names

* Gianni # Even-syllable test examples:*
* *Gianni:* `Gianni+N+Prop+Sem/Mal+Sg+Nom`
* *Giannihij:* `Gianni+N+Prop+Sem/Mal+Sg+Ill`
* *Giannihis:* `Gianni+N+Prop+Sem/Mal+Sg+Ela`

LEXICON PIPPI-fem  Vowel-final names where case endings are added directly, no cg. Female names

* Guri # Even-syllable test examples:*
* *Guri:* `Guri+N+Prop+Sem/Fem+Sg+Nom`
* *Gurihij:* `Guri+N+Prop+Sem/Fem+Sg+Ill`
* *Gurihis:* `Guri+N+Prop+Sem/Fem+Sg+Ela`

LEXICON PIPPI-femsur  Vowel-final names where case endings are added directly, no cg. Female names also used as surnames

* Turi # Even-syllable test examples:*
* *Turi:* `Turi+N+Prop+Sem/Fem+Sg+Nom`
* *Turihij:* `Turi+N+Prop+Sem/Fem+Sg+Ill`
* *Turihij:* `Turi+N+Prop+Sem/Sur+Sg+Ill`
* *Turihis:* `Turi+N+Prop+Sem/Fem+Sg+Ela`

LEXICON PIPPI-malfem  Vowel-final names where case endings are added directly, no cg. Names that can be both female and male names

* Kari # Even-syllable test examples:*
* *Kari:* `Kari+N+Prop+Sem/Mal+Sg+Nom`
* *Kari:* `Kari+N+Prop+Sem/Fem+Sg+Nom`
* *Karihij:* `Kari+N+Prop+Sem/Mal+Sg+Ill`
* *Karihis:* `Kari+N+Prop+Sem/Mal+Sg+Ela`

* # Even-syllable test examples:*

* # Even-syllable test examples:*

LEXICON PIPPI-sur  Vowel-final names where case endings are added directly, no cg. Surnames

* Sammallahti # Even-syllable test examples:*
* *Sammallahti:* `Sammallahti+N+Prop+Sem/Sur+Sg+Nom`
* *Sammallahtihij:* `Sammallahti+N+Prop+Sem/Sur+Sg+Ill`
* *Sammallahtihis:* `Sammallahti+N+Prop+Sem/Sur+Sg+Ela`

* # Even-syllable test examples:*

LEXICON PIPPI-plc  Vowel-final names where caseendings are added directly, no cg. Place names

* Lapinlampi # Even-syllable test examples:*
* *Lapinlampi:* `Lapinlampi+N+Prop+Sem/Plc+Sg+Nom`
* *Lapinlampihij:* `Lapinlampi+N+Prop+Sem/Plc+Sg+Ill`
* *Lapinlampihis:* `Lapinlampi+N+Prop+Sem/Plc+Sg+Ela`

* # Even-syllable test examples:*

LEXICON PIPPI-LOAN-plc  Only nominatives. Vowel-final names where case endings are added directly, no cg.Place names

* Haltiatunturi # Even-syllable test examples:*
* *Haltiatunturi:* `Haltiatunturi+N+Prop+Sem/Plc+Sg+Nom`
* ★*Haltiatunturijij:* `Haltiatunturi+N+Prop+Sem/Plc+Sg+Ill` (is not standard language)
* ★*Haltiatunturijis:* `Haltiatunturi+N+Prop+Sem/Plc+Sg+Ela` (is not standard language)

* # Even-syllable test examples:*

* # Even-syllable test examples:*

Words in lexicon DUORTNUS end on conconant, have cg and second syllable vowel change o:u, e:á. Odd syllable case marking. Real lule sami or one non-assimilated stem.

LEXICON DUORTNUS-mal  Male names

* Mihkal # Odd-syllable test examples:*
* *Mihkal:* `Mihkal+N+Prop+Sem/Mal+Sg+Nom`
* *Mihkkalij:* `Mihkal+N+Prop+Sem/Mal+Sg+Ill`
* *Mihkkalis:* `Mihkal+N+Prop+Sem/Mal+Sg+Ela`

LEXICON DUORTNUS-sur  Male names

* Vándar # Odd-syllable test examples:*
* *Vándar:* `Vándar+N+Prop+Sem/Sur+Sg+Nom`
* *Vánndarij:* `Vándar+N+Prop+Sem/Sur+Sg+Ill`
* *Vánndaris:* `Vándar+N+Prop+Sem/Sur+Sg+Ela`

LEXICON DUORTNUS-org  Odd-syllable ending on consonant, with cg. Organizations

LEXICON DUORTNUS-plc  Odd-syllable ending on consonant, with cg.Placenames

* Hardangerduottar # Odd-syllable test examples:*
* *Hardangerduottar:* `Hardangerduottar+N+Prop+Sem/Plc+Sg+Nom`
* *Hardangerduoddara:* `Hardangerduottar+N+Prop+Sem/Plc+Sg+Gen`
* *Hardangerduoddarij:* `Hardangerduottar+N+Prop+Sem/Plc+Sg+Ill`
* *Hardangerduoddaris:* `Hardangerduottar+N+Prop+Sem/Plc+Sg+Ela`

LEXICON TIEMPEL-obj  Same as DUORTNUS, only without second syll vowel change. Odd syllanle case marking Lexicon presently only for two -tiempel-final words. Lule sami stems.

* Artemistiempel # Odd-syllable test  examples:*
* *Artemistiempel:* `Artemistiempel+N+Prop+Sem/Obj+Sg+Nom`
* *Artemistiemmpelij:* `Artemistiempel+N+Prop+Sem/Obj+Sg+Ill`
* *Artemistiemmpelin:* `Artemistiempel+N+Prop+Sem/Obj+Sg+Ine`
* *Artemistiemmpelis:* `Artemistiempel+N+Prop+Sem/Obj+Sg+Ela`

LEXICON TIEMPEL-org  Same as DUORTNUS, only without second syll vowel change. Odd syllanle case marking Lexicon presently only for two -tiempel-final words. Lule sami stems.

* Artemistiempel # Odd-syllable test  examples:*
* *Samovarteáhtar:* `Samovarteáhtar+N+Prop+Sem/Org+Sg+Nom`
* *Samovarteáhttarij:* `Samovarteáhtar+N+Prop+Sem/Org+Sg+Ill`
* *Samovarteáhttarin:* `Samovarteáhtar+N+Prop+Sem/Org+Sg+Ine`
* *Samovarteáhttaris:* `Samovarteáhtar+N+Prop+Sem/Org+Sg+Ela`

Lexicon HEANDARAT is not in use in smj

+Pl+Nom:aQ1 K ;
+Pl+Gen:aQ1j K ;
+Pl+Gen:aQ1j RHyph ;
+Pl+Acc:aQ1jt K ;
+Pl+Ill:aQ1jda K ;
+Pl+Ine:aQ1jn K ;
+Pl+Ela:aQ1js K ;
+Pl+Com:aQ1j K ;

Words in lexicon EATNAMAT are odd-syllable plurals. Lule sami stems and non-assimilated stems.

LEXICON EATNAMAT-plc   Place names. Presently only for Vuolleednama

* Vuolleednama # Contrcted test examples:*
* ★*Vuolleednam:* `Vuolleednama+N+Prop+Sem/Plc+Sg+Nom` (is not standard language)
* *Vuolleednama:* `Vuolleednama+N+Prop+Sem/Plc+Pl+Nom`
* *Vuolleednamijda:* `Vuolleednama+N+Prop+Sem/Plc+Pl+Ill`
* *Vuolleednamijs:* `Vuolleednama+N+Prop+Sem/Plc+Pl+Ela`

LEXICON EATNAMAT-org   Organizations

### Contracted proper nouns

Words in lexicon DAVVISUOLLU are contracted propernouns ending on -åj/-oj. Lule sami stems

LEXICON DAVVISUOLU-plc  Contracted stems ending on -oj. Place names.

* Victoriasuoloj # Contracted test examples:*
* *Victoriasuoloj:* `Victoriasuoloj+N+Prop+Sem/Plc+Sg+Nom`
* *Victoriasuolluj:* `Victoriasuoloj+N+Prop+Sem/Plc+Sg+Ill`
* *Victoriasuollus:* `Victoriasuoloj+N+Prop+Sem/Plc+Sg+Ela`

Words in lexicon GEAVNNIS are contracted propernouns ending on -s.

LEXICON GEAVNNIS-plc   Contracted stems ending on -es. Place names. Lule sami stems.

* Gaza-Sárges # Contracted test examples:*
* *Gaza-Sárges:* `Gaza-Sárges+N+Prop+Sem/Plc+Sg+Nom`
* *Gaza-Sárggáj:* `Gaza-Sárges+N+Prop+Sem/Plc+Sg+Ill`
* *Gaza-Sárggás:* `Gaza-Sárges+N+Prop+Sem/Plc+Sg+Ela`

Words in lexicon SUOLLOT are contracted plurals. Lule sami stems.

LEXICON SULLOT-plc  Plural names, only names ending on -suollu.

* Falklandsuollu #  test examples:*
* ★*Falklandsuoloj:* `Falklandsuollu+N+Prop+Sem/Plc+Sg+Nom` (is not standard language)
* *Falklandsuollu:* `Falklandsuollu+N+Prop+Sem/Plc+Pl+Nom`
* *Falklandsuollujda:* `Falklandsuollu+N+Prop+Sem/Plc+Pl+Ill`
* *Falklandsuollujs:* `Falklandsuollu+N+Prop+Sem/Plc+Pl+Ela`

### Lexicons only used in sme/sma and that are sent to other lexicons in smj

ERVASTI is only used in smi-propenouns. Ervasti names are 3-syllable and are needed as a seperate lexicon because of sma. ERVASTI is same as ACCRA in smj and gets even syllable case marking.

MAKI and NIEMI is only used in smi-propenouns. Maki names are even-syllable finnish names and are needed as a seperate lexicon because of sma. MÄKI is same as ACCRA in smj and gets even syllable case marking.

HANNOLA is the same as ACCRA

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/affixes/propernouns.lexc](https://github.com/giellalt/lang-smj/blob/main/src/fst/morphology/affixes/propernouns.lexc)</small>

---

## src-fst-morphology-affixes-symbols.lexc.md 


## Symbol affixes

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/affixes/symbols.lexc](https://github.com/giellalt/lang-smj/blob/main/src/fst/morphology/affixes/symbols.lexc)</small>

---

## src-fst-morphology-affixes-verbs.lexc.md 



## Sublexica for Verb

Table of content:

* The auxiliaries
- Negation verb
- Copula
- Modals
* Main verbs
- Even syllable stems
- Intransitives
- Transitives
- Odd syllable stems
- Intranstives
- Transitives
- Contracted stems
- Intransitives
- Transitives
- Assimilated loan verbs
- Intransitives
- Transitives
- Main inflectional categories
- suffix lexicas
- Verb derivation

IV means intransitive verbs, TV means transitive verbs.

## Auxiliary verbs

### Negation verb 

LEXICON NEG 

### Copula

LEXICON ÅRROT 

LEXICON LIEHKET 

LEXICON LULU 

### Modals

LEXICON GALGGAT_IV  even-syllable modal verbs.

* soajttet # Eveb-syllable test examples:*
* *soajtáv:* `soajttet+V+IV+Ind+Prs+Sg1`
* *soajttiv:* `soajttet+V+IV+Ind+Prt+Sg1`
* *såjtijma:* `soajttet+V+IV+Ind+Prt+Pl1`

LEXICON VIERTTIT_IV  Contracted modal verbs.

* hæhttut # Eveb-syllable test examples:*
* *hæhttut:* `hæhttut+V+IV+Inf`
* *hähttut:* `hæhttut+V+IV+Inf`
* *hæhttuv:* `hæhttut+V+IV+Ind+Prs+Sg1`
* *hähttuv:* `hæhttut+V+IV+Ind+Prs+Sg1`
* *hæhttujma:* `hæhttut+V+IV+Ind+Prt+Pl1`
* *hähttujma:* `hæhttut+V+IV+Ind+Prt+Pl1`

## Ordinary main verbs

### Even-syllable stems
Intransitives

LEXICON GALSSJOT_IV  Impersonal o-verbs

* hærmmot # Eveb-syllable test examples:*
* *hærmmu:* `hærmmot+V+IV+Ind+Prs+Sg3`
* *härmmu:* `hærmmot+V+IV+Ind+Prs+Sg3`
* *hærmoj:* `hærmmot+V+IV+Ind+Prt+Sg3`
* *härmoj:* `hærmmot+V+IV+Ind+Prt+Sg3`

LEXICON BÅRSSJOT_IV  o-verbs with

* hæssot # Eveb-syllable test examples:*
* *hæsov:* `hæssot+V+IV+Ind+Prs+Sg1`
* *häsov:* `hæssot+V+IV+Ind+Prs+Sg1`
* *hessuv:* `hæssot+V+IV+Ind+Prt+Sg1`
* *hæsojma:* `hæssot+V+IV+Ind+Prt+Pl1`
* *häsojma:* `hæssot+V+IV+Ind+Prt+Pl1`

LEXICON VILSSJOT_IV  o-verbs as BÅRSSJOT but without derivations -stit, -stallat, -stahttet, - stasstet.  With dim -astit that are hardcoded

* libjjot # Eveb-syllable test examples:*
* *libjov:* `libjjot+V+IV+Ind+Prs+Sg1`
* *libjjuv:* `libjjot+V+IV+Ind+Prt+Sg1`
* *libjojma:* `libjjot+V+IV+Ind+Prt+Pl1`

LEXICON BUOLLET_IV   e-verbs

* liddet # Even-syllable test examples:*
* *littáv:* `liddet+V+IV+Ind+Prs+Sg1`
* *liddiv:* `liddet+V+IV+Ind+Prt+Sg1`
* *littijma:* `liddet+V+IV+Ind+Prt+Pl1`

LEXICON BOAHTET_IV  e-verbs like BUOLLET_IV without passive

* boahtet # Even-syllable test examples:*
* *boadáv:* `boahtet+V+IV+Ind+Prs+Sg1`
* *båhtiv:* `boahtet+V+IV+Ind+Prt+Sg1`
* *bådijma:* `boahtet+V+IV+Ind+Prt+Pl1`

LEXICON VIEDJET_IV   e-verbs GRADE II-I WITH IE DIPHT.

* biehket # Eveb-syllable test examples:*
* *bægáv:* `biehket+V+IV+Ind+Prs+Sg1`
* *bägáv:* `biehket+V+IV+Ind+Prs+Sg1`
* *biehkiv:* `biehket+V+IV+Ind+Prt+Sg1`
* *biegijma:* `biehket+V+IV+Ind+Prt+Pl1`

LEXICON ASSTAT_IV   only for asstat, no passive

* asstat # Even-syllable test examples:*
* *astav:* `asstat+V+IV+Ind+Prs+Sg1`
* *asstiv:* `asstat+V+IV+Ind+Prt+Sg1`
* *astajma:* `asstat+V+IV+Ind+Prt+Pl1`

LEXICON RAVGGAT_IV   a- and å-verbs only Sg3 passive.

* bajássjaddat # Even-syllable test examples:*
* *biváv* `bivvat+V+IV+Ind+Prs+Sg1`
* *bivviv* `bivvat+V+IV+Ind+Prt+Sg1`
* *bivájma:* `bivvat+V+IV+Ind+Prt+Pl1`

LEXICON BIEGGAT_IV  Impersonals

* dednjat # Even-syllable test examples:*
* *dædnjá:* `dednjat+V+IV+Ind+Prs+Sg3`
* *dädnjá:* `dednjat+V+IV+Ind+Prs+Sg3`
* *denjaj:* `dednjat+V+IV+Ind+Prt+Sg3`

LEXICON RAVGGALASSTET_IV    Like RAVGGAT for already derived words (except words ending -uššat) - no actio as first part of compounds, but reintroduced

* dehpudallat # Even-syllable test examples:*
* *dehpudaláv:* `dehpudallat+V+IV+Ind+Prs+Sg1`
* *dehpudalliv:* `dehpudallat+V+IV+Ind+Prt+Sg1`
* *dehpudalájma:* `dehpudallat+V+IV+Ind+Prt+Pl1`

LEXICON BIEKKASTALLAT_IV  Already derived impersonals

* dehpudallat # Even-syllable test examples:*
* *duhpárasstá:* `duhpárasstet+V+IV+Ind+Prs+Sg3`
* *duhpárastij:* `duhpárasstet+V+IV+Ind+Prt+Sg3`

LEXICON GUOTTEDALLAT_IV    passives on -allat - no actio as first part of compounds, but reintroduced

* duolmudallat # Even-syllable test examples:*
* *duolmudaláv:* `duolmudallat+V+IV+Ind+Prs+Sg1`
* *duolmudalliv:* `duolmudallat+V+IV+Ind+Prt+Sg1`
* *duolmudalájma:* `duolmudallat+V+IV+Ind+Prt+Pl1`

LEXICON HIEBADUVVAT_IV   passives on -uvvat - no actio as first part of compounds, but reintroduced

* duostoduvvat # Even-syllable test examples:*
* *duostoduváv:* `duostoduvvat+V+IV+Ind+Prs+Sg1`
* *duostoduvviv:* `duostoduvvat+V+IV+Ind+Prt+Sg1`
* *duostoduvájma:* `duostoduvvat+V+IV+Ind+Prt+Pl1`

Transitives
LEXICON MÁHTTET_TV    verbs without personal passive

* jáhkket # Even-syllable test examples:*
* *jáhkáv:* `jáhkket+V+TV+Ind+Prs+Sg1`
* *jáhkkiv:* `jáhkket+V+TV+Ind+Prt+Sg1`
* *jáhkijma:* `jáhkket+V+TV+Ind+Prt+Pl1`

LEXICON BASSAT_TV   a- and å-verbs. Three passives

* jåksåt # Even-syllable test examples:*
* *jåvsåv:* `jåksåt+V+TV+Ind+Prs+Sg1`
* *jåksiv:* `jåksåt+V+TV+Ind+Prt+Sg1`
* *jåvsåjma:* `jåksåt+V+TV+Ind+Prt+Pl1`

LEXICON BASSALASSTET_TV   Like BASSAT for already derived words (except words ending -uššat) - no actio as first part of compounds, but reintroduced. Three passives

* jårgudallat # Even-syllable test examples:*
* *jårgudaláv:* `jårgudallat+V+TV+Ind+Prs+Sg1`
* *jårgudalliv:* `jårgudallat+V+TV+Ind+Prt+Sg1`
* *jårgudalájma:* `jårgudallat+V+TV+Ind+Prt+Pl1`

LEXICON HIEJTEDAHTTET_TV   Like BASSALASSTET_TV, but for words ending on -ahttet. Diffrence is Use/NG an Use/-Spell for NomAg "hiejedahttijn", since this is rearly used an is mixed up with gerundium "hiejtedattijn". Like BASSAT for already derived words (except words ending -uššat) - no actio as first part of compounds, but reintroduced. Three passives

* jårgudallat # Even-syllable test examples:*
* *jårgudaláv:* `jårgudallat+V+TV+Ind+Prs+Sg1`
* *jårgudalliv:* `jårgudallat+V+TV+Ind+Prt+Sg1`
* *jårgudalájma:* `jårgudallat+V+TV+Ind+Prt+Pl1`

LEXICON JUHKAT_TV   a-verbs like BASSAT_TV but but without derivations -stit, -stallat, -stahttet, - stasstet. Dim -istit that are hardcoded. Three passives

* njammat # Even-syllable test examples:*
* *njamáv:* `njammat+V+TV+Ind+Prs+Sg1`
* *njammiv:* `njammat+V+TV+Ind+Prt+Sg1`
* *njamájma:* `njammat+V+TV+Ind+Prt+Pl1`

LEXICON LÁHPPET_TV   e-verbs. Three passives

* oajttet # Even-syllable test examples:*
* *oajtáv:* `oajttet+V+TV+Ind+Prs+Sg1`
* *oajttiv:* `oajttet+V+TV+Ind+Prt+Sg1`
* *åjtijma:* `oajttet+V+TV+Ind+Prt+Pl1`

LEXICON JIEHKET_TV   e-verbs GRADE II-I WITH IE DIPHT. Three passives

* sievvet # Even-syllable test examples:*
* *sæváv:* `sievvet+V+TV+Ind+Prs+Sg1`
* *säváv:* `sievvet+V+TV+Ind+Prs+Sg1`
* *sievviv:* `sievvet+V+TV+Ind+Prt+Sg1`
* *sievijma:* `sievvet+V+TV+Ind+Prt+Pl1`

LEXICON DIEHTET_TV   Only this one word, unusual diphtong behavior. No passive

* diehtet # Even-syllable test examples:*
* *diedáv:* `diehtet+V+TV+Ind+Prs+Sg1`
* *diehtiv:* `diehtet+V+TV+Ind+Prt+Sg1`
* *diedijma:* `diehtet+V+TV+Ind+Prt+Pl1`

LEXICON GÁDJOT_TV  o-verbs. only duvvat passive.

* sjpædtjot # Even-syllable test examples:*
* *sjpættjov:* `sjpædtjot+V+TV+Ind+Prs+Sg1`
* *sjpättjov:* `sjpædtjot+V+TV+Ind+Prs+Sg1`
* *sjpædtjuv:* `sjpædtjot+V+TV+Ind+Prt+Sg1`
* *sjpädtjuv:* `sjpædtjot+V+TV+Ind+Prt+Sg1`
* *sjpættjojma:* `sjpædtjot+V+TV+Ind+Prt+Pl1`
* *sjpättjojma:* `sjpædtjot+V+TV+Ind+Prt+Pl1`

LEXICON JÅRGGOT_TV  o-verbs with dim -astit that are hardcoded.  Duvvat and dallat passive.

* boarkkot # Even-syllable test examples:*
* *boarkov:* `boarkkot+V+TV+Ind+Prs+Sg1`
* *boarkkuv:* `boarkkot+V+TV+Ind+Prt+Sg1`
* *boarkojma:* `boarkkot+V+TV+Ind+Prt+Pl1`

### Odd-syllable stems

This is just awaiting a manual classification

intransitives

LEXICON BIEKKASTIT_IV  Impersonals, only Sg3

LEXICON JÅRGESTIT_IV  ONLY FOR -STIT verbs, makes Err/Orth jårgest, an with other verbs in this lexicon they will get err/orth Prs Sg3 even if it's same as corrct prs sg3

* doalvestit # Odd-syllable test examples:*
* *doalvestav:* `doalvestit+V+IV+Ind+Prs+Sg1`
* *doalvestiv:* `doalvestit+V+IV+Ind+Prt+Sg1`
* *doalvestijma:* `doalvestit+V+IV+Ind+Prt+Pl1`

LEXICON MÅRIJDIT_IV   ONLY FOR Words ending -IJDIT. Same as BEGATJIT, but a common error is to write "jårgidit", so the whole -ijdit and Err/Orth -idit is made in this  lexicon

LEXICON BEGATJIT_IV   Words ending -tjit, -jdit, reciprocals on -dit, momentatives on -dit, -edit, continuatives on -ldit, -nit, essives on -hit and 5-syllables - no actio cmps, but  only Sg3 passivereintroduced

* duojkkuhit # Odd-syllable test examples:*
* *duojkkuhav:* `duojkkuhit+V+IV+Ind+Prs+Sg1`
* *duojkkuhiv:* `duojkkuhit+V+IV+Ind+Prt+Sg1`
* *duojkkuhijma:* `duojkkuhit+V+IV+Ind+Prt+Pl1`

LEXICON VÁNDARDIT_IV At the moment IV

* doalvestit # Odd-syllable test examples:*
* *vándardav:* `vándardit+V+IV+Ind+Prs+Sg1`
* *vándardiv:* `vándardit+V+IV+Ind+Prt+Sg1`
* *vándardijma:* `vándardit+V+IV+Ind+Prt+Pl1`

LEXICON BALÁDIT_IV   continuatives on -dit, frequentatives on -odit, reciprocals, momentatives and frequentatives ending -alit - actio cpms, only Sg3 passive

* lihtudit # Odd-syllable test examples:*
* *lihtudav:* `lihtudit+V+IV+Ind+Prs+Sg1`
* *lihtudiv:* `lihtudit+V+IV+Ind+Prt+Sg1`
* *lihtudijma:* `lihtudit+V+IV+Ind+Prt+Pl1`

LEXICON SUOGNALIT_IV  Trisyllabic Verbs ending -lit.  only Sg3 passive

* loavkkalit # Odd-syllable test examples:*
* *loavkkalav:* `loavkkalit+V+IV+Ind+Prs+Sg1`
* *loavkkaliv:* `loavkkalit+V+IV+Ind+Prt+Sg1`
* *loavkkalijma:* `loavkkalit+V+IV+Ind+Prt+Pl1`

LEXICON LASSÁNIT_IV  verbs ending -nit, -sit, no passive

* rievddánit # Odd-syllable test examples:*
* *rievddánav:* `rievddánit+V+IV+Ind+Prs+Sg1`
* *rievddániv:* `rievddánit+V+IV+Ind+Prt+Sg1`
* *rievddánijma:* `rievddánit+V+IV+Ind+Prt+Pl1`

LEXICON BÁHTARIT_IV verbs ending -rit.  only Sg3 passive

* sjtávttjurit # Odd-syllable test examples:*
* *sjtávttjurav:* `sjtávttjurit+V+IV+Ind+Prs+Sg1`
* *sjtávttjuriv:* `sjtávttjurit+V+IV+Ind+Prt+Sg1`
* *sjtávttjurijma:* `sjtávttjurit+V+IV+Ind+Prt+Pl1`

transitives

LEXICON FÁRMASTIT_TV   ONLY FOR verbs ending on -stit. makes Err/Orth jårgest, an with other verbs in this lexicon they will get err/orth Prs Sg3 even if it's same as corrct prs sg3. All -uvvat passives.

LEXICON HÁLIJDIT_TV   ONLY FOR Words ending -IJDIT. Same as MUJTATJIT, but a common error is to write "hálidit", so the whole -ijdit and Err/Orth -idit is made in this  lexicon

LEXICON UNNEDIT_TV   All -uvvat passives.

* nuoledit # Odd-syllable test examples:*
* *nuoledav:* `nuoledit+V+TV+Ind+Prs+Sg1`
* *nuolediv:* `nuoledit+V+TV+Ind+Prt+Sg1`
* *nuoledijma:* `nuoledit+V+TV+Ind+Prt+Pl1`

LEXICON MUJTATJIT_TV   Words ending -tjit, -jdit, reciprocals on -dit, momentatives on -dit, -edit, continuatives on -ldit, -nit, essives on -hit and 5-syllables - no actio cmps, but reintroduced. All -uvvat passives

* nårddådit # Odd-syllable test examples:*
* *nårddådav:* `nårddådit+V+TV+Ind+Prs+Sg1`
* *nårddådiv:* `nårddådit+V+TV+Ind+Prt+Sg1`
* *nårddådijma:* `nårddådit+V+TV+Ind+Prt+Pl1`

LEXICON BÅNJÅDIT_TV   continuatives on -dit, frequentatives on -odit, reciprocals, momentatives and frequentatives ending -alit - actio cpms. All -uvvat  passives.

* tsirggalit # Odd-syllable test examples:*
* *tsirggalav:* `tsirggalit+V+TV+Ind+Prs+Sg1`
* *tsirggaliv:* `tsirggalit+V+TV+Ind+Prt+Sg1`
* *tsirggalijma:* `tsirggalit+V+TV+Ind+Prt+Pl1`

LEXICON VUORDDELIT_TV  Trisyllabic Verbs ending -lit. All -uvvat passives

* tsåggålit # Odd-syllable test examples:*
* *tsåggålav:* `tsåggålit+V+TV+Ind+Prs+Sg1`
* *tsåggåliv:* `tsåggålit+V+TV+Ind+Prt+Sg1`
* *tsåggålijma:* `tsåggålit+V+TV+Ind+Prt+Pl1`

### Contracted stems

LEXICON SJIERRIT_IV  Impersonals

* boavddit # Contracted test examples:*
* *boavddi:* `boavddit+V+IV+Ind+Prs+Sg3`
* *boavddij:* `boavddit+V+IV+Ind+Prt+Sg3`

LEXICON BASSUT_IV  Passives

* buvvut # Contracted test examples:*
* *buvvuv:* `buvvut+V+IV+Ind+Prs+Sg1`
* *buvvujiv:* `buvvut+V+IV+Ind+Prt+Sg1`
* *buvvujma:* `buvvut+V+IV+Ind+Prt+Pl1`

LEXICON OADDÁT_IV    Inceptive, (doarrut,jåhttåt). Only Sg3 passive. Does not make nouns via -ár derivation.

* bæhkkát # Contracted test examples:*
* *bæhkkáv:* `bæhkkát+V+IV+Ind+Prs+Sg1`
* *bähkkáv:* `bæhkkát+V+IV+Ind+Prs+Sg1`
* *bæhkkájiv:* `bæhkkát+V+IV+Ind+Prt+Sg1`
* *bähkkájiv:* `bæhkkát+V+IV+Ind+Prt+Sg1`
* *bæhkkájma:* `bæhkkát+V+IV+Ind+Prt+Pl1`
* *bähkkájma:* `bæhkkát+V+IV+Ind+Prt+Pl1`

LEXICON DULLUT_IV   Does not make nouns via -ár derivation. Only Sg3 passiv.

* dussut # Contracted test examples:*
* *dussuv:* `dussut+V+IV+Ind+Prs+Sg1`
* *dussujiv:* `dussut+V+IV+Ind+Prt+Sg1`
* *dussujma:* `dussut+V+IV+Ind+Prt+Pl1`

LEXICON TJUOLLÁT_TV    Inceptiv. All passive. Does not make nouns via -ár derivation,  (gullát, bårråt)

* gajkkát # Contracted test examples:*
* *gajkkáv:* `gajkkát+V+TV+Ind+Prs+Sg1`
* *gajkkájiv:* `gajkkát+V+TV+Ind+Prt+Sg1`
* *gajkkájma:* `gajkkát+V+TV+Ind+Prt+Pl1`

LEXICON STRÁFFUT_TV    Does not make nouns via -ár derivation. All duvvat passives. 

* gáhpput # Contracted test examples:*
* *gáhppuv:* `gáhpput+V+TV+Ind+Prs+Sg1`
* *gáhppujiv:* `gáhpput+V+TV+Ind+Prt+Sg1`
* *gáhppujma:* `gáhpput+V+TV+Ind+Prt+Pl1`

LEXICON TSIEGGIT_TV   Makes nouns via -ár derivation. All duvvat passives. 

* gámmpit # Contracted test examples:*
* *gámmpiv:* `gámmpit+V+TV+Ind+Prs+Sg1`
* *gámmpijiv:* `gámmpit+V+TV+Ind+Prt+Sg1`
* *gámmpijma:* `gámmpit+V+TV+Ind+Prt+Pl1`
* *gámmpár:* `gámmpit+V+TV+Der/r+N+Sg+Nom`

LEXICON VALLIT_TV  Makes nouns via -ár derivation. Gets only passive Sg3

* hinnit # Contracted test examples:*
* *hinniv:* `hinnit+V+TV+Ind+Prs+Sg1`
* *hinnijiv:* `hinnit+V+TV+Ind+Prt+Sg1`
* *hinnijma:* `hinnit+V+TV+Ind+Prt+Pl1`
* *hinnár:* `hinnit+V+TV+Der/r+N+Sg+Nom`

contraced verbs assimilated and outside the main pattern.

LEXICON PLÁNIT_TV  Transitive Two-syll contraced words not in third grade as contraced verb have been. Two syllable transitive NEW loan verbs. Makes nouns via -ár derivation. All passives.

* hinnit # Contracted test examples:*
* *bloaggiv:* `bloaggit+V+TV+Ind+Prs+Sg1`
* *blåggiv:* `bloaggit+V+TV+Ind+Prs+Sg1`
* *bloaggijiv:* `bloaggit+V+TV+Ind+Prt+Sg1`
* *blåggijiv:* `bloaggit+V+TV+Ind+Prt+Sg1`
* *bloaggijma:* `bloaggit+V+TV+Ind+Prt+Pl1`
* *blåggijma:* `bloaggit+V+TV+Ind+Prt+Pl1`
* *bloaggár:* `bloaggit+V+TV+Der/r+N+Sg+Nom`
* *blåggår:* `bloaggit+V+TV+Der/r+N+Sg+Nom`

LEXICON SLEDUT_IV  Intransitive Two-syll contraced words not in third grade as contraced verb have been. Only Sg3 passiv.

* håŋŋlit # Contracted test examples:*
* *håŋŋliv:* `håŋŋlit+V+IV+Ind+Prs+Sg1`
* *håŋŋlijiv:* `håŋŋlit+V+IV+Ind+Prt+Sg1`
* *håŋŋlijma:* `håŋŋlit+V+IV+Ind+Prt+Pl1`

LEXICON BADASS_TV  NEW badly assimilated two syllable transitive loan verbs. Makes nouns via -ár derivation. All passives. Err/orth taged in stem file

LEXICON BADASS_IV   NEW badly assimilated two syllable intransitive loan verbs. Makes nouns via -ár derivation. Only Sg3 passiv. Err/orth taged in stem file.

LEXICON ABBONERE_TV   Transitive loan words with more than two syllables with -erit/ierit endings. Duvvat passives. Does not make nouns via -ár derivation. Only the two last syllables are assimilated to sami. LONG -e is assimilated in different ways in Norway and Sweden: In Norway, it becomes -ie, and in Sweden -e.

LEXICON BRILJERE_IV   Intransitive loan words with more than two syllables with -erit/ierit endings. Does not make nouns via -ár derivation. Only the two last syllables are assimilated to sami. Long -e is assimilated in different ways in dialects in Norway and Sweden: In Norway it often becomes -ie, while in Sweden itºs usually -e.  

LEXICON BRILJERE_IV_INFL   

* briljierit # Contracted test examples:*
* *briljieriv:* `briljierit+V+IV+Ind+Prs+Sg1`
* *briljeriv:* `briljierit+V+IV+Ind+Prs+Sg1`
* *briljierijiv:* `briljierit+V+IV+Ind+Prt+Sg1`
* *briljerijiv:* `briljierit+V+IV+Ind+Prt+Sg1`
* *briljierijma:* `briljierit+V+IV+Ind+Prt+Pl1`
* *briljerijma:* `briljierit+V+IV+Ind+Prt+Pl1`

LEXICON ABBONERE_TV_INFL   

* abbonierit # Contracted test examples:*
* *abbonieriv:* `abbonierit+V+TV+Ind+Prs+Sg1`
* *abboneriv:* `abbonierit+V+TV+Ind+Prs+Sg1`
* *abbonierijiv:* `abbonierit+V+TV+Ind+Prt+Sg1`
* *abbonerijiv:* `abbonierit+V+TV+Ind+Prt+Sg1`
* *abbonierijma:* `abbonierit+V+TV+Ind+Prt+Pl1`
* *abbonerijma:* `abbonierit+V+TV+Ind+Prt+Pl1`

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/affixes/verbs.lexc](https://github.com/giellalt/lang-smj/blob/main/src/fst/morphology/affixes/verbs.lexc)</small>

---

## src-fst-morphology-compounding.lexc.md 



* * *

<small>This (part of) documentation was generated from [src/fst/morphology/compounding.lexc](https://github.com/giellalt/lang-smj/blob/main/src/fst/morphology/compounding.lexc)</small>

---

## src-fst-morphology-phonology.twolc.md 



## Lule Sámi morphophonological rule set                    

This file documents the [phonology.twolc file](http://github.com/giellalt/lang-hun/blob/main/src/fst/phonology.twolc) 

The file contains the rule set for the non-segmental
Lule Sámi morphphonological rules

### Background

The file is modeled upon the corresponding file for North Sámi, but has been
revised and differs from it on several issues. The grammatical sources are
Spiik 1989: Lulesamisk grammatik and Nystø and Johnsen 2001: Sámásta 2.

The rule file has the sections **Alphabet, Sets, Definition** and **Rules**. The rules are ordered thematically, 
with 3 main sections: Consonant alternations (except CG), vowel alternations, and consonant gradation.

## Declarations and definitions

### The Alphabet section

#### The real Lule Sámi Alphabet

All Lule Saami letters are listed. The Lule Sámi ENG sound is represented as ñ. 
Lule Sámi letter repertoire is not fully standardised. In the source code we write (and you shall write!) æ; ø; ŋ, 
but the parser tolerates input written with the the letters ä; ö; ń, ñ (cf. the 4 rules in the file smj/src/orthography/spellrelax.regex).

* **small letters =**  a á b c d e f g h i j k l m n ñ ń ŋ o p q			 
 r s t u v w x y z æ:æä ä:æä ø ö å %-				 
 é ó ú í à è ò ù ì ë ü ï â ê ô û î ã ý				 
 ç č đ ð š ŧ þ ß ª									 

* **capital letters =**  A Á B C D E F G H I J K L M N Ñ Ń Ŋ O P Q			
 R S T U V W X Y Z Æ:ÆÄ Ä:ÆÄ Ø Ö Å  	 
 É Ó Ú Í À È Ò Ù Ì Ë Ü Ï Â Ê Ô Û Î Ã Ý	 
 Ç Č Đ Ð Š Ŧ þ	 

The 3rd degree mark º is never realized, hence declared as º:0.
 º:0   = Gradation mark
 %/    = Literal /, not the TWOLC reserved symbol
 ':'   = Apostrophe

Literal quotes and angles must be escaped (cf morpheme boundaries further down):

* »
* «
* >
* <

h2, g2 etc. are consonants deleted in the Nom. m3, d3 etc. (?) are consonants that undergo certain processes word-finally. 
This issue should be looked into. Perhaps the two sets can be unified. 
The reason why there are more distinctions than for sme, is that the cns deletion process is more phonological in sme.

*  ':'   =  Morphophonemes  in sme, here temporarily due to common propernoun file

*  ':'   =  these are deleted in nom
*  ':'   =  these can not occur before #
*  ':'   =  Non-sámi cons clusters
*  ':'   =  Do not change these where they would normally undergo umlaut etc

#### The Dummy symbols
The Dummy symbols are taken from the sme file for convenience, only a small part of them are actually used, 
they are defined in the Sets section along the way, included there as soon as they are used. 
The set of actually used Dummy symbols is thus the set declared in "Dummy".
The Dummy symbols trigger morphophonological rules. X is used for nouns
and adjectives, Y for verbs and Q for processes common to all
The symbols themselves are used in the following way:

OBS: the definitions are not all correct or sufficiently specific

* ****X1:0****:  Deletes final consonants in short essive of odd syllables
* ****X2:0****:  WeG and neutralization of g8, etc. (hivsik-hivsiga)
* ****X3:0****:  Weg and deletion of g8, etc. (bena-bednaga)
* ****X4:0** : e:á and e:å in illatives and px. a:á and o**: u in Px and ill of a-stem actors and o-stems
* ****X5:0** : e:á, e:å and o:u in odd-syllable nouns, but also for some even nouns (o**: u f.eks)
* ****X6:0** : Deviant III-I consonant gradation (in contracted stems, guobbmu**: guomoj)
* ****X7:0** : WeG and e:á, e:å, o:á, o:u in front of diminutives, e**: å in -lasj der
* ****X8:0****:  Stem vowel alternations in Px
* ****X9:0****:  Stem-vowel and central consonant shortening in first part(s) of compounds  
* ****Q1:0** : The general weak grade trigger. Stem vowel change e:i and o**: u in front of j.
				 Dipht. simpl.  Any environment #only# demanding WeG shall use Q1.
* ****Q2:0** : Vowel harmony**:  2nd syll e realized as å whenever 1st syll is å.
* ****Q3:0****:  WeG in contracted, also does not trigger Dipht simpl.
* ****Q4:0** : Stem vowel change e:i and o**: u in front of j. Dipht. simpl. Like Q1 but strong grade.
* ****Q5:0** : e**: á stem vowel change for word diehtet. Weak grade.
* ****Q6:0** : e**: á stem wovel change for word diehtet. Strong grade.
* ****Q7:0** : e**: á stem vowel change for word diehtte. Extra strong grade
* ****Q8:0****:  Stem vowel deletion, impII of verbs.
* ****Q9:0****:  TBW  
* ****Y1:0****:  Stem vowel deletion, imp 3sg, 3du, 2pl, 3pl of verbs
* ****Y2:0****:  "Indicative Present Singular 3rd Final Vowel in verbs"
* ****Y3:0****:  PrsPrc
* ****Y4:0****:  e &gt; u in front of dersuff, o &gt; u and e &gt; á in front of dersuffix -alla
* ****Y5:0****:  e &gt; a, i &gt; á, o &gt; u, e &gt; å in verb derivation
* ****Y6:0****:  "Consonant insertion as II-III strengthening gradation", verbs +PrsPrt and +Imprt+Du2
* ****Y7:0****:  "Consonant insertion as II-III strengthening gradation", nouns and propernouns
* ****Y8:0****:  "Stem vowel deletion in even-syllable verbs, imp 1du, 1pl"
* ****Y9:0****:  "Stem vowel deletion in short passives of even-syllable verbs
* ****Z1:0** : TBW "i**: á in Verb Derivation guollir>guollár"
* ****Z2:0** : e:å, o**: u in -lasj der
* ****Z3:0** : weak grade trigger fºf:f. Stem vowel change e:i and o**: u in front of j.
* ****Z4:0** : weak grade trigger fºf:f and e:á, e:å, o:á, o:u in front of diminutives, e**: å in -lasj der

* ****Ø1:0** : optional Word Final Cluster Simplification. Not smj grammar, made only for Err/Orths  ! málestit**:  málest instead for norm máles
* ****Ø2:0** : optional e**: i when followed by any conc (not only j). Not smj grammar, made only for Err/Orths ! "iednida"   
* ****Ø3:0** : Not smj grammar, made only for nominative Err/Orths: málles>mállás e:á, e:å, o:u, 
* ****Ø4:0** : Not smj grammar, made only for Err/Orths: changes h:j, b:p, t:d, m:v in contexts where it isn't supposed to change making err/orths as "årojij" (not g:k because og BENA lexicon)
* ****Ø5:0** : Not smj grammar, made only for Err/Orths: third extra long grade to first grad: l'l>l, m'm>m and so on

#### Morpheme boundaries:
* **** «  ****:  Derivational prefix
* **** »  ****:  Derivational suffix
* **** %< ****:  Inflectional prefx
* **** %> ****:  Inflectional suffix
* **** #  ****:  Word boundary for both lexicalised and dynamic compounds
* **** %^ ****:  (exceptional) soft hyphenation point
* **** %  ****:  a space
* **** ∑  ****:  mark before # to indicate dynamic comounds

### The Sets section

These are the sets:
* **Vow**:  the vowels
* **Cns**:  the consonants
* **StemCns**:  consonants that may occur in stem-final position
* **DelCns**:  the consonants that are deleted in nominative
* **Dummy**:  the set of dummy symbols, they are there to trigger certain morphophonological symbols
* **WeG**:  the dummy symbols that trigger weak grade

*  Vow     = a á e i o u y æ ä ø ö å æä			   
           A Á E I O U Y Æ Ä Ø Ä Å ÆÄ			   
           é ó ú í à è ò ù ì ë ü ï â ê ô û î ã ý   
           É Ó Ú Í À È Ò Ù Ì Ë Ü Ï Â Ê Ô Û Î Ã Ý   
           a9 e9 o9 æ9 ä9						   

*            a9 e9 o9 æ9 ä9						   
           É Ó Ú Í À È Ò Ù Ì Ë Ü Ï Â Ê Ô Û Î Ã Ý ;   

*  CapCns  = B C D F G H J K L M N Ñ Ń Ŋ P Q     
           R S T V W X Z Ç Č Đ Ð Š Ŧ þ ;    

*  Cns     = b b9 c d d9 f g g8 g9 h h8 h9 j j9 k l l9 m m8 m9 n n8 n9 ŋ ñ ń p q r r9 s t v w x z z9 º ;  = All consonants
*  Cns7    =      c      f         h       j      l    m       n       ŋ ñ ń p q r    s t v w x z      ;  = Surface cons excl 1st members of xx-type G3
*  Cns8    = b    c d    f g       h       j    k l    m       n       ŋ ñ ń p q r    s t v w x z      ;  = All surface consonants
*  Cns9    =   b9     d9     g8 g9   h8 h9   j9     l9   m8 m9   n8 n9             r9             º    ;  = Underlying consonants
*  Cns4    =             f                        l    m       n       ŋ ñ ń     r        v            ;  = Don't remember ...?
*  StemCns = b b9   d d9   g g8 g9 h h8 h9 j j9   l l9 m m8 m9 n n8 n9 ŋ ñ ń     r r9 s                ;  = Can occur stem-finally
*  DelCns  =                 g8      h8               m8      n8                                       ;  = deleted in nom...
*  WeG     = X2 X3 X7 Y5 Q1 Q2 Q3 Q6 Z3 Z4                                                             ;  
*  Dummy   = X2 X3 X4 X5 X6 X7 X8 Y1 Y2 Y3 Y4 Y5 Y6 Y7 Y8 Y9 Q1 Q2 Q3 Q4 Q5 Q6 Q7 Z1 Z2 Z3 Z4 %> » %^  ;  
*  Err     = Ø1 Ø2 Ø3 Ø4 Ø5                                                                            ;  Only for making err/orth inflections that don't follow smj-rules
*  Hyph    = %-                                                                                        ;  

### The Definitions section

In this section, the consonants are defined. This includes consonant clusters in the various grades and consonant alternations.

#### G3 vs G2
The alternation patterns according to Spiik's alternations series, here named S4, S5, ... for "Spiik alternation series 4, 5, etc." as they are presented in his grammar..  

|   Class | Alternation | Series

| --- | --- | --- 
|  S7 | kkn:k0n           | series 1
|  S8 | fºf:f0f           | series 2
|  S9 | jgg:j0g           | series 3
|  S4 | hkk:h0k           | series 4
|  S5 |  xy:zy (no zeros) | series 5
|  S6 |  xx:yy (no zeros) | series 6
|  S7 |  xy:zy (no zeros) | series 7
|  S8 |  ----- (no cg)    | series 8

Definition of gradation symbols:

* **LowerG2**:  A definition of Grade2 consonant sequences referring mostly to the surface level

* **LowerG1**:  A definition of Grade 1 consonant sequences
* **LowerG12**:  A definition of Grade 1 or 2 consonant sequences 

* **G32**:  A definition of Grade 3 or 2 consonant sequences

* **G31**:  A definition of Grade 3 or 1 consonant sequences which is not SMJ-grammar only for err/orths

* **G3**:  A definition of Grade 3 consonant sequences 

## The Rules section

### Overview

The rules section has the following chapters: Consonant alternations in certain pos, vowel lengthening, diphthong simplification, stem vowel alternations, consonant gradation rules

### Consonant alternations in certain pos

All rules deal with word-final position.

* ★*a* (is not standard language)
* ★*b* (is not standard language)

**Word Final Devoicing of Certain Single Consonants d9 etc. **  
* *iemed9#*
* *iemet#*

**Word Final Devoicing of Certain Single Consonants m9-v **  ! Spilt up because of err/orths ending on v, gierkav> we want err/orth gierkkam 

* *gierkkam9>Q1*
* *gier0kav>0*

* *gierkkam9>a*
* *gierkkam>a*

* *gierkkam9>ij*
* *gierkkam>ij*

* *gierkkam9>Q1X1n*
* *gier0ka0>00n*

**Err/Orths. **  

**Word final weakening -tj and -ttj to -sj part 1**  

**Word final weakening -tj and -ttj to -sj part 2**  
* *jågåtj*
* *jågåsj*

* *gålºleX7tj*
* *gål0lå0sj*

**Word Final Deletion of n8 m8 g8 h8**  

* *loavddag8X3#*
* *l0åv0da00#*

**Word Final Neutralization of g8, h8, m8**  

**Deleting Final h9 in Short Essive of Uneven Syllables**  

**Deleting Final l9 in Short Essive of Uneven Syllables**  

**Deleting Final m9 in Short Essive of Uneven Syllables**  

**Deleting Final n9 in Short Essive of Uneven Syllables**  

**Deleting Final r9 in Short Essive of Uneven Syllables**  

* *málest#*
* *máles0#*

### Vowel lengthening

The second syllable vowel a is lengthened to á whenever the stem consonants are in grade 1 and the first syllable vowel is short. Short vowels cannot preceed and follow a single intervocalic consonant.

**Compulsatory lengthening in grade I even-syllables**  

* *gussaQ1#*
* *gu0sá0#*
* *skihpaQ1s#*
* *ski0bá0s#*

### Diphtong simplification

The diphthong simplification handles oa:å and æ:e. Phonologically, these are identical processes, but since the dipthong is written by two letters in the former case and by one letter in the latter, the alternations must be handled separately. This section also handles ie:æ, these are in principle the same as oa:å, but the alternation does not occur in so many contexts. 

**oa:å Diphtong Simplification Part I **  

**oa:å Diphtong Simplification Part II**  

* *toahkkeY6X5jn*
* *toahkki00jn*

* ★*toahkkeY6X5jn* (is not standard language)
* ★*t0åhkki00jn* (is not standard language)

* *boalloX4j*
* *b0ållu0j*

* *roavggoX4j*
* *roavggu0j*
* ★*roavggoX4j* (is not standard language)
* ★*r0åvggu0j* (is not standard language)

* *toasºsoQ1X5jn*
* *t0ås0su00jn*

* ★*toasºsoQ1X5jn* (is not standard language)
* ★*toas0su00jn* (is not standard language)

* ★*moasºsoX5jn* (is not standard language)
* ★*m0ås0su0jn* (is not standard language)

* *moasºsoX5jn*
* *moas0su0jn*

* *goarºroY6X5jn*
* *goar0ru00jn*

* *goarroY6X5jn*
* *goarru00jn*

* ★*goarºroY6X5jn* (is not standard language)
* ★*g0år0ru00jn* (is not standard language)

* ★*goarºroY2* (is not standard language)
* ★*g0år0ru0* (is not standard language)

* *goarroY2*
* *g0årru0*

* *doad0jeY6*
* *doaddje0*

* ★*doad0jeY6* (is not standard language)
* ★*d0åddje0* (is not standard language)

* *goarºroY5d9it*
* *g0år0ru0dit*

* ★*goarºroY5d9it* (is not standard language)
* ★*goar0ru0dit* (is not standard language)

* *toab0moY6X4j*
* *toabbmu00j*

* *toabmoX4j*
* *t0åbmu0j*

* ★*toa0mboY6X4j* (is not standard language)
* ★*t0åbbmu00j* (is not standard language)

* *toabmoX7dallat*
* *t0å0mu0dallat*
* ★*toabmoX7dallat* (is not standard language)
* ★*toa0mu0dallat* (is not standard language)

* *oaddoY6X4j*
* *oaddu00j*

* *boassjkoQ1X5jn*
* *b0å0sjku00jn*

* ★*boassjkoQ1X5jn* (is not standard language)
* ★*boas0jku00jn* (is not standard language)

* *boajsstoQ1X5jn*
* *b0åj0stu00jn*

* ★*boajsstoQ1X5jn* (is not standard language)
* ★*boaj0stu00jn* (is not standard language)

* *boaggoQ1X5jn*
* *b0åkku00jn*

* ★*boaggoQ1X5jn* (is not standard language)
* ★*boakku00jn* (is not standard language)

*  examples:*

*  examples:*

*  examples:*

*  examples:*

*  examples:*

*  examples:*

*  examples:*

*  examples:*

*  examples:*

*  examples:*

**æ:e Diphthong Simplification **  

* *hærránis*
* *hæärránis*

* *hærránis#gæhttjalibme>*
* *hæärránis#gæähttjalibme>*

* *pasiænnta>Q1*
* *pasien0ta>0*

* *patænnta>Q1*
* *paten0ta>0*

* *kvotiænnta>Q1*
* *kvotien0ta>0*

* *kliænnta>Q1*
* *klien0ta>0*

* *Lævnnja>Q1*
* *Lev0nja>0*

* *a^dræssa#sáhtso>*
* *a^dræässa#sáhtso>*

* ★*a^dræssa#sáhtso>* (is not standard language)
* ★*a^dressa#sáhtso>* (is not standard language)

* *vædtsag8>X3*
* *vettsa0>0*

**ie:æä Diphthong Simplification Part I **  

* *ielvveY9ut*
* *0æälvv00ut*

* *iehttseY1up*
* *0æähtts00up*

* *giesseQ8us*
* *g0ess00us*

**ie:æä Diphthong Simplification Part II** The multichar æä is always the only option

* *jeht0sa>Y6*
* *jæähttse>0*

* *jeht0sa>Y6*
* *jæähttse>0*

* *gierre»X7dalla>t*
* *g0æä0rá»0dalla>t*

* *boarkkaQ1*
* *b0år0ka0*
* *loavddag8X3#*
* *l0åv0da00#*

**Vowel-change oa:å for verbs part I**  

**Vowel-change oa:å for verbs part II**  

* *hå0llaY2*
* *hoallá0*

* *gå0d0naY6*
* *goaddne0*

* ★*hållaY2* (is not standard language)
* ★*hållá0* (is not standard language)

* *gå0ht0saY6*
* *goahttse0*

### Stem vowel alternations

This section is divided according to stem vowels: a-, e-, o-, å-stems.

#### a-stem alternations

For a-stems, there is a:e and a:i.  Each alternation is triggered by a combination of phonological content and dummy symbols.

**a:e in Present Participle of even-syllable verbs**  

* *bassa>Y6*
* *basse>0*

**a:i in Prs Prc of even-syllable verbs**  

* *basºsaY6jt#*
* *bas0si0jt#*

**a-stem vowel deletion**  

* *giedjeg9>a#*
* *giedjeg>a#*

#### e-stem alternations

For e-stems, there is e:i, e:á, e:å, e:u and e:a. Each alternation is triggered by a combination of phonological content and dummy symbols.

**e:i in e-stems**  								        

* *manasseQ4j*
* *manassi0j*

* *biesseQ1j*
* *bie0si0j*

* *boaht0eY6j*
* *boahtti0j*

* *gálleQ1tj*
* *gá0li0sj*

* *gálleQ1tjav*
* *gá0li0tjav*

* *gálleQ1tjin*
* *gá0li0tjin*

* *gálleQ1tjihpit*
* *gá0li0tjihpit*

* *gálleQ1tjibá*
* *gá0li0tjibá*

* *gálleQ1tjip*
* *gá0li0tjip*

* *gálleQ1tja*
* *gá0li0tja*

* *gierre>Q1tja*
* *gie0ri>0tja*

* *gierre>Q1tj*
* *gie0ri>0sj*

The following two rules constitute a <= / => rule pair.

**e:á in certain stem types 1**  

**e:á in certain stem types 2**  

* *bárnneX4m*
* *bárnná0m*

* ★*bárnneX4m* (is not standard language)
* ★*bárnne0m* (is not standard language)

* *bálggeX4v*
* *bálggá0v*

* *gálleY3m#*
* *gállá0m#*

* *gálleQ2v#*
* *gá0lá0v#*

* *báhkoX7tj#*
* *bá0gu0sj#*

* *goahteX7tj#*
* *goa0dá0sj#*

* ★*goahteX7tj#* (is not standard language)
* ★*go00dá0sj#* (is not standard language)

**e:å in certain stem types with å as root vowel**  

* *gådeQ2v*
* *gådå0v*
* *jåhteQ2v*
* *jå0då0v*

* *gådeY2*
* *gådå0*
* *jåhteY2*
* *jåhtå0*

* *jåhteY3m*
* *jåhtå0m*

* *låhkkeY7tj#*
* *låhkkå0sj#*

**e-stem vowel deletion**  

* *ielvveY9ut*
* *0æälvv00ut*

#### i-stem alternations

For i-stems, there is i:á. The alternation is triggered by a combination of phonological content and dummy symbols.

**i:á in Verb Derivation**

#### o-stem alternations

The duplicates of the three lines of the two following rules are
there to resolve the => conflict between the two rules.

**o:u in certain stem types 1**  

**o:u in certain stem types 2**  

**u:o in contracted nouns**  

**o-stem vowel deletion**  

#### For å-stems there is å:e and å:i and vowel deletion.  Each alternation is triggered by a combination of phonological content and dummy symbols.

**å:e in Present Participle of even-syllable verbs**  

**å:i in Actor nouns of even-syllable verbs**  

**å-stem vowel deletion**  

#### alternations valid for several stem types

**Stem vowel deletion in even-syllable verbs, imp 3sg, 3du, 2pl, 3pl**  

* *ielvveY1up*
* *0æälvv00up*

* *giessaY1up*
* *giess00up*

* *bårråY1up*
* *bårr00up*

### Consonant gradation rules

The consonant gradation rules differ considerably from the corresponding rules for North Sámi. 
Instead of generalizing oversets of consonants (Cx:Cy &lt;=&gt; ...), each rule contains the
alternation for one consonant only, and to the right of the
&lt;=&gt; arrow is listed all the contexts where the relevant
alternation appears. The disadvantage with this method is that the
same context must be written several times, if e.g. both p, t and k
are deleted in the same contexts, each of these contexts must be
written several times, one for each consonant. The advantage is that
there are no conflicts during compilation, compilation takes 10
seconds rather than 3 minutes. The earlier North-Sámi-style rule
set was ordered according to CG pattern. This pattern is still
visible in the new rules, via the reference S1-3 etc. (Spiik's
Series 1, 3-letter pattern, etc) behind each subrule.

This actually opens up for a migration to an xfst rule file
instead of the current twolc format, since what xfst really cannot
do is generalize over sets (Cx:Cy etc.). This is an issue for future
revisions to decide.

The rules are divided in two subsections, deletion rules and
change (alternation) rules.

#### Deletion rules

The b, d, g deletion rules are similar, via the optional ( b ) etc. in front of the "_" symbol, both
bm:m and bbm:bm alternations are covered. The contexts differ to a certain extent. For
b and d, the III-I special gradation bbm:m is covered by two separate rules,
and a special Dummy (X6), not part of the ordinary WeG set.

Note that one of the rules for t:0 refers to #: as part of its context. As soon as clitics are
added to the word form, this rule will thus not be triggered. Look into this when the clitics are added.

**Consonant gradation b:0**  deletes **b** in S7 and S9 contexts

**Consonant gradation d:0**  ... etc.

* *bednag8>X3*
* *be0na0>0*

**Consonant gradation g:0**  

**Consonant gradation k:0**  

**Consonant gradation l:0**  

**Consonant gradation m:0**  

**Consonant gradation n:0**  

**Consonant gradation p:0**  

**Consonant gradation s:0**  

* *russjpeQ1*
* *ru0sjpe0*

* ★*russjpeQ1* (is not standard language)
* ★*russjpe0* (is not standard language)

**Consonant gradation ŋ:0**  

**Consonant gradation f:0**  

**Consonant gradation r:0**  

**Consonant gradation v:0**  

**Consonant gradation j:0**  

**Consonant gradation t:0**  

* *oajváladtj#*
* *oajvála0sj#*

**Gradation Series 4, II-I, tj and ts**  

#### Change rules

The Cx:Cy format was kept for hk:g, hp:b, ht:d, since the left context h:0 was unique, 
and no compilation conflict thus arose.

The bb:pp, gg:kk, dd:tt alternations were split into three rules, 
since keeping them in one Cx:Cy rule created compilation conflicts. 
Also, d:t contain a rule not found for the other two...

**Gradation Series 4, II-I**  

**bb:pp**  

* *oabbáQ1*
* *oappá0*

**gg:kk**  

* *vággeQ1*
* *vákke0*

* ★*vággeQ1* (is not standard language)
* ★*vágge0* (is not standard language)

**g:k change for clitic -ge**  

**dd:tt and dtj, dts**  

**Gradation Series 7, III-II, ks(t), kt, ktj, kts**  

Exceptional II-III inverse gradation in present participles

This gradation is only for II-I syllable verbs that get III as
present participles.

Candidates:

* bbm - bm - m
* ddn - dn - n
* ddnj- dnj- nj
* ggŋ - gŋ - ŋ
* ddj - dj - dj

* hkk - hk - g
* hpp - hp - b

* htt - ht - d
* httj- htj- tj
* htts- hts- ts

Strategy: Do insertion rule for the initial element.

**Consonant insertion as II-III strengthening gradation with bm, gŋ**  

**Consonant insertion as II-III strengthening gradation with dn/j + as I-III strengthening gradation with d**  

**Consonant insertion as II-III strengthening gradation with hk, hp,**  

**Consonant insertion as II-III strengthening gradation with htt(j/s)**  

Debugging of twol-rules

All rule conflicts have been successfully resolved. The rule file
should be kept that way. Look out for conflicts in the compilation
process, and resolve them as they appear!

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/phonology.twolc](https://github.com/giellalt/lang-smj/blob/main/src/fst/morphology/phonology.twolc)</small>

---

## src-fst-morphology-root.lexc.md 


## Lule Sámi morphological analyser

## Definitions for Multichar_Symbols

### Tags for POS

* **+N** = Noun
* **+A** = Adjective
* **+Adv** = Adverb
* **+V** = Verb
* **+Pron** = Pronouns
* **+CS** = Subjunction
* **+CC** = Conjunction
* **+Po** = Postposition
* **+Pr** = Preposition
* **+Interj** = Interjection
* **+Pcle** = Particle
* **+Num** = Numeral
* **+TODO** = Code for items that have not been modeled yet
* **+Dyn** = Code dynamic acronyms

#### Tags for sub-POS

* **+Prop** = Propernouns
* **+ACR** = Acronym
`@CODE` = telephone number (beta testings)

#### Pronoun subtypes

* **+Pers** = Personal pronoun
* **+Dem** = Demonstrative pronoun
* **+Interr** = Interrogative pronoun
* **+Refl** = reflexive pronoun
* **+Recipr** = reciprocal pronoun
* **+Rel** = relative pronoun
* **+Indef** = indefinite pronoun
* **+Coll** = collective numerals
* **+Arab** = arabic numerals
* **+Rom** = remertall

### Error tags

All Err-tags must have a normative form as lemma except Err/Lex

* **+Err/Orth** = Substandard. An ungrammatical, non-normative form of normative lemma.
* **+Err/Lex** = No normative lemma
* **+Err/Cmp** = No normative compound, often wrong first part of cmp (in other case than nom or gen, or adv og pronoun)
* **+Err/Der** = Lemmas that break with regular derivation rules, both morphologically and semantically
* **+Err/Infl** = Lemmas that break with normative inflection rules, often used with morphological changes
* **+Err/MissingSpace** = indicates that there is a missing space, causing an orthographic error. Used for "goadedagi", when it should be "goade dagi"
* **+Err/Hyph** = when there is a hyphen where none should have been
* **+Err/SpaceCmp** = used for compounds written apart - only retained in the HFST Grammar Checker disambiguation analyser

### Usage restriction tags

* **+Use/Marg** – Marginal, but normative lemmas. Not in speller.
* **+Use/-Spell** – Excluded from speller
* **+Use/-PLX** – Excluded from PLX speller
* **+Use/-PMatch** – Do not include in fst's made for hfst-pmatch
* **+Use/SpellNoSugg** – Recognized, but not suggested in speller
* **+Use/Circ** – Circular path
* **+Use/CircN** – Circular number path
* **+Use/Ped** – Remove from pedagogical speller
* **+Use/NG** – Do not generate, only for Oahpa and MT. In speller.
* **+Use/MT** – Generate for MT only, for restricting analyses needed
* **+Use/NGminip** – Not for miniparadigm in VD dicts
* **+Use/NotDNorm** – For words without formal normalization. Divvun suggest that this shouldn't be normative.
* **+Use/DNorm** – For words without formal normalization.  Divvun suggest that this should be normative. Included in speller.
* **+Use/PMatch** – Only use in fst's targeted for `hfst-pmatch`
* **+Use/Derrog** – Derrogatory word. Recognized, but not suggested in speller, same as SpellNoSugg
* **+Use/GC** – **only** retained in the HFST Grammar Checker disambiguation analyser
* **+Use/-GC** – **never** retained in the HFST Grammar Checker disambiguation analyser
* **+Use/TTS** – **only** retained in the HFST Text-To-Speech disambiguation tokeniser
* **+Use/-TTS** – **never** retained in the HFST Text-To-Speech disambiguation tokeniser

### Dialect and Area tags
* **+Area/SE** - Used in Sweden only
* **+Area/NO** - Used in Norway only
* **+Dial/N** Used in the northern areas.  Some might say that
these words are sme-words, but they are used by lulesamis in
the northern part of the dialect area. Words like "válmas"
* **+Dial/S** Used in the southern areas
* **+Dial/SH** Short forms

### Compounding tags

The tags are of the following form:
* **+CmpNP/xxx** - Normative (N), Position (P), ie. the tag describes what
position the tagged word can be in in a compound
* **+CmpN/xxx**  - Normative (N) **form** ie. the tag describes what
form the tagged word should use when making compounds
* **+Cmp/xxx**   - Descriptive compounding tags, ie. tags that*describes*
what form a word actually is using in a compound

#### Normative/prescriptive compounding tags

These govern compound behaviour for normative tools like the speller, ie. what a compound **SHOULD BE**.

The first part of the component may be ..
* **+CmpN/Sg** = Singular
* **+CmpN/SgN** = Singular Nominative
* **+CmpN/SgG** = Singular Genitive
* **+CmpN/PlG** = Plural Genitive
* **+CmpN/Attr** = Attributive

This part of the component can ..

* +CmpNP/All - ... be in all positions, **default**, this tag does not have to be written
* +CmpNP/First - ... only be first part in a compound or alone
* +CmpNP/Pref - ... only **first** part in a compound, NEVER alone
* +CmpNP/Last - ... only be last part in a compound or alone
* +CmpNP/Suff - ... only **last** part in a compound, NEVER alone
* +CmpNP/None - ... not take part in compounds
* +CmpNP/Only - ... only be part of a compound, i.e. can never
be used alone, but can appear in any position

The second part of the compound may require that the previous (left part) is (and thus overrides the regular CmpN tags):

* +CmpN/SgLeft  Singular to the left
* +CmpN/SgNomLeft  Singular nominative to the left
* +CmpN/SgGenLeft  Singular genitive to the left
* +CmpN/PlGenLeft  Plural genitive to the left

But these tags can again be overriden by the first word in a compound, if this part of the compound is tagged with a def tag:

* **+CmpN/Def**  Left override
* **+CmpN/DefSgGen**  Overrides left tag, requires SgGen form
* **+CmpN/DefPlGen**  Overrides left tag, requires PlGen form

### Descriptive compounding tags
Tags for compound analysis - this is what a compound actually is.
Some of these tags are also used in combination with the
above normative tags to actually enforce compound restrictions in the fst.

* **+Cmp/Sg**  Singular
* **+Cmp/SgNom**  Singular Nominative
* **+Cmp/SgGen**  Singular Genitive
* **+Cmp/PlGen**  Plural Genitiv
* **+Cmp/PlNom**  Plural Nominative
* **+Cmp/Attr**  Attribute
* **+Cmp/Sh**  testing ShCmp
* **+Cmp/Long**  Long for om SgNom when short form is default, tjåhkaNIBMEbievddegirjje and bierjjeDAHKAiehket
* **+Cmp/Unass**  Unassimiled as first part of Cmp, e.g. telegram- in stead for telegrámma-
* **+Cmp**  Dynamic compound - this tag should always be part of a dynamic compound.
It is important for Apertium, and useful in other cases as well.
* **+Cmp/SplitR**  This is a split compound with the other part to the right:
"Arbeids- og inkluderingsdepartementet" => Arbeids- = +Cmp/SplitR
* **+Cmp/SplitL**  This is a split compound with the other part to the left
Compound with (optional) hyphen, heavily weighted
Obligatory hyphen, not as badly weighed as +Cmp/Hyph

## Inflectional Tags
### Tags for Case and Number Inflection

*  **+Sg** = Singular number
*  **+Du** = Dual number
*  **+Pl** = Plural number
*  **+Ess** = Essive case
*  **+Nom** = Nominative case
*  **+Gen** = Genitive case
*  **+Acc** = Accusative case
*  **+Ill** = Illative case
*  **+Loc** = Locative case
*  **+Com** = Comitative case
*  **+Ine** = Inesive case
*  **+Ela** = Elative case
*  **+Par** = Partitive case
*  **+Abe** = Abessive case

### Possessive tags

* **+PxSg1** possessive suffix singular first person
* **+PxSg2** possessive suffix singular second person
* **+PxSg3** possessive suffix singular third person
* **+PxDu1** possessive suffix dual first person
* **+PxDu2** possessive suffix dual second person
* **+PxDu3** possessive suffix dual third person
* **+PxPl1** possessive suffix plural first person
* **+PxPl2** possessive suffix plural second person
* **+PxPl3** possessive suffix plural plural person

### Adjective specific tags
* +Attr Attribute
* +Card
* +Ord  CHECK THIS! In closed-sme there are +Ord entries without circ. tag

### Verbal inflection
* +Ind Indicative mood
* +Prs Present tense
* +Prt Past tense
* +Pot Potensial mood
* +Cond conditional mood
* +Imprt Imperative mood
* +Sg1 singular first person
* +Sg2 singular second person
* +Sg3 singular third person
* +Du1 dual first person
* +Du2 dual second person
* +Du3 dual third person
* +Pl1 plural first person
* +Pl2 plural second person
* +Pl3 plural plural person
* +Inf infinitive
* +Ger  gerundium
* +ConNeg = the main verb form used with negation verb. Like *bårå* in *Iv bårå guolev*.
* +Neg  negation verb
* +ImprtII  second imperative mood
* +PrsPrc  present participle
* +PrfPrc  past participle
* +Sup  supinum
* +VGen verb genitive
* +VAbess verb abessive
* +Actio Actio

### Other tags
* +ABBR
* +Symbol = independent symbols in the text stream, like £, €, ©
* +ACR
* +CLB
* +PUNCT
* +LEFT
* +RIGHT +MIDDLE
* **+CLBfinal**  Sentence final abbreviated expression ending in full stop, so that the full stop is ambiguous
* ^GUESSNOUNROOT
* +TV !
* +IV !  Transitivity tags
* **+G3** Grade 2-3 for homonymies with grade 1-2, +N+G3
* **+G7** Grade 3, no consonant gradation, +N+G7
* +Multi  Multiword phrase tag
* +Guess  for the name guesser
* +NomAg Actor Noun From Verb - Nomen Agentis

### Lexeme disambiguation = homonym tags
* **+Hom1**:  Homonymy
* **+Hom2**:  Homonymy

### Stem variant tags
* +v1 - variant 1
* +v2 - variant 2
* +v3 - variant 3
* +v4 - variant 4
* +v5 - variant 5

#### Question and Focus particles:
* +Qst
* +Clt
* +SentInit Sentence initial form of "liehket"
* +Cltl
* +Foc  These two are only found in SMJ - do we need them?
* +Foc/ge
* +Foc/gen
* +Foc/ga
* +Foc/Neg-k
* +Foc/Pos-k

#### Other tags
* **+MWE**  multi word expressions, goes to abbr
* **+Span** - used for numerical expressions denoting spans or intervals, like 5-10, 2012-2015, etc  
* **+Sh**  Short form
* **+Long**  Long form
* **+Gram/Comp** = Inherent comp, lexicalized derivation
* **+Gram/Superl** = Inherent superl, lexicalized derivation
* **+Gram/Dimin** = Inherent diminutive, lexicalized derivation
* **+Gram/NomAg** = Inherent Actor Noun From Verb - Nomen Agentis, lexicalized derivation
* **+Gram/r** = Inherent -r derivation. guollit-guollár
* **+Gram/NomAct** = Inherent Actio Noun From Verb - Nomen Actionis, lexicalized derivation
* **+Gram/NomInstr** = Inherent Intsrumental noun From Verb, Nomen instrumentalis,lexicalized derivation
* **+Gram/TAbbr**:  Transitive abbreviation (it needs an argument)
* **+Gram/NoAbbr**:  Intransitive abbreviations that are homonymous
* **+Gram/TNumAbbr**:  Transitive abbreviation if the following
* **+Gram/NumNoAbbr**:  Transitive abbreviations for which numerals
* **+Gram/TIAbbr**:  Both transitive and intransitive abbreviation
* **+Gram/IAbbr**:  Intransitive abbreviation (it takes no argument)
* **+Gram/3syll**:  trisyllabic verbs
* **!+Gram/SentInit**:  copula verb le-, tag is replaced by +SentInit

### Semantic tags to help disambiguation & syntactic analysis

These tags should always be located just before the POS tag.

* **+Sem/Act** = Activity; cleaning, work, occupation, project, photosynthesis
* **+Sem/Adr** = Webadr
* **+Sem/Amount** = Amount; pile, amount of lynx, amount of food, one fifteenth, ten percent
* **+Sem/Ani** = Animate; dog, reindeer, teddy bear,ndragon, lice
* **+Sem/Ani-fish** = Fish
* **+Sem/Aniprod** = Animal Product; sweat, reindeer skin, lice egg, blood for making dumplings, pee
* **+Sem/Body** = Bodypart; ear, bone, ear canal, artificial leg, mustache, nervous system
* **+Sem/Body-abstr** = Non-physical body part; Sjel, ånd, reason, soul, voice, eyesight, conscience
* **+Sem/Build** = Building; house, museum, Sámi tent, nest, sandcastle
* **+Sem/Build-room** = Room in a building, typically place to be
* **+Sem/Buildpart** = Part of building; closet, room, door, balcony, pool, office
* **+Sem/Cat** = Category; name, subjunction, suffix, password, existential sentence
* **+Sem/Clth** = Clothes/Clothing; shirt, hat, theater costume, shawl, seatbelt, diaper
* **+Sem/Clth-jewl** = Jewelery and similar; watch, sunglasses, ring, necklace, crown
* **+Sem/Clthpart** = Part of clothes; knapp, søm, pocket (OBS! Ctain-abstr), bottom part of an article of clothing, upper part of trousers, seam, button
* **+Sem/Ctain** = Container; suitcase, terrarium, closet, container, gas tank
* **+Sem/Ctain-abstr** = Abstract container; bank account, fund, account, loan fund, pot, bank account
* **+Sem/Ctain-clth** = Eks; lomme/pocket
* **+Sem/Curr** = Currency; not money, euro, US dollar, denar, Danish crown, currency
* **+Sem/Dance** = Dance; swing, rumba, ballet, belly dance, war dance
* **+Sem/Date** = Date
* **+Sem/Dir** = Direction; GPS course, stock exchange price, graph, tendency, starboard
* **+Sem/Domain** = Domain like politics, reindeerherding (a system of actions), anthropology, punk rock, biology, linguistics, medicine
* **+Sem/Drink** = Drink; tea, beer, UHT milk, soda, communion wine
* **+Sem/Dummytag** = Default tag for uncategorized nouns
* **+Sem/Edu** = Educational event; skiing high school skiing academy, course, music lesson, lesson, master
* **+Sem/Event** = Event; wedding, meeting, competition, election, festival
* **+Sem/Feat** = Feature; Árvu, age difference, homosexuality, femininity, identity, congruence
* **+Sem/Feat-measr** = Measurable feature; radius, diameter, volume, circumference, perimeter, frequency
* **+Sem/Feat-phys** = Physiological feature; size, color, height, shape, weight, horsepower
* **+Sem/Feat-psych** = Psychological feature; authority, nature, childishness, creativity, arrogance
* **+Sem/Fem** = Female name
* **+Sem/Food** = Food; bread, vegetarian food, flour, tobacco, salt
* **+Sem/Food-med** = Medicine; birth-control pill, asthma medicine, medicine, penicillin, vaccine
* **+Sem/Fruit** = Fruit and fruit-like edibles
* **+Sem/Furn** = Furniture; throne, chair, table, altar, trampoline
* **+Sem/Game** = Game; biŋgo bingo, TV game, flipper, paintball, chess
* **+Sem/Geom** = Geometrical object; triangle, triangle, tetrahedron, asymptote, star
* **+Sem/Group** = Animal or Human Group; family, herd, group, indigenous people, delegation
* **+Sem/Hum** = Human
* **+Sem/Hum-abstr** = Human abstract
* **+Sem/ID** = ID
* **+Sem/Ideol** = Ideology; nomadism, buddhism, feminism, christianity, fanaticism
* **+Sem/Lang** = Language; South Sámi, mother tongue, Maori, Yiddish, second language
* **+Sem/Mal** = Male name
* **+Sem/Mat** = Material for producing things; paper, steel, wood, leather, wool
* **+Sem/Measr** = Measure; unit of volume, quarter meter, hour, minus degree, wátta watt
* **+Sem/Money** = Has to do with money; wages, not Curr(ency), treasure, belongings, debt, food price, bill, pension
* **+Sem/Obj** = Object; thing, cup, thing, toy, painting
* **+Sem/Obj-catch** =
* **+Sem/Obj-clo** = Cloth; carpet, flag, curtain, silk sheets, napkin
* **+Sem/Obj-cogn** =
* **+Sem/Obj-el** = (Electrical) machine or apparatus; player, lamp, TV, radio, oven
* **+Sem/Obj-ling** = Object with something written on it
* **+Sem/Obj-play** = Play object
* **+Sem/Obj-rope** = flexible ropelike object; barbed wire, thread, rope, cable, dental floss
* **+Sem/Obj-surfc** = Surface object; blackboard, drawing paper, canvas, board (for playing board games), (money) bill
* **+Sem/Org** = Organisation; newspaper, supreme court, company, museum, administration
* **+Sem/Part** = Feature, part of something; half, part, percent, rest, tenth
* **+Sem/Perc-cogn** = Cloth
* **+Sem/Perc-emo** = Emotional perception; fear, feeling of identity, empathy, sadness, working motivation
* **+Sem/Perc-phys** = Physical perception; shoulder pain, gass smell, sleep (during the night), need of sleep, hunger
* **+Sem/Perc-psych** = Psychic perception
* **+Sem/Plant** = Plant; lichen, plant, cucumber, bluebell, poisonous mushroom
* **+Sem/Plantpart** = Plant part; twig, leaf, root, seed, pine trunk
* **+Sem/Play** = Play
* **+Sem/Plc** = Place; world, nature, airport, workplace, fireplace
* **+Sem/Plc-abstr** = Abstract place; bachelor level, job market, third place, Troms website, address
* **+Sem/Plc-elevate** = Elevated place; mountain, peak, mountain top, scree, volcano
* **+Sem/Plc-line** = Place limitations; national border, border, finish line, stop line, equator
* **+Sem/Plc-water** = Water; river, lake, polar sea, sea, well
* **+Sem/Pos** = Position (as in social position job); 50% position, presidency, fixed position, kindergarten place, role in society
* **+Sem/Process** = Process
* **+Sem/Prod** = Product
* **+Sem/Prod-audio** = Audio product; yoik, roar, Beatles song, Bible psalm, blues
* **+Sem/Prod-cogn** = Cognition product; thought, decision, knowledge, lack of understanding, requirement
* **+Sem/Prod-ling** = Linguistic product; message, question, agreement, translation, criticism
* **+Sem/Prod-vis** = Visual product; picture, film, TV series, documentary, art
* **+Sem/Rel** = Relation; relation, dependency, subordination, analogy, equivalence
* **+Sem/Route** = Route-like place; street, path, corridor, bridge, winter path
* **+Sem/Rule** = Rule or convention; cultural tradition, abortion law, EU rule, law of cosines, fair play
* **+Sem/Semcon** = Abstract semantic concept; result, objective, reason, alternative, case
* **+Sem/Sign** = Sign (e.g. numbers, punctuation); ID number, ČSV letters, quotation mark, hieroglyph, symbol
* **+Sem/Sport** = Sport; table tennis, judo, motor cross, ice hockey, floorball
* **+Sem/State** = State; hurry, captivity, anarchy, biodiversity, chaos
* **+Sem/State-sick** = Illness; allergy, cold, autism, dementia, somnambulism
* **+Sem/Substnc** = Substance; Water, sand, air, smoke, carbohydrate, vitamin, dust
* **+Sem/Sur** = Surname
* **+Sem/Symbol** = Symbol
* **+Sem/Time** = Time; áigi time, April, half an hour, Tuesday, deadline
* **+Sem/Time-clock** = Time
* **+Sem/Tool** = Prototypical tool for repairing things; axe, knife, fire striker, plastic hammer, wrench
* **+Sem/Tool-catch** = Tool used for catching; artificial fly, fishing net for cod, fishing rod, lasso used in wintertime, mouse trap
* **+Sem/Tool-clean** = Tool used for cleaning; broom, vegetable brush, toothbrush, cleaning equipment
* **+Sem/Tool-it** = Tool used in IT/tool within IT; IT infrastructure, analyzer, searching function, computer program, browser
* **+Sem/Tool-measr** = Tool used for measuring; barometer, hourglass, ruler, spirit level, scale
* **+Sem/Tool-music** = Musical instrument; shaman drum, guitar, violin, musical instrument, jaw harp
* **+Sem/Tool-write** = Writing tool; colored pen, pencil, chalk, paintbrush, paint
* **+Sem/Txt** = Written document; paper, book, letter, e-mail, song
* **+Sem/Veh** = Vehicle; car, boat, sled, vehicle, draft reindeer, bicycle
* **+Sem/Wpn** = Weapon; rifle, bow, sword, arrow, war axe
* **+Sem/Wthr** = The Weather or the state of ground; cloudy weather, wind, driving conditions, night sunlight, rain shower
* **+Sem/Year** = Year

#### Multiple Semantic tags:

* **+Sem/Act_Clth** =
* **+Sem/Act_Domain** =
* **+Sem/Act_Domain_Measr** =
* **+Sem/Act_Event** =
* **+Sem/Act_Feat** =
* **+Sem/Act_Feat-psych** =
* **+Sem/Act_Fruit** =
* **+Sem/Act_Group** =
* **+Sem/Act_Hum** =
* **+Sem/Act_Hum_Obj** =
* **+Sem/Act_Money** =
* **+Sem/Act_Obj** =
* **+Sem/Act_Obj-play** =
* **+Sem/Act_Org** =
* **+Sem/Act_Perc-emo** =
* **+Sem/Act_Plc** = A persons job is an activity, and a place as well
* **+Sem/Act_Prod-audio** =
* **+Sem/Act_Prod-vis** =
* **+Sem/Act_Route** = Activity and Route, ie johtolat
* **+Sem/Act_Semcon** =
* **+Sem/Act_State** =
* **+Sem/Act_Time** =
* **+Sem/Act_Tool-it** =
* **+Sem/Act_Txt** =
* **+Sem/Amount_Build** =
* **+Sem/Amount_Semcon** =
* **+Sem/Ani_Body** =
* **+Sem/Ani_Body-abstr_Hum** =
* **+Sem/Ani_Build** =
* **+Sem/Ani_Build_Hum_Txt** =
* **+Sem/Ani_Buildpart** =
* **+Sem/Ani_Cat** =
* **+Sem/Ani_Clth** =
* **+Sem/Ani_Feat_Hum** =
* **+Sem/Ani_Feat_Plant** =
* **+Sem/Ani_Food** =
* **+Sem/Ani_Group** =
* **+Sem/Ani_Group_Hum** =
* **+Sem/Ani_Group_Prod-vis** =
* **+Sem/Ani_Hum** =
* **+Sem/Ani_Hum_Plc** =
* **+Sem/Ani_Hum_Time** =
* **+Sem/Ani_Obj** =
* **+Sem/Ani_Org** =
* **+Sem/Ani_Plc** =
* **+Sem/Ani_Plc_Txt** =
* **+Sem/Ani_State** =
* **+Sem/Ani_Substnc** =
* **+Sem/Ani_Time** =
* **+Sem/Ani_Veh** =
* **+Sem/Aniprod_Hum** =
* **+Sem/Aniprod_Mat** =
* **+Sem/Aniprod_Obj** =
* **+Sem/Aniprod_Obj-clo** =
* **+Sem/Aniprod_Perc-phys** =
* **+Sem/Aniprod_Plant** =
* **+Sem/Aniprod_Plc** =
* **+Sem/Aniprod_Plc_Route** =
* **+Sem/Aniprod_Substnc** =
* **+Sem/Aniprod_Substnc_Wthr** =
* **+Sem/Body-abstr_Feat-psych** =
* **+Sem/Body-abstr_Prod-audio_Semcon** =
* **+Sem/Body_Body-abstr** =
* **+Sem/Body_Buildpart** =
* **+Sem/Body_Clth** =
* **+Sem/Body_Clthpart** =
* **+Sem/Body_Food** =
* **+Sem/Body_Fruit** =
* **+Sem/Body_Group_Hum** =
* **+Sem/Body_Group_Hum_Time** =
* **+Sem/Body_Hum** =
* **+Sem/Body_Mat** =
* **+Sem/Body_Measr** =
* **+Sem/Body_Obj** =
* **+Sem/Body_Obj_Tool-catch** =
* **+Sem/Body_Org** =
* **+Sem/Body_Part** =
* **+Sem/Body_Plc** =
* **+Sem/Body_Plc-elevate** =
* **+Sem/Body_Plc_State** =
* **+Sem/Body_State** =
* **+Sem/Body_Time** =
* **+Sem/Build-room_Furn** =
* **+Sem/Build-room_Org** =
* **+Sem/Build_Build-room** =
* **+Sem/Build_Buildpart** =
* **+Sem/Build_Clthpart** =
* **+Sem/Build_Edu_Org** =
* **+Sem/Build_Event_Org** =
* **+Sem/Build_Obj** =
* **+Sem/Build_Org** =
* **+Sem/Build_Plc** =
* **+Sem/Build_Route** =
* **+Sem/Build_Tool** =
* **+Sem/Build_Veh** =
* **+Sem/Buildpart_Ctain_Obj** =
* **+Sem/Buildpart_Obj** =
* **+Sem/Buildpart_Obj_Plc** =
* **+Sem/Buildpart_Part** =
* **+Sem/Buildpart_Plc** =
* **+Sem/Buildpart_Prod-audio** =
* **+Sem/Cat_Edu** =
* **+Sem/Cat_Feat** =
* **+Sem/Cat_Feat-psych_Plc** =
* **+Sem/Cat_Group_Hum** =
* **+Sem/Cat_Hum** =
* **+Sem/Cat_Measr** =
* **+Sem/Cat_Obj** =
* **+Sem/Cat_Plantpart** =
* **+Sem/Cat_Plantpart_Semcon** =
* **+Sem/Cat_Txt** =
* **+Sem/Clth-jewl_Curr** =
* **+Sem/Clth-jewl_Fruit** =
* **+Sem/Clth-jewl_Money** =
* **+Sem/Clth-jewl_Obj** =
* **+Sem/Clth-jewl_Org** =
* **+Sem/Clth-jewl_Plant** =
* **+Sem/Clth_Hum** =
* **+Sem/Clth_Obj** =
* **+Sem/Clth_Part** =
* **+Sem/Clth_Sur** =
* **+Sem/Clthpart_Plc** =
* **+Sem/Ctain-abstr_Org** =
* **+Sem/Ctain-clth_Plant** =
* **+Sem/Ctain-clth_Veh** =
* **+Sem/Ctain_Feat-phys** =
* **+Sem/Ctain_Furn** =
* **+Sem/Ctain_Obj-surfc** =
* **+Sem/Ctain_Plc** =
* **+Sem/Ctain_Tool** =
* **+Sem/Ctain_Tool-measr** =
* **+Sem/Ctain_Txt** =
* **+Sem/Curr_Org** =
* **+Sem/Dance_Org** =
* **+Sem/Dance_Prod-audio** =
* **+Sem/Dir_Geom** =
* **+Sem/Domain_Edu** =
* **+Sem/Domain_Feat** =
* **+Sem/Domain_Feat-phys** =
* **+Sem/Domain_Food-med** =
* **+Sem/Domain_Hum** =
* **+Sem/Domain_Ideol** =
* **+Sem/Domain_Obj** =
* **+Sem/Domain_Org** =
* **+Sem/Domain_Org_Plc-abstr** =
* **+Sem/Domain_Perc-emo** =
* **+Sem/Domain_Prod-audio** =
* **+Sem/Domain_State-sick** =
* **+Sem/Domain_Txt** =
* **+Sem/Drink_Plant** =
* **+Sem/Drink_Plc** =
* **+Sem/Drink_Plc_Substnc** =
* **+Sem/Edu_Event** =
* **+Sem/Edu_Geom** =
* **+Sem/Edu_Geom_Plc-line** =
* **+Sem/Edu_Group_Hum** =
* **+Sem/Edu_Hum** =
* **+Sem/Edu_Mat** =
* **+Sem/Edu_Org** =
* **+Sem/Edu_Txt** =
* **+Sem/Event_Food** =
* **+Sem/Event_Hum** =
* **+Sem/Event_Org** =
* **+Sem/Event_Plc** =
* **+Sem/Event_Plc-elevate** =
* **+Sem/Event_Time** =
* **+Sem/Feat-measr_Plc** =
* **+Sem/Feat-phys_Food_State** =
* **+Sem/Feat-phys_Hum** =
* **+Sem/Feat-phys_Obj** =
* **+Sem/Feat-phys_Plc-line** =
* **+Sem/Feat-phys_Tool-write** =
* **+Sem/Feat-phys_Veh** =
* **+Sem/Feat-phys_Wthr** =
* **+Sem/Feat-psych_Hum** =
* **+Sem/Feat-psych_Plc** =
* **+Sem/Feat_Hum** =
* **+Sem/Feat_Plant** =
* **+Sem/Food_Part** =
* **+Sem/Food_Perc-phys** =
* **+Sem/Food_Plant** =
* **+Sem/Food_Substnc** =
* **+Sem/Food_Time** =
* **+Sem/Fruit_Sport** =
* **+Sem/Furn_Ctain-abstr** =
* **+Sem/Game_Obj-play** =
* **+Sem/Geom_Obj** =
* **+Sem/Geom_Plc** =
* **+Sem/Group_Hum** =
* **+Sem/Group_Hum_Org** =
* **+Sem/Group_Hum_Plc** =
* **+Sem/Group_Hum_Prod-vis** =
* **+Sem/Group_Org** =
* **+Sem/Group_Plc** =
* **+Sem/Group_Prod-vis_Txt_Veh** =
* **+Sem/Group_Sign** =
* **+Sem/Group_State** =
* **+Sem/Group_Txt** =
* **+Sem/Hum-abstr** =
* **+Sem/Hum_Lang** =
* **+Sem/Hum_Lang_Plc** =
* **+Sem/Hum_Lang_Time** =
* **+Sem/Hum_Mat_Tool** =
* **+Sem/Hum_Money** =
* **+Sem/Hum_Obj** =
* **+Sem/Hum_Obj_Plc** =
* **+Sem/Hum_Org** =
* **+Sem/Hum_Part** =
* **+Sem/Hum_Plant** =
* **+Sem/Hum_Plc** =
* **+Sem/Hum_Rule** =
* **+Sem/Hum_State** =
* **+Sem/Hum_Tool** =
* **+Sem/Hum_Tool-catch** =
* **+Sem/Hum_Veh** =
* **+Sem/Hum_Wthr** =
* **+Sem/Lang_Tool** =
* **+Sem/Lang_Tool-catch** =
* **+Sem/Mat_Obj** =
* **+Sem/Mat_Part** =
* **+Sem/Mat_Plant** =
* **+Sem/Mat_Plantpart** =
* **+Sem/Mat_Plc** =
* **+Sem/Mat_Tool** =
* **+Sem/Mat_Tool-catch** =
* **+Sem/Mat_Txt** =
* **+Sem/Measr_Plc_Time** =
* **+Sem/Measr_Sign** =
* **+Sem/Measr_Time** =
* **+Sem/Money_Obj** =
* **+Sem/Money_Plc** =
* **+Sem/Money_Txt** =
* **+Sem/Obj-ling_Obj-surfc** =
* **+Sem/Obj-play** =
* **+Sem/Obj-play_Sport** =
* **+Sem/Obj_Part_Sign** =
* **+Sem/Obj_Perc-emo** =
* **+Sem/Obj_Plantpart** =
* **+Sem/Obj_Plc** =
* **+Sem/Obj_Plc-abstr** =
* **+Sem/Obj_Plc_Semcon** =
* **+Sem/Obj_Process** =
* **+Sem/Obj_Prod-audio** =
* **+Sem/Obj_Semcon** =
* **+Sem/Obj_Sign** =
* **+Sem/Obj_State** =
* **+Sem/Obj_Tool-music** =
* **+Sem/Obj_Tool-write** =
* **+Sem/Obj_Txt** =
* **+Sem/Obj_Veh** =
* **+Sem/Org_Play** =
* **+Sem/Org_Plc** =
* **+Sem/Org_Prod-audio** =
* **+Sem/Org_Prod-cogn** =
* **+Sem/Org_Prod-vis** =
* **+Sem/Org_Rule** =
* **+Sem/Org_State** =
* **+Sem/Org_Txt** =
* **+Sem/Org_Veh** =
* **+Sem/Part_Plc** =
* **+Sem/Part_Plc_Prod-audio** =
* **+Sem/Part_Prod-cogn** =
* **+Sem/Part_Substnc** =
* **+Sem/Part_Txt** =
* **+Sem/Perc-emo_Plc** =
* **+Sem/Perc-emo_State** =
* **+Sem/Perc-emo_Wthr** =
* **+Sem/Plant_Plantpart** =
* **+Sem/Plant_Plc** =
* **+Sem/Plant_Time_Wthr** =
* **+Sem/Plant_Tool** =
* **+Sem/Plant_Tool-measr** =
* **+Sem/Plc-abstr_Rel_State** =
* **+Sem/Plc-abstr_Route** =
* **+Sem/Plc-abstr_Rule** =
* **+Sem/Plc-abstr_State** =
* **+Sem/Plc-abstr_Txt** =
* **+Sem/Plc_Pos** =
* **+Sem/Plc_Route** =
* **+Sem/Plc_State** =
* **+Sem/Plc_Substnc** =
* **+Sem/Plc_Substnc_Wthr** =
* **+Sem/Plc_Time** =
* **+Sem/Plc_Time_Wthr** =
* **+Sem/Plc_Tool-catch** =
* **+Sem/Plc_Txt** =
* **+Sem/Plc_Wthr** =
* **+Sem/Prod-audio_Prod-vis** =
* **+Sem/Prod-audio_Substnc** =
* **+Sem/Prod-audio_Txt** =
* **+Sem/Prod-cogn_Txt** =
* **+Sem/Route_State** =
* **+Sem/Route_Txt** =
* **+Sem/Rule_Txt** =
* **+Sem/Semcon_State** =
* **+Sem/Semcon_Txt** =
* **+Sem/State-sick_Substnc** =
* **+Sem/State_Veh** =
* **+Sem/Substnc_Wthr** =
* **+Sem/Time_Wthr** =
* **+Sem/Tool-music** =

Not sure which section this goes in: (before POS)

* +Allegro from LEXICON GOADE-IU-

### Derivation tags

The following tags are used to describe the dynamic derivational system in
Lule Sámi as encoded in this lexical description. The tags are classified
according to a positional system, where each tag can be in one and only one
position, and can only combine with tags from an earlier / lower position.
This is done to avoid possible overgeneration in the derivational system.

* **+Der1 +Der2 +Der3 +Der4 +Der5**:    - positional tags, preceeds the actual der tag
#### Der#1 tags - tags in first position
* +Der/Caus VV - previously Der/ahtte
* +Der/PassD VV - dallat passive
* +Der/PassL VV - long passive láhpeduvvat
* +Der/PassS VV - Short passive láhpput
* +Der/adda VV
* +Der/ahtja VV - only odd syll verbs take this der
* +Der/ahttjá VV - only odd syll verbs take this der
* +Der/alla VV
* +Der/asste VV
* +Der/d VV
* +Der/dalla VV
* +Der/dasste VV
* +Der/l VV
* +Der/ladda VV
* +Der/lahtte VV
* +Der/lasste VV
* +Der/st VV
* +Der/stahtte VV
* +Der/stalla VV
* +Der/stasste VV
* +Der/tj VV
* +Der/u/a/åd VV
* +Der/r VN  - NomAg contracted verbs - guollit-guollár
* +Der/NomInstr VN  - even verbs:fierrot-fierun
* +Der/Dimin NN
* +Der/gusj Prop -I

* +Der/lasj NN
* +Der/k NN / NA
* +Der/Car NA - abessive. Only even/contr. Morén-Duolljá:caritive
* +Der/ferjak NA   Adjectival -k der (from ?)
* +Der/lasj NA - dont know, guess it Tronds, ojes, I see - is this ok?jes 2 Der:lasj Noun on 1472 Adj on 2040
* +Der/n NA. Denominal -n adjective (similar t -k adj)
* +Der/sasj NA
* +Der/segak NA Adj. -k der from?
* +Der/Comp AA
* +Der/Superl AA

#### Der#2 tags - tags in second position
* +Der/dahtte VV
* +Der/duhtte VV
* +Der/ahkes VA
* +Der/NomAct VN
#### Der#3 tags - tags in third position
* +Der/duvva VV
* +Der/InchL VV (previosuly Der/goahte)
* +Der/mus VN
* +Der/NomAg VN -diddje
* +Der/dahka VN
* +Der/NomAct VN   Realised in two different ways.
*       This realisation is Der3. Outcommented
*       to not define the tag twice, but kept
*       here for documentation purposes.
* +Der/lis VA
#### Der#4 tags - tags in fourth position
* +Der/ahtes NA ! Abessive. Even verbs>NomAct>ahtes and odd-syll nouns. Morén-Duolljá:Caritive
#### Der#5 tags - tags in fifth position
* +Der/AAdv NA AAdv, previously +Der/at
* +Der/akti NumAdv Adv
* +Der/vuota NA AN (tag harmonization: previosuly Der/vuohta)
#### Der#other tags - tags that can be in any position

There are no such tags in SMJ, but for symmetry and code coherence with SME
the class is still kept.

### Tags for originating language
The following tags are used to guide conversion to IPA: loan words
and foreign names are usually pronounced (approximately) as in the
originating (majority) language. Instead of trying to identify the
correct pronunciation based on phonotactics (orthotactics actually),
we tag all words that can't be correctly transcribed using the SME
transcriber with source language codes. Once tagged, it is possible
to split the lexical transducer in smaller ones according to langu-
age, and apply different IPA conversion to each of them.
The principle of tagging is that we only tag to the extent needed,
and following a priority:
1. any untagged word is pronounced with SME orthographic conventions
1. NNO and NOB have identical pronunciation, NNO is only used if
different in spelling from NOB
1. SWE has mostly the same pronunciation as NOB, and is only used
if different in spelling from NOB
1. Occasionally even SME (the default) may be tagged, to block other
languages from being specified, mainly during semi-automatic
language tagging sessions
All in all, we want to get as much correctly transcribed to IPA
with as little work as possible. On the other hand, if more words
are tagged than strictly needed, this should pose no problem as
long as the IPA conversion is correct - at least some words will
get the same pronunciation whether read as SME or NOB/NNO/SWE.
* +OLang/SME - North Sámi
* +OLang/SMS - Skolt Sámi
* +OLang/SMA - South Sámi
* +OLang/FIN - Finnish
* +OLang/SWE - Swedish
* +OLang/NOB - Norw. bokmål
* +OLang/NNO - Norw. nynorsk
* +OLang/ENG - English
* +OLang/HUN - Hungarian
* +OLang/RUS - Russian
* +OLang/UND - Undefined
* +OLang/PARA - parallelle navn, navnet skal ikke overføres til andre samisk språk

### Flag diacritics
Tags from SME, coming to smj by propernouns.

### Flag diacritics

We have manually optimised the structure of our lexicon using following
flag diacritics to restrict morhpological combinatorics - only allow compounds
with verbs if the verb is further derived into a noun again:

|               Flag diacritic | Explanation
|               :------------- |:-----------
|  @P.NeedNoun.ON@ | (Dis)allow compounds with verbs unless nominalised
|  @D.NeedNoun.ON@ | (Dis)allow compounds with verbs unless nominalised
|  @C.NeedNoun@ | (Dis)allow compounds with verbs unless nominalised

|               Flag diacritic | Explanation
|               :------------- |:-----------
|  @P.Pmatch.Loc@ | Used on multi-token analyses; tell hfst-tokenise/pmatch where in the form/analysis the token should be split. Used e.g. in `bijladagi` to split `bijla` from `dagi`, or after abbreviations with full stops before the full stop, to allow an alternate `+CLB` analysis of it in case of a sentence final abbreviation. __NB!__ This will give a faulty lemma for the abbreviation, as it will not include the full stop. This can lead to other issues, but presently we have no other solution if we want to keep the full stopp as a separate token. We could leave a full stop at the end of the abbreviation lemma as well (but not on the input side - we only have one full stop in the input). That must be tested, it could work, but then requires special attention when generating suggestions in e.g. grammar checkers - it should not generate two full stops. 
|  @P.Pmatch.Backtrack@ | Used on single-token analyses; tell hfst-tokenise/pmatch to backtrack by reanalysing the substrings before and after this point in the form (to find combinations of shorter analyses that would otherwise be missed)

|               Flag diacritic | Explanation
|               :------------- |:-----------
| @D.ErrOrth.ON@ | To be written
| @R.ErrOrth.ON@ | To be written
| @C.ErrOrth@ | To be written
| @P.ErrOrth.ON@ | To be written

For languages that allow compounding, the following flag diacritics are needed
to control position-based compounding restrictions for nominals. Their use is
handled automatically if combined with +CmpN/xxx tags. If not used, they will
do no harm.

|              Flag diacritic | Explanation
|              :------------- |:-----------
|  @P.CmpFrst.FALSE@ | Require that words tagged as such only appear first
|  @D.CmpPref.TRUE@ | Block such words from entering ENDLEX
|  @P.CmpPref.FALSE@ | Block these words from making further compounds
|  @D.CmpLast.TRUE@ | Block such words from entering R
|  @D.CmpNone.TRUE@ | Combines with the next tag to prohibit compounding
|  @U.CmpNone.FALSE@ | Combines with the prev tag to prohibit compounding
|  @U.CmpNone.TRUE@ | Combines with the two previous ones to block compounding
|  @P.CmpOnly.TRUE@ | Sets a flag to indicate that the word has passed R
|  @D.CmpOnly.FALSE@ | Disallow words coming directly from root.
|  @U.CmpHyph.FALSE@ | Flag to control hyphenated compounds like proper nouns
|  @U.CmpHyph.TRUE@ | Flag to control hyphenated compounds like proper nouns
|  @C.CmpHyph@ | Flag to control hyphenated compounds like proper nouns

Use the following flag diacritics to control downcasing of derived proper
nouns (e.g. Finnish Pariisi -> pariisilainen). See e.g. North Sámi for how to use
these flags. There exists a ready-made regex that will do the actual down-casing
given the proper use of these flags.

|           Flag diacritic | Explanation
|           :------------- |:-----------
|  @U.Cap.Obl@ | Disallow downcasing of names when not derived: Deatnu
|  @U.Cap.Opt@ | Allowing downcasing of derived names: deatnulasj.
|  @P.Px.add@ | Giving possibility for Px-suffixes (all except from Nom 3.p)
|  @R.Px.add@ | Requiring P.Px.add-flag for Px-suffixes (all except from Nom 3.p)
|  @P.Nom3Px.add@ | Giving possibility for Px-suffixes Nom 3.p
|  @R.Nom3Px.add@ | Requiring P.Nom3Px.add flag for Px-suffixes Nom 3.p

* **@R.SpellRlx.ON@** Flag used to tag spell-relax-analysed strings (and only those).
* **@D.SpellRlx.ON@** Flag used to tag spell-relax-analysed strings (and only those).
* **@C.SpellRlx@** Flag used to tag spell-relax-analysed strings (and only those).

* **@R.SpaceCmp.ON@** Flag to tag compounds written with a space
* **@D.SpaceCmp.ON@** Flag to tag compounds written with a space
* **@C.SpaceCmp@** Flag to tag compounds written with a space+

|              Flag diacritic | Explanation
|              :------------- |:-----------
|  @U.number.one@ | Flag used to give arabic numerals in smj different cases ;
|  @U.number.two@ | Flag used to give arabic numerals in smj different cases ;
|  @U.number.three@ | Flag used to give arabic numerals in smj different cases ;
|  @U.number.four@ | Flag used to give arabic numerals in smj different cases ;
|  @U.number.five@ | Flag used to give arabic numerals in smj different cases ;
|  @U.number.six@ | Flag used to give arabic numerals in smj different cases ;
|  @U.number.seven@ | Flag used to give arabic numerals in smj different cases ;
|  @U.number.eight@ | Flag used to give arabic numerals in smj different cases ;
|  @U.number.nine@ | Flag used to give arabic numerals in smj different cases ;
|  @U.number.zero@ | Flag used to give arabic numerals in smj different cases ;

| @P.number.one@ | Flag used to give arabic numerals in smj different cases ;
| @P.number.two@ | Flag used to give arabic numerals in smj different cases ;
| @P.number.three@ | Flag used to give arabic numerals in smj different cases ;
| @P.number.four@ | Flag used to give arabic numerals in smj different cases ;
| @P.number.five@ | Flag used to give arabic numerals in smj different cases ;
| @P.number.six@ | Flag used to give arabic numerals in smj different cases ;
| @P.number.seven@ | Flag used to give arabic numerals in smj different cases ;
| @P.number.eight@ | Flag used to give arabic numerals in smj different cases ;
| @P.number.nine@ | Flag used to give arabic numerals in smj different cases ;
| @P.number.ten@ | Flag used to give arabic numerals in smj different cases ;
| @P.number.one@ | Flag used to give arabic numerals in smj different cases ;
| @P.number.two@ | Flag used to give arabic numerals in smj different cases ;
| @P.number.three@ | Flag used to give arabic numerals in smj different cases ;
| @P.number.four@ | Flag used to give arabic numerals in smj different cases ;
| @P.number.five@ | Flag used to give arabic numerals in smj different cases ;
| @P.number.six@ | Flag used to give arabic numerals in smj different cases ;
| @P.number.seven@ | Flag used to give arabic numerals in smj different cases ;
| @P.number.eight@ | Flag used to give arabic numerals in smj different cases ;
| @P.number.nine@ | Flag used to give arabic numerals in smj different cases ;
| @P.number.ten@ | Flag used to give arabic numerals in smj different cases ;
| @P.number.one@ | Flag used to give arabic numerals in smj different cases ;
| @P.number.two@ | Flag used to give arabic numerals in smj different cases ;
| @P.number.three@ | Flag used to give arabic numerals in smj different cases ;
| @P.number.four@ | Flag used to give arabic numerals in smj different cases ;
| @P.number.five@ | Flag used to give arabic numerals in smj different cases ;
| @P.number.six@ | Flag used to give arabic numerals in smj different cases ;
| @P.number.seven@ | Flag used to give arabic numerals in smj different cases ;
| @P.number.eight@ | Flag used to give arabic numerals in smj different cases ;
| @P.number.nine@ | Flag used to give arabic numerals in smj different cases ;
| @P.number.ten@ | Flag used to give arabic numerals in smj different cases ;

## Lexicon `Root`

The beginning of everything. Every FST defined in LexC must start with the
reserved lexicon name `Root`.

* **LEXICON Acronym**

* **LEXICON ProperNoun**

## Lexicon ENDLEX
And this is the ENDLEX of everything:
```
@D.CmpOnly.FALSE@@D.CmpPref.TRUE@@D.NeedNoun.ON@ ENDLEX2 ;
```
The `@D.CmpOnly.FALSE@` flag diacritic is ued to disallow words tagged
with +CmpNP/Only to end here.
The `@D.NeedNoun.ON@` flag diacritic is used to block illegal compounds.

**ENDLEX2**

**ENDLEX3**

**ENDLEX4**

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/root.lexc](https://github.com/giellalt/lang-smj/blob/main/src/fst/morphology/root.lexc)</small>

---

## src-fst-morphology-stems-adjectives.lexc.md 



vájnno
vájnno
vájnno

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/stems/adjectives.lexc](https://github.com/giellalt/lang-smj/blob/main/src/fst/morphology/stems/adjectives.lexc)</small>

---

## src-fst-morphology-stems-adverbs.lexc.md 



sme mojonjálmmiid

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/stems/adverbs.lexc](https://github.com/giellalt/lang-smj/blob/main/src/fst/morphology/stems/adverbs.lexc)</small>

---

## src-fst-morphology-stems-nouns.lexc.md 



* **LEXICON Noun  ** dividing in NounNoPx, NounPx (with a P.Px.add flag)  and NounPxKin (with a P.Nom3Px.add flag)

LOAN
LOAN
LOAN
LOAN SWE altar

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/stems/nouns.lexc](https://github.com/giellalt/lang-smj/blob/main/src/fst/morphology/stems/nouns.lexc)</small>

---

## src-fst-morphology-stems-numerals.lexc.md 



XXXtuvsánat

XXXtuvsánat

* __LEXICON ARABIC-COLL__

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/stems/numerals.lexc](https://github.com/giellalt/lang-smj/blob/main/src/fst/morphology/stems/numerals.lexc)</small>

---

## src-fst-morphology-stems-pronouns.lexc.md 



Reciprocal pronouns as multiword expression

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/stems/pronouns.lexc](https://github.com/giellalt/lang-smj/blob/main/src/fst/morphology/stems/pronouns.lexc)</small>

---

## src-fst-morphology-stems-smj-abbreviations.lexc.md 


## File containing North Saami abbreviations 

### Lexica for adding tags and periods

Splitting in 4 + 1 groups, because of the preprocessor

* **LEXICON Abbreviation-smj **
1. The ITRAB ;	   lexicon (intransitive abbrs)
1. The TRNUMAB ;  lexicon (abbrs trans wrt. numberals)
1. The TRAB ;	   lexicon (transitive abbrs)
1. The NOAB ;	   lexicon (not really abbrs)
1. The NUMNOAB ;  lexicon (not behaving as abbr before num)

### The abbreviation lexicon itself

* **LEXICON ITRAB ** are intransitive abbreviations, A.S. etc.

* **LEXICON NOAB ** du, gen, jur

This class contains homonyms, which are both intransitive
abbreviations and normal words. The abbreviation usage
is less common and thus only the occurences in the middle of
the sentnece (when next word has small letters) can be 
considered as true cases.

* **LEXICON TRNUMAB ** contains abbreviations who are transitive in front of numerals 

For abbrs for which numerals are complements, but other
words not necessarily are. This group treats arabic numerals as
if it were transitive but letters as if it were intransitive.

* **LEXICON TRAB ** contains transitive abbreviations

This lexicon is for abbrs that always have a constituent following it.

* **LEXICON NUMNOAB ** su, dii

This class contains homonyms, which are both abbrs for 
which numerals are complements and normal words. The abbreviation usage
is less common and thus only the occurences in the middle of
the sentence can be considered as true cases.

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/stems/smj-abbreviations.lexc](https://github.com/giellalt/lang-smj/blob/main/src/fst/morphology/stems/smj-abbreviations.lexc)</small>

---

## src-fst-phonetics-acro2ipa.xfscript.md 


Phonological ACRO converter for Julev Sámi
==========================================

Converts ACROS to IPA. Intended for use with TTS.
`>` marks undlying morpheme boundary between lemma and inflectional suffix,
`:` is the same, but in the surface orthography. The idea is that the
pronunciation of the last letter sound (like `e:` when reading the letter
`P`) can be different when followed by a case ending compared to when not.
If that is not true, the system can be simplified.

Default, letter by letter pronunciation

* * *

<small>This (part of) documentation was generated from [src/fst/phonetics/acro2ipa.xfscript](https://github.com/giellalt/lang-smj/blob/main/src/fst/phonetics/acro2ipa.xfscript)</small>

---

## src-fst-phonetics-smj2sampa-from-old-infra.xfscript.md 



retroflex plosive, voiceless		t`  ʈ	    0288, 648 (` = ASCII 096)
retroflex plosive, voiced		d`	ɖ		0256, 598
labiodental nasal				F 	ɱ		0271, 625
retroflex nasal					n` 	ɳ		0273, 627
palatal nasal					J 	ɲ		0272, 626
velar nasal						N 	ŋ		014B, 331
uvular nasal						N\	ɴ		0274, 628

bilabial trill					B\ 	ʙ		0299, 665
uvular trill						R\ 	ʀ		0280, 640
alveolar tap						4	ɾ		027E, 638
retroflex flap					r` 	ɽ		027D, 637
bilabial fricative, voiceless	p\ 	ɸ		0278, 632
bilabial fricative, voiced		B 	β		03B2, 946
dental fricative, voiceless		T 	θ		03B8, 952
dental fricative, voiced			D 	ð		00F0, 240
postalveolar fricative, voiceless	S	ʃ		0283, 643
postalveolar fricative, voiced		Z 	ʒ		0292, 658
retroflex fricative, voiceless		s` 	ʂ		0282, 642
retroflex fricative, voiced			z` 	ʐ		0290, 656
palatal fricative, voiceless			C 	ç		00E7, 231
palatal fricative, voiced			j\ 	ʝ		029D, 669
velar fricative, voiced	        	G 	ɣ		0263, 611
uvular fricative, voiceless			X	χ		03C7, 967
uvular fricative, voiced				R 	ʁ		0281, 641
pharyngeal fricative, voiceless		X\ 	ħ		0127, 295
pharyngeal fricative, voiced			?\ 	ʕ		0295, 661
glottal fricative, voiced			h\	ɦ		0266, 614

alveolar lateral fricative, vl.		K 
alveolar lateral fricative, vd.		K\

labiodental approximant				P (or v\) 
alveolar approximant					r\ 
retroflex approximant				r\` 
velar approximant					M\

retroflex lateral approximant		l` 
palatal lateral approximant			L 
velar lateral approximant			L\
Clicks

bilabial								O\	(O = capital letter) 
dental								|\
(post)alveolar						!\ 
palatoalveolar						=\ 
alveolar lateral						|\|\
Ejectives, implosives

ejective								_>	e.g. ejective p		p_>
implosive							_<	e.g. implosive b	b_<
Vowels

close back unrounded					M
close central unrounded 				1 
close central rounded				} 
lax i								I 
lax y								Y 
lax u								U

close-mid front rounded				2 
close-mid central unrounded			@\ 
close-mid central rounded			8 
close-mid back unrounded				7

schwa								@

open-mid front unrounded				E 
open-mid front rounded				9
open-mid central unrounded			3 
open-mid central rounded				3\ 
open-mid back unrounded				V 
open-mid back rounded				O

ash (ae digraph)						{ 
open schwa (turned a)				6

open front rounded					& 
open back unrounded	        		A 
open back rounded					Q
Other symbols

voiceless labial-velar fricative		W 
voiced labial-palatal approx.		H 
voiceless epiglottal fricative		H\ 
voiced epiglottal fricative			<\ 
epiglottal plosive					>\

alveolo-palatal fricative, vl. 		s\ 
alveolo-palatal fricative, voiced	z\ 
alveolar lateral flap				l\ 
simultaneous S and x					x\ 
tie bar								_
Suprasegmentals

primary stress						" 
secondary stress						% 
long									: 
half-long							:\ 
extra-short							_X 
linking mark							-\
Tones and word accents

level extra high						_T 
level high							_H
level mid							_M 
level low							_L 
level extra low						_B
downstep								! 
upstep								^	(caret, circumflex)

contour, rising						 
contour, falling						_F 
contour, high rising					_H_T 
contour, low rising					_B_L 

contour, rising-falling				_R_F 
(NB Instead of being written as diacritics with _, all prosodic marks can alternatively be placed in a separate tier, set off by < >, as recommended for the next two symbols.)
global rise				<R> 
global fall				<F>
Diacritics

voiceless				_0	(0 = figure), e.g. n_0
voiced					_v 
aspirated				_h 
more rounded				_O	(O = letter) 
less rounded				_c 
advanced					_+
retracted				_-
centralized				_" 
syllabic					=	(or _=) e.g. n= (or n_=) 
non-syllabic				_^ 
rhoticity				`

breathy voiced			_t 
creaky voiced			_k
linguolabial				_N 
labialized				_w 
palatalized				'	(or _j) e.g. t' (or t_j) 
velarized				_G 
pharyngealized			_?\

dental					_d 
apical					_a 
laminal					_m
nasalized				~	(or _~) e.g. A~ (or A_~) 
nasal release			_n
lateral release			_l 
no audible release		_}

velarized or pharyngealized		_e 
velarized l, alternatively		5 
raised							_r 
lowered							_o 
advanced tongue root				_A 
retracted tongue root			_q

* * *

<small>This (part of) documentation was generated from [src/fst/phonetics/smj2sampa-from-old-infra.xfscript](https://github.com/giellalt/lang-smj/blob/main/src/fst/phonetics/smj2sampa-from-old-infra.xfscript)</small>

---

## src-fst-phonetics-txt2ipa.xfscript.md 


Phonological converter for Julev Sámi
=====================================

Converts to IPA. Mainly intended for use with TTS.

* * *

<small>This (part of) documentation was generated from [src/fst/phonetics/txt2ipa.xfscript](https://github.com/giellalt/lang-smj/blob/main/src/fst/phonetics/txt2ipa.xfscript)</small>

---

## src-fst-transcriptions-clock-from-old-infra.lexc.md 



At some points we will need the genitives, for
approximate numbers. Here they are.

avta
guovte
gålmå
nielje
vidá
gudá
gietja
gávtse
avtse
låge
lågenanavta
lågenanguovte

* * *

<small>This (part of) documentation was generated from [src/fst/transcriptions/clock-from-old-infra.lexc](https://github.com/giellalt/lang-smj/blob/main/src/fst/transcriptions/clock-from-old-infra.lexc)</small>

---

## src-fst-transcriptions-transcriptor-abbrevs2text.lexc.md 



We describe here how abbreviations in Lule Sami are read out, e.g.
for text-to-speech systems.

This class contains homonyms, which are both intransitive
abbreviations and normal words. The abbreviation usage
is less common and thus only the occurences in the middle of
the sentnece (when next word has small letters) can be
considered as true cases.

For abbrs for which numerals are complements, but other
words not necessarily are. This group treats arabic numerals as
if it were transitive but letters as if it were intransitive.

This lexicon is for abbrs that always have a constituent following it

This class contains homonyms, which are both abbrs for
which numerals are complements and normal words. The abbreviation usage
is less common and thus only the occurences in the middle of
the sentence can be considered as true cases.

* * *

<small>This (part of) documentation was generated from [src/fst/transcriptions/transcriptor-abbrevs2text.lexc](https://github.com/giellalt/lang-smj/blob/main/src/fst/transcriptions/transcriptor-abbrevs2text.lexc)</small>

---

## src-fst-transcriptions-transcriptor-acro2text.lexc.md 



We describe here how abbreviations in Lule Sami are read out, e.g.
for text-to-speech systems.

* * *

<small>This (part of) documentation was generated from [src/fst/transcriptions/transcriptor-acro2text.lexc](https://github.com/giellalt/lang-smj/blob/main/src/fst/transcriptions/transcriptor-acro2text.lexc)</small>

---

## src-fst-transcriptions-transcriptor-date-digit2text.lexc.md 



This is still a dummy file.

* * *

<small>This (part of) documentation was generated from [src/fst/transcriptions/transcriptor-date-digit2text.lexc](https://github.com/giellalt/lang-smj/blob/main/src/fst/transcriptions/transcriptor-date-digit2text.lexc)</small>

---

## src-fst-transcriptions-transcriptor-numbers-digit2text.lexc.md 



* * *

<small>This (part of) documentation was generated from [src/fst/transcriptions/transcriptor-numbers-digit2text.lexc](https://github.com/giellalt/lang-smj/blob/main/src/fst/transcriptions/transcriptor-numbers-digit2text.lexc)</small>

---

## src-fst-transcriptions-transcriptor-symbols2text.lexc.md 



This file contains mappings from abbreviations and some acronyms to full
forms for text-to-speech purposes. This is a supplement to the analyser;
the analyser must tag the strings as +ABBR or similar for the transcriptions
to work. The resulting full form must be lemmas known to the analyser,
for further processing.

We describe here how abbreviations in Lule Sami are read out,
for text-to-speech systems.

The file contains:

- miscellaneous symbols

Smileys

* Clause boundary symbols

* Single punctuation marks

* Paired punctuation marks

* * *

<small>This (part of) documentation was generated from [src/fst/transcriptions/transcriptor-symbols2text.lexc](https://github.com/giellalt/lang-smj/blob/main/src/fst/transcriptions/transcriptor-symbols2text.lexc)</small>

---

## src-fst-transcriptions-transcriptor-ttsdate-digit2text.lexc.md 



This is still a dummy file.

* * *

<small>This (part of) documentation was generated from [src/fst/transcriptions/transcriptor-ttsdate-digit2text.lexc](https://github.com/giellalt/lang-smj/blob/main/src/fst/transcriptions/transcriptor-ttsdate-digit2text.lexc)</small>

---

## tools-grammarcheckers-grammarchecker.cg3.md 


L U L E   S A A M I   G R A M M A R   C H E C K E R

## DELIMITERS

## TAGS AND SETS

### Tags

This section lists all the tags inherited from the fst, and used as tags
in the syntactic analysis. The next section, **Sets**, contains sets defined
on the basis of the tags listed here, those set names are not visible in the output.

#### Beginning and end of sentence
BOS
EOS

#### Parts of speech tags

N
A
Adv
V
Pron
CS
CC
CC-CS
Po
Pr
Pcle
Num
Interj
ABBR
ACR
CLB

LEFT
RIGHT
WEB

PPUNCT
PUNCT

COMMA

#### Tags for POS sub-categories

Pers
Dem
Interr
Indef
Recipr
Refl
Rel
Coll
NomAg
Prop
Allegro
Arab
Romertall

#### Tags for morphosyntactic properties

Nom
Abe
Acc
Gen
Ine
Ela
Ill
Loc
Com
Ess
Ess
Sg
Du
Pl
Cmp/SplitR
Cmp/SgNom Cmp/SgGen
Cmp/SgGen
PxSg1
PxSg2
PxSg3
PxDu1
PxDu2
PxDu3
PxPl1
PxPl2
PxPl3
Px

Comp, both for adverbs and adjectives
Superl, both for adverbs and adjectives
Attr
Ord
Qst
IV
TV
Prt
Prs
Ind
Pot
Cond
Imprt
ImprtII
Sg1
Sg2
Sg3
Du1
Du2
Du3
Pl1
Pl2
Pl3

Inf
ConNeg
Neg
PrfPrc
VGen
PrsPrc
Ger
Sup
Actio
VAbess

Err/Orth

#### Semantic tags

PROP-ATTR
PROP-SUR

TIME-N-SET

####  Syntactic tags

@+FAUXV
@+FMAINV
@-FAUXV
@-FMAINV
@-FSUBJ>
@-F<OBJ
@-FOBJ>
@-FSPRED<OBJ
@-F<ADVL
@-FADVL>
@-F<SPRED
@-F<OPRED
@-FSPRED>
@-FOPRED>
@>ADVL
@ADVL<
@<ADVL
@ADVL>
@ADVL
@HAB>
@<HAB
@>N
@Interj
@N<
@>A
@P<
@>P
@HNOUN
@INTERJ
@>Num
@Pron<
@>Pron
@Num<
@OBJ
@<OBJ
@OBJ>
@OPRED
@<OPRED
@OPRED>
@PCLE
@COMP-CS<
@SPRED
@<SPRED
@SPRED>
@SUBJ
@<SUBJ
@SUBJ>
SUBJ
SPRED
OPRED
@PPRED
@APP
@APP-N<
@APP-Pron<
@APP>Pron
@APP-Num<
@APP-ADVL<
@VOC
@CVP
@CNP
OBJ
<OBJ
OBJ>
<OBJ-OTHERS
OBJ>-OTHERS
SYN-V
@X

### Sets containing sets of lists and tags

This part of the file lists a large number of sets based partly upon the tags defined above, and
partly upon lexemes drawn from the lexicon.
See the sourcefile itself to inspect the sets, what follows here is an overview of the set types.

#### Sets for Single-word sets

INITIAL

#### Sets for word or not

WORD
NOT-COMMA

#### Case sets

ADLVCASE

CASE-AGREEMENT
CASE

NOT-NOM
NOT-GEN
NOT-ACC

#### Verb sets

NOT-V

#### Sets for finiteness and mood

REAL-NEG

NOT-PRFPRC

#### Sets for person

SG1-V
SG2-V
SG3-V
DU1-V
DU2-V
DU3-V
PL1-V
PL2-V
PL3-V

#### Pronoun sets

#### Adjectival sets and their complements

#### Adverbial sets and their complements

#### Relations

#### Sets of elements with common syntactic behaviour

#### NP sets defined according to their morphosyntactic features

#### The PRE-NP-HEAD family of sets

These sets model noun phrases (NPs). The idea is to first define whatever can
occur in front of the head of the NP, and thereafter negate that with the
expression **WORD - premodifiers**.

#### Border sets and their complements

Error tags

* * *

<small>This (part of) documentation was generated from [tools/grammarcheckers/grammarchecker.cg3](https://github.com/giellalt/lang-smj/blob/main/tools/grammarcheckers/grammarchecker.cg3)</small>

---

## tools-grammarcheckers-grc-disambiguator.cg3.md 



#### Semantic tags

* Rules for removing some Props which are identical to common nouns

* **IfonlyVerb** selects the FMAINV reading in the cohort

## Removing Err/Orth

* * *

<small>This (part of) documentation was generated from [tools/grammarcheckers/grc-disambiguator.cg3](https://github.com/giellalt/lang-smj/blob/main/tools/grammarcheckers/grc-disambiguator.cg3)</small>

---

## tools-tokenisers-mwe-dis.cg3.md 



The CLBfinal reading is only possible if directly followed by a full stop.
Needs a rewrite, as the CLB reading is still within the same cohort, not the
next, if present, since we haven't done the mwe-rewrite yet.

* * *

<small>This (part of) documentation was generated from [tools/tokenisers/mwe-dis.cg3](https://github.com/giellalt/lang-smj/blob/main/tools/tokenisers/mwe-dis.cg3)</small>

---

## tools-tokenisers-tokeniser-disamb-gt-desc.pmscript.md 

## Tokeniser for smj

Usage:
```
$ make
$ echo "ja, ja" | hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
$ echo "Juos gorreválggain lea (dárbbašlaš) deavdit gáibádusa boasttu olmmoš, man mielde lahtuid." | hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
$ echo "(gáfe) 'ja' ja 3. ja? ц jaja ukjend \"ukjend\"" | hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
$ echo "márffibiillagáffe" | hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
```

Pmatch documentation:
<https://github.com/hfst/hfst/wiki/HfstPmatch>

Characters which have analyses in the lexicon, but can appear without spaces
before/after, that is, with no context conditions, and adjacent to words:
* Punct contains ASCII punctuation marks
* The symbol after m-dash is soft-hyphen `U+00AD`
* The symbol following {•} is byte-order-mark / zero-width no-break space
`U+FEFF`.

Whitespace contains ASCII white space and
the List contains some unicode white space characters
* En Quad U+2000 to Zero-Width Joiner U+200d'
* Narrow No-Break Space U+202F
* Medium Mathematical Space U+205F
* Word joiner U+2060

Apart from what's in our morphology, there are
1. unknown word-like forms, and
2. unmatched strings
We want to give 1) a match, but let 2) be treated specially by
`hfst-tokenise -a`
Unknowns are made of:
* lower-case ASCII
* upper-case ASCII
* select extended latin symbols
ASCII digits
* select symbols
* Combining diacritics as individual symbols,
* various symbols from Private area (probably Microsoft),
so far:
* U+F0B7 for "x in box"

### Unknown handling
Unknowns are tagged ?? and treated specially with `hfst-tokenise`
hfst-tokenise --giella-cg will treat such empty analyses as unknowns, and
remove empty analyses from other readings. Empty readings are also
legal in CG, they get a default baseform equal to the wordform, but
no tag to check, so it's safer to let hfst-tokenise handle them.

Finally we mark as a token any sequence making up a:
* known word in context
* unknown (OOV) token in context
* sequence of word and punctuation
* URL in context

* * *

<small>This (part of) documentation was generated from [tools/tokenisers/tokeniser-disamb-gt-desc.pmscript](https://github.com/giellalt/lang-smj/blob/main/tools/tokenisers/tokeniser-disamb-gt-desc.pmscript)</small>

---

## tools-tokenisers-tokeniser-gramcheck-gt-desc.pmscript.md 

## Grammar checker tokenisation for smj

Requires a recent version of HFST (3.10.0 / git revision>=3aecdbc)
Then just:
```sh
make
echo "ja, ja" \
| hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
```

More usage examples:
```sh
echo "Juos gorreválggain lea (dárbbašlaš) deavdit gáibádusa \
boasttu olmmoš, man mielde lahtuid." \
| hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
echo "(gáfe) 'ja' ja 3. ja? ц jaja ukjend \"ukjend\"" \
| hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
echo "márffibiillagáffe" \
| hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
```

Pmatch documentation:
<https://github.com/hfst/hfst/wiki/HfstPmatch>

Characters which have analyses in the lexicon, but can appear without spaces
before/after, that is, with no context conditions, and adjacent to words:
* Punct contains ASCII punctuation marks
* The symbol after m-dash is soft-hyphen `U+00AD`
* The symbol following {•} is byte-order-mark / zero-width no-break space
`U+FEFF`.

Whitespace contains ASCII white space and
the List contains some unicode white space characters
* En Quad U+2000 to Zero-Width Joiner U+200d'
* Narrow No-Break Space U+202F
* Medium Mathematical Space U+205F
* Word joiner U+2060

Apart from what's in our morphology, there are
1) unknown word-like forms, and
2) unmatched strings
We want to give 1) a match, but let 2) be treated specially by hfst-tokenise -a
* select extended latin symbols
* select symbols
* various symbols from Private area (probably Microsoft),
so far:
* U+F0B7 for "x in box"

TODO: Could use something like this, but built-in's don't include šžđčŋ:

Simply give an empty reading when something is unknown:
hfst-tokenise --giella-cg will treat such empty analyses as unknowns, and
remove empty analyses from other readings. Empty readings are also
legal in CG, they get a default baseform equal to the wordform, but
no tag to check, so it's safer to let hfst-tokenise handle them.

Finally we mark as a token any sequence making up a:
* known word in context
* unknown (OOV) token in context
* sequence of word and punctuation
* URL in context

* * *

<small>This (part of) documentation was generated from [tools/tokenisers/tokeniser-gramcheck-gt-desc.pmscript](https://github.com/giellalt/lang-smj/blob/main/tools/tokenisers/tokeniser-gramcheck-gt-desc.pmscript)</small>

---

## tools-tokenisers-tokeniser-tts-cggt-desc.pmscript.md 

## TTS tokenisation for smj

Requires a recent version of HFST (3.10.0 / git revision>=3aecdbc)
Then just:
```sh
make
echo "ja, ja" \
| hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
```

More usage examples:
```sh
echo "Juos gorreválggain lea (dárbbašlaš) deavdit gáibádusa \
boasttu olmmoš, man mielde lahtuid." \
| hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
echo "(gáfe) 'ja' ja 3. ja? ц jaja ukjend \"ukjend\"" \
| hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
echo "márffibiillagáffe" \
| hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
```

Pmatch documentation:
<https://kitwiki.csc.fi/twiki/bin/view/KitWiki/HfstPmatch>

Characters which have analyses in the lexicon, but can appear without spaces
before/after, that is, with no context conditions, and adjacent to words:
* Punct contains ASCII punctuation marks
* The symbol after m-dash is soft-hyphen `U+00AD`
* The symbol following {•} is byte-order-mark / zero-width no-break space
`U+FEFF`.

Whitespace contains ASCII white space and
the List contains some unicode white space characters
* En Quad U+2000 to Zero-Width Joiner U+200d'
* Narrow No-Break Space U+202F
* Medium Mathematical Space U+205F
* Word joiner U+2060

Apart from what's in our morphology, there are
1) unknown word-like forms, and
2) unmatched strings
We want to give 1) a match, but let 2) be treated specially by hfst-tokenise -a
* select extended latin symbols
* select symbols
* various symbols from Private area (probably Microsoft),
so far:
* U+F0B7 for "x in box"

TODO: Could use something like this, but built-in's don't include šžđčŋ:

Simply give an empty reading when something is unknown:
hfst-tokenise --giella-cg will treat such empty analyses as unknowns, and
remove empty analyses from other readings. Empty readings are also
legal in CG, they get a default baseform equal to the wordform, but
no tag to check, so it's safer to let hfst-tokenise handle them.

Needs hfst-tokenise to output things differently depending on the tag they get

* * *

<small>This (part of) documentation was generated from [tools/tokenisers/tokeniser-tts-cggt-desc.pmscript](https://github.com/giellalt/lang-smj/blob/main/tools/tokenisers/tokeniser-tts-cggt-desc.pmscript)</small>
