Background
==========

The file itself is located in `gt/src/smj/twol.txt`. The file is modeled
upon the corresponding file for North Sámi, but has been revised and
differs from it on several issues. The grammatical sources are Spiik
1989: Lulesamisk grammatik and Nystø and Johnsen 2001: Sámásta 2.

File structure
==============

The rule file has the sections Alphabet, Sets and Rules. The rules are
ordered thematically, with 3 main sections: Consonant alternations
(except cg), vowel alternations, and consonant gradation.

The Alphabet section
--------------------

### The members of the Alphabet set

All Lule Saami letters are listed. The Lule Sámi ENG sound is
represented as **ñ**. Lule Sámi letter repertoire is not fully
standardised. In the source code we write (and you shall write!) **æ; ø;
ñ**, but the parser toleratesinput written with the the letters **ä; ö;
ń, ŋ** (cf. the 4 rules in the file gt/smj/src/spellrelax.regex).

The 3rd degree mark **'** is never realized, hence declared as **':0**.

h2, g2 etc. are consonants deleted in the Nom. m3, d3 etc. (?) are
consonants that undergo certain processes word-finally. This issue
should be looked into. Perhaps the two sets can be unified. The reason
why there are more distinctions than for sme, is that the cns deletion
process is more phonological in sme.

### The Dummy symbols

The Dummy symbols are taken from the sme file for convenience, only a
small part of them are actually used, they are defined in the Sets
section along the way, included there as soon as they are used. The set
of actually used Dummy symbols is thus the set declared in "Dummy".

X shall be used for nouns only, Y for verbs only and Q for processes
common to both. The symbols themselves are used in the following way:

    X1 = Deletes final h3 in short essive of uneven syllables
    X2 = WeG and neutralization of g2 etc. (hivsik)
    X3 = Weg and deletion of g2 etc. (bena)
    X4 = e:á and e:å in illatives
    X5 = e:á, e:å and o:u in odd-syllable nouns
    X6 = Deviant III-I consonant gradation (in contracted stems, guobbmu:guomoj
    X7 = WeG and e>á, o>á in front of diminutives
    X8 = Px declension
    X9 = Stem-vowel and central consonant shortening in first part(s) of compounds
    ...
    Y1 = Stem vowel deletion, imp 3sg, 3du, 2pl, 3pl of verbs
    Y2 = "Indicative Present Singular 3rd Final Vowel in verbs"
    Y3 = PrsPrc
    Y4 = e > u in front of dersuff, o > u and e > á in front of dersuffix -alla
    Y5 = e > a, i > á, o > u, e > å in verb derivation
    Y6 = "Consonant insertion as II-III strengthening gradation"
    Y7 = "Consonant insertion as II-III strengthening gradation"
    Y8 = "Stem vowel deletion in even-syllable verbs, imp 1du, 1pl"
    Y9 = "Stem vowel deletion in short passives of even-syllable verbs and Consonant insertion
          as II-III strengthening gradation"
    ...
    Q1 = The general weak grade trigger. Stem vowel change e:i and o:u in fron of j. Dipht. simpl. 
         Any environment #only# demanding WeG shall use Q1.
    Q2 = Vowel harmony: 2nd syll e realized as å whenever 1st syll is å.
    Q3 = WeG in contracted, also does not trigger Dipht simpl.
    Q4 = Stem vowel change e:i and o:u in fron of j. Dipht. simpl. Like Q1 but strong grade.
    Q5 = e:á stem vowel change for word diehtet. Weak grade.
    Q6 = e:á stem wovel change for word diehtet. Strong grade.
    Q7 = e:á stem vowel change for word diehtte. Extra strong grade
    Q8 = Stem vowel deletion, impII of verbs.

The Sets section
----------------

These are the sets:

1.  Vow = the vowels
2.  Cns = the consonants
3.  DelCns = the consonants that are deleted in nominative
4.  WeG = the dummy symbols that trigger weak grade
5.  StemCns = consonants that may occur in stem-final position
6.  Dummy = the set of dummy symbols, they are there to trigger certain
    morphophonological symbols

The rules
---------

### Overview

The rules section has the following chapters:

    ! Consonant alternations in certain pos
    ! Vowel lengthening
    ! Stem vowel alternations
    ! Diphthong simplification
    ! Consonant gradation rules

### Consonant alternations in certain pos

All rules deal with word-final position.

### Vowel lengthening

This is the gussa : gusá case, where the 2nd syll vowel *a* is
lengthened to *á* whenever the consonant is shortened to grade I.

### Stem vowel alternations

This section is divided according to stem vowels: a-, e-, o- stems.

There are no rules for a-stems.

For e-stems, there is e:i, e:á, e:å, e:u and e:a. Each alternation is
triggered by a combination of phonological content and dummy symbols.

For o-stems there is o:u.

### Diphthong simplification

The diphthong simplification handles oa:å and æ:e. Phonologically, these
are identical processes, but since the dip thong is written by two
letters in the former case and by one letter in the latter, the
alternations must be handled separately. The section also handles ie:æ,
these are in principle the same as oa:å, but the alternation does not
occur in so many contexts.

The oa:å simplification has a two-art rule, one for o deletion, and one
for a:å change. Otherwise, the rules are identical (this is the type
where xfst would have been better than twolc).

### Consonant gradation rules

The consonant gradation rules differ considerably from the corresponding
rules for North Sámi. Instead of generalizing over sets of consonants
(Cx:Cy &lt;=&gt; ...), each rule contains the alternation for one
consonant only, and to the right of the &lt;=&gt; arrow is listed all
the contexts where the relevant alternation appears. The disadvantage
with this method is that the same context must be written several times,
if e.g. both p, t and k are deleted in the same contexts, each of these
contexts must be written several times, one for each consonant. The
advantage is that there are no conflicts during compilation, compilation
takes 10 seconds rather than 3 minutes. The earlier North-Sámi-style
rule set was ordered according to CG pattern. This pattern is still
visible in the new rules, via the reference S1-3 etc. (Spiik's Series 1,
3-letter pattern, etc) behind each subrule.

This actually opens up for a migration to an xfst rule file instead of
the current twolc format, since what xfst really cannot do is generalize
over sets (Cx:Cy etc.). This is an issue for future revisions to decide.

The rules are divided in two subsections, deletion rules and change
(alternation) rules.

#### Deletion rules

The **b, d, g** deletion rules are similar, via the optional ( b ) etc.
in front of the "\_" symbol, both **bm:m** and **bbm:bm** alternations
are covered. The contexts differ to a certain extent. For **b** and
**d**, the III-I special gradation **bbm:m** is covered by two separate
rules, and a special Dummy (X6), not part of the ordinary WeG set.

Note that one of the rules for **t:0** refers to **\#:** as part of its
context. As soon as clitics are added to the word form, this rule will
thus not be triggered. Look into this when the clitics are added.

#### Change rules

The Cx:Cy format was kept for **hk:g, hp:b, ht:d**, since the left
context h:0 was unique, and no compilation conflict thus arose.

The **bb:pp, gg:kk, dd:tt** alternations were split into three rules,
since keeping them in one Cx:Cy rule created compilation conflicts.
Also, **d:t** contain a rule not found for the other two...

### Debugging of twol-rules

All rule conflicts have been successfully resolved. The rule file should
be kept that way. Look out for conflicts in the compilation process, and
resolve them as they appear!
