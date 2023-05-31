
# Lule Sámi morphological analyser

# Definitions for Multichar_Symbols

## Tags for POS

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

### Tags for sub-POS

* **+Prop** = Propernouns
* **+ACR** = Acronym

### Pronoun subtypes

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

## Error tags

All Err-tags must have a normative form as lemma except Err/Lex

* **+Err/Orth** = Substandard. An ungrammatical, non-normative form of normative lemma.
* **+Err/Lex** = No normative lemma
* **+Err/Cmp** = No normative compound, often wrong first part of cmp (in other case than nom or gen, or adv og pronoun)
* **+Err/Der** = Lemmas that break with regular derivation rules, both morphologically and semantically
* **+Err/Infl** = Lemmas that break with normative inflection rules, often used with morphological changes
* **+Err/MissingSpace** = indicates that there is a missing space, causing an orthographic error. Used for "goadedagi", when it should be "goade dagi"
* **+Err/Hyph** = when there is a hyphen where none should have been
* **+Err/SpaceCmp** = used for compounds written apart - only retained in the HFST Grammar Checker disambiguation analyser

## Usage restriction tags

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
* **+Use/TTS** – **only** retained in the HFST Text-To-Speech disambiguation analyser
* **+Use/-TTS** – **never** retained in the HFST Text-To-Speech disambiguation analyser

## Dialect and Area tags
* **+Area/SE** - Used in Sweden only
* **+Area/NO** - Used in Norway only
* **+Dial/N** Used in the northern areas.  Some might say that
these words are sme-words, but they are used by lulesamis in
the northern part of the dialect area. Words like "válmas"
* **+Dial/S** Used in the southern areas
* **+Dial/SH** Short forms

## Compounding tags

The tags are of the following form:
* **+CmpNP/xxx** - Normative (N), Position (P), ie. the tag describes what
position the tagged word can be in in a compound
* **+CmpN/xxx**  - Normative (N) **form** ie. the tag describes what
form the tagged word should use when making compounds
* **+Cmp/xxx**   - Descriptive compounding tags, ie. tags that*describes*
what form a word actually is using in a compound

### Normative/prescriptive compounding tags

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

## Descriptive compounding tags
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

# Inflectional Tags
## Tags for Case and Number Inflection

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

## Possessive tags

* **+PxSg1** possessive suffix singular first person
* **+PxSg2** possessive suffix singular second person
* **+PxSg3** possessive suffix singular third person
* **+PxDu1** possessive suffix dual first person
* **+PxDu2** possessive suffix dual second person
* **+PxDu3** possessive suffix dual third person
* **+PxPl1** possessive suffix plural first person
* **+PxPl2** possessive suffix plural second person
* **+PxPl3** possessive suffix plural plural person

## Adjective specific tags
* +Attr Attribute
* +Card
* +Ord  CHECK THIS! In closed-sme there are +Ord entries without circ. tag

## Verbal inflection
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

## Other tags
* +ABBR
* +Symbol = independent symbols in the text stream, like £, €, ©
* +ACR
* +CLB
* +PUNCT
* +LEFT
* +RIGHT
* **+CLBfinal**  Sentence final abbreviated expression ending in full stop, so that the full stop is ambiguous
* ^GUESSNOUNROOT
* +TV !
* +IV !  Transitivity tags
* **+G3** Grade 2-3 for homonymies with grade 1-2, +N+G3
* **+G7** Grade 3, no consonant gradation, +N+G7
* +Multi  Multiword phrase tag
* +Guess  for the name guesser
* +NomAg Actor Noun From Verb - Nomen Agentis

## Lexeme disambiguation = homonym tags
* **+Hom1**:  Homonymy
* **+Hom2**:  Homonymy

## Stem variant tags
* +v1 - variant 1
* +v2 - variant 2
* +v3 - variant 3
* +v4 - variant 4
* +v5 - variant 5

### Question and Focus particles:
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

### Other tags
* **+MWE**  multi word expressions, goes to abbr
* **+Sh**  Short form
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

## Semantic tags to help disambiguation & syntactic analysis

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

### Multiple Semantic tags:

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

## Derivation tags

The following tags are used to describe the dynamic derivational system in
Lule Sámi as encoded in this lexical description. The tags are classified
according to a positional system, where each tag can be in one and only one
position, and can only combine with tags from an earlier / lower position.
This is done to avoid possible overgeneration in the derivational system.

* **+Der1 +Der2 +Der3 +Der4 +Der5**:    - positional tags, preceeds the actual der tag
### Der#1 tags - tags in first position
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

### Der#2 tags - tags in second position
* +Der/dahtte VV
* +Der/duhtte VV
* +Der/ahkes VA
* +Der/NomAct VN
### Der#3 tags - tags in third position
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
### Der#4 tags - tags in fourth position
* +Der/ahtes NA ! Abessive. Even verbs>NomAct>ahtes and odd-syll nouns. Morén-Duolljá:Caritive
### Der#5 tags - tags in fifth position
* +Der/AAdv NA AAdv, previously +Der/at
* +Der/akti NumAdv Adv
* +Der/vuota NA AN (tag harmonization: previosuly Der/vuohta)
### Der#other tags - tags that can be in any position

There are no such tags in SMJ, but for symmetry and code coherence with SME
the class is still kept.

## Tags for originating language
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
* +OLang/SMA - South Sámi
* +OLang/FIN - Finnish
* +OLang/SWE - Swedish
* +OLang/NOB - Norw. bokmål
* +OLang/NNO - Norw. nynorsk
* +OLang/ENG - English
* +OLang/RUS - Russian
* +OLang/UND - Undefined

## Flag diacritics
Tags from SME, coming to smj by propernouns.

## Flag diacritics

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

# Lexicon `Root`

The beginning of everything. Every FST defined in LexC must start with the
reserved lexicon name `Root`.

* **LEXICON Acronym**

* **LEXICON ProperNoun**

# Lexicon ENDLEX
And this is the ENDLEX of everything:
```
@D.CmpOnly.FALSE@@D.CmpPref.TRUE@@D.NeedNoun.ON@ # ;
```
The `@D.CmpOnly.FALSE@` flag diacritic is ued to disallow words tagged
with +CmpNP/Only to end here.
The `@D.NeedNoun.ON@` flag diacritic is used to block illegal compounds.

* * *

<small>This (part of) documentation was generated from [src/fst/root.lexc](https://github.com/giellalt/lang-smj/blob/main/src/fst/root.lexc)</small>

---

