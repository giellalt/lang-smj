

# Lule Sámi morphophonological rule set                    

This file documents the [phonology.twolc file](http://github.com/giellalt/lang-hun/blob/main/src/fst/phonology.twolc) 

The file contains the rule set for the non-segmental
Lule Sámi morphphonological rules

## Background

The file is modeled upon the corresponding file for North Sámi, but has been
revised and differs from it on several issues. The grammatical sources are
Spiik 1989: Lulesamisk grammatik and Nystø and Johnsen 2001: Sámásta 2.

The rule file has the sections **Alphabet, Sets, Definition** and **Rules**. The rules are ordered thematically, 
with 3 main sections: Consonant alternations (except CG), vowel alternations, and consonant gradation.

# Declarations and definitions

## The Alphabet section

### The real Lule Sámi Alphabet

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

### The Dummy symbols
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

### Morpheme boundaries:
* **** «  ****:  Derivational prefix
* **** »  ****:  Derivational suffix
* **** %< ****:  Inflectional prefx
* **** %> ****:  Inflectional suffix
* **** #  ****:  Word boundary for both lexicalised and dynamic compounds
* **** %^ ****:  (exceptional) soft hyphenation point
* **** %  ****:  a space
* **** ∑  ****:  mark before # to indicate dynamic comounds

## The Sets section

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
*  WeG     = X2 X3 X7 Y5 Q1 Q2 Q3 Q6 Z3 Z4                                                                 ;  
*  Dummy   = X2 X3 X4 X5 X6 X7 X8 Y1 Y2 Y3 Y4 Y5 Y6 Y7 Y8 Y9 Q1 Q2 Q3 Q4 Q5 Q6 Q7 Z1 Z2 Z3 Z4 %> » %^           ;  
*  Hyph    = %-                                                                                        ;  

## The Definitions section

In this section, the consonants are defined. This includes consonant clusters in the various grades and consonant alternations.

### G3 vs G2
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

* **G3**:  A definition of Grade 3 consonant sequences 

# The Rules section

## Overview

The rules section has the following chapters: Consonant alternations in certain pos, vowel lengthening, diphthong simplification, stem vowel alternations, consonant gradation rules

## Consonant alternations in certain pos

All rules deal with word-final position.

* ★*a* (is not standard language)
* ★*b* (is not standard language)

**Word Final Devoicing of Certain Single Consonants d9 etc. **  
* *iemed9#*
* *iemet#*

**Word Final Devoicing of Certain Single Consonants m9-v **  ! Spilt up because of err/orths ending on v, gierkav> we wnt err/orth gierkkam 
* *gierkkam9>Q1*
* *gier0kav>0*

**Word Final Devoicing of Certain Single Consonants m9-m **  ! Err/orth rule making v>m in nominatives

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

## Vowel lengthening

The second syllable vowel a is lengthened to á whenever the stem consonants are in grade 1 and the first syllable vowel is short. Short vowels cannot preceed and follow a single intervocalic consonant.

**Compulsatory lengthening in grade I even-syllables**  

* *gussaQ1#*
* *gu0sá0#*
* *skihpaQ1s#*
* *ski0bá0s#*

## Diphtong simplification

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

## Stem vowel alternations

This section is divided according to stem vowels: a-, e-, o-, å-stems.

### a-stem alternations

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

### e-stem alternations

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

**e:á in certain stem types 2**  

* *bárnneX4m*
* *bárnná0m*

* ★*bárnneX4m* (is not standard language)
* ★*bárnne0m* (is not standard language)

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

### i-stem alternations

For i-stems, there is i:á. The alternation is triggered by a combination of phonological content and dummy symbols.

**i:á in Verb Derivation**

### o-stem alternations

The duplicates of the three lines of the two following rules are
there to resolve the => conflict between the two rules.

**o:u in certain stem types 1**  

**o:u in certain stem types 2**  

**u:o in contracted nouns**  

**o-stem vowel deletion**  

### For å-stems there is å:e and å:i and vowel deletion.  Each alternation is triggered by a combination of phonological content and dummy symbols.

**å:e in Present Participle of even-syllable verbs**  

**å:i in Actor nouns of even-syllable verbs**  

**å-stem vowel deletion**  

### alternations valid for several stem types

**Stem vowel deletion in even-syllable verbs, imp 3sg, 3du, 2pl, 3pl**  

* *ielvveY1up*
* *0æälvv00up*

* *giessaY1up*
* *giess00up*

* *bårråY1up*
* *bårr00up*

## Consonant gradation rules

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

### Deletion rules

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

### Change rules

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

<small>This (part of) documentation was generated from [src/fst/phonology.twolc](https://github.com/giellalt/lang-smj/blob/main/src/fst/phonology.twolc)</small>

---

