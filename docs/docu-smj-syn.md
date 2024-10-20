Planning the Lule Saami syntactic component
===========================================

The plan is to look thoroughly at the Lule Saami homonymy pattern,
figure out a good strategy for sequentiating the vislcg rules, make some
templates for NP handling, and then write a basic disambiguator.

Homonymy types, ordered after distance of context from the homonym form
-----------------------------------------------------------------------

### Same cohort

Here we want disambiguation not dependent upon the syntagmatic context,
only upon the paradigmatic one. Typical instances are lexical cases of
name lookalikes.

### Neighbour cohort

Here we want disambiguation dependent upon the local context, ideally
upon the neighbouring position only. NP-internal disambiguation should
go here.

-   **Attr vs. Nom:**  
    Adjectives and Propernouns are Attr only if N immediately to the
    right.
-   **ConNeg vs. Imprt, Ind Prs Sg2, VGen:**  
    ConNeg if Neg to the left
-   **Noun person and number:**  
    Dedpending upon determiners

### Remote cohort

Here we want disambiguation upon context anywhere in the sentence.
Disambiguating nouns on the basis of verbs and vice versa should go here

-   ***suv*, Pron Gen vs. Acc:**  
    Gen/Acc rules as for sme
-   ***mij*, Pers Pl1 vs. Rel vs. Interr:**  
    As for sme
-   ***li*, Pot vs. Ind Prs Pl3:**  
    Pot if other Pot, Pl3 if subj is Pl3
-   **Verb persons:**  
    Depending upon subjects.
-   **Object and adverbial cases:**  
    Depending upon verbs
-   **:**  

List of homonymies
------------------

Here we just list the types

    Case homonymy:
     N Sg Gen = N Pl Nom
     N Sg Nom = N Sg Gen = N Pl Nom (cases without CG)
     N Pl Gen = N Pl Com
     N Pl Gen = N Pl Com = N Sg Ill
     Pron Pers ... Gen = Pron Pers ... Acc
     N Sg Ela = N Sg Acc PxSg3 = N Sg Gen PxSg3
     N Sg Ine = N Ess (cases without CG)

    POS homonymy:
     Pron Interr = Pron Rel
     Adv Po

    Verb homonymy:
     V TV Ind Prs Pl3 = V TV Ind Prt Sg2
     Adv = V Neg Prs Sg3 (the verb 'ij')
     V TV Ind ConNeg = V TV Imprt ConNeg = V TV VGen = V TV Imprt Sg2 = V TV Ind Prs Sg2
      V TV Inf = V* TV Actor N Sg {Gen/Nom/Acc} PxSg2
     V Pot = V Prs Pl3

    Adjective homonymy:
     A Attr = A Sg Nom


        

Appendix: List of New Testament homonymy instances
==================================================

List of New Testament homonymy instances (this list is long and should
be removed when we have a clearer picture).

    7950: 
     Num Gen
     Num Acc
     Num Nom

    5361: 
     N Sg Gen
     N Pl Nom

    2775: 
     V Prs Sg3
     V Prs Sg2
     V Prs Pl3

    2546: 
     Pcle
     CC

    1810: 
     N Pl Gen
     N Pl Com

    1793: 
     N Prop Mal Sg Nom
     N Prop Mal Sg Attr

    1776: 
     CS
     CC

    1640: 
     Pron Pers Sg3 Gen
     Pron Pers Sg3 Acc

    1619: 
     V TV Ind Prt Pl3
     V TV Ind Prs Du1

    1598: 
     Pron Interr Sg Nom
     Pron Rel Sg Nom

    1551: 
     V TV Ind Prs Pl3
     V TV Ind Prt Sg2

    1297: 
     N Sg Ela
     N Sg Acc PxSg3
     N Sg Gen PxSg3

    1126: 
     Adv
     V Neg Prs Sg3

    1077: 
     N Sg Nom
     N Sg Gen
     N Pl Nom

    1057: 
     V TV Ind ConNeg
     V TV Imprt ConNeg
     V TV VGen
     V TV Imprt Sg2
     V TV Ind Prs Sg2

    1053: 
     N Pl Gen
     N Sg Ill
     N Pl Com

    1035: 
     V TV Inf
     V* TV Actor N Sg Gen PxSg2
     V* TV Actor N Sg Nom PxSg2
     V* TV Actor N Sg Acc PxSg2

    924: 
     Pron Pers Sg1 Acc
     Pron Pers Sg1 Gen

    845: 
     Adv
     Po

    796: 
     A Attr
     A Sg Nom

    687: 
     Pron Rel Pl Nom
     Pron Interr Pl Nom

    681: 
     V* TV Pass V* Actor N Sg Gen PxSg1
     V* TV Pass V* Actio N Sg Nom
     V* TV Pass V PrfPrc
     V* TV Pass V* Actor N Sg Nom PxSg1
     V* TV Pass V* Actor N Sg Acc PxSg1

    672: 
     N Prop Mal Pl Nom
     N Prop Mal Sg Gen

    645: 
     N Sg Ine
     N Ess

    611: 
     V Pot
     V Prs Pl3

    603: 
     V* TV Actor N Sg Nom PxSg1
     V TV PrfPrc
     V* TV Actor N Sg Gen PxSg1
     V* TV Actor N Sg Acc PxSg1
     V* TV Actio N Sg Nom

    602: 
     V TV Ind ConNeg
     V TV Imprt ConNeg
     V TV VGen
     V TV Imprt Sg2

    561: 
     V Ind ConNeg
     V Ind Prs Sg2
     V Imprt Sg2
     V VGen
     V Ind Prs Sg3

    464: 
     V TV Ind ConNeg
     V TV VGen
     V TV Imprt Sg2
     V TV Ind Prs Sg2

    462: 
     V* TV Actor N Sg Gen
     V TV Imprt Du2
     V* TV Actor N Pl Nom
     V* TV Actor N Sg Nom
     V* TV Actor A Attr

    460: 
     Pron Pers Sg2 Acc
     Pron Pers Sg2 Gen

    451: 
     Pron Rel Pl Acc
     Pron Interr Pl Acc

    446: 
     Pron Interr Sg Acc
     Pron Rel Sg Acc

    439: 
     V TV Inf
     V TV Imprt Pl2

    435: 
     V TV Ind ConNeg
     V TV Imprt ConNeg

    431: 
     N Pl Ine
     N Sg Com

    413: 
     V* TV Pass V VGen
     V* TV Pass V Ind Prs Sg3
     V* TV Pass V Ind ConNeg
     V* TV Pass V Imprt Sg2
     V* TV Pass V Ind Prs Sg2
     V TV Ind Prs Sg3

    387: 
     A Ess
     A Sg Ine

    373: 
     V TV GerII
     V* TV Actio N Sg Ine
     V* TV Actio N Ess

    366: 
     Po
     Adp
     Pr

    360: 
     V TV Inf
     V* TV Actor N Sg Gen PxSg2
     CS
     V* TV Actor N Sg Nom PxSg2
     V* TV Der/d V Ind Prs Sg3
     V* TV Actor N Sg Acc PxSg2
     V* TV Der/u/a/år V Ind Prs Sg3

    353: 
     N Sg Ela
     N Sg Nom PxSg3
     N Sg Acc PxSg3
     N Sg Gen PxSg3

    282: 
     V TV PrfPrc
     V* TV Actio N Sg Nom

    259: 
     A Sg Gen
     A Pl Nom

    255: 
     Pron Refl Sg Gen PxSg3
     Pron Refl Sg Acc PxSg3

    248: 
     A Attr
     N Sg Nom
     N Sg Gen
     N Pl Nom

    238: 
     Pron Interr Sg Gen
     Pron Rel Sg Gen

    233: 
     Pcle
     Adv

    230: 
     V* TV Actor N Sg Gen
     V* TV Actor N Pl Nom
     V* TV Actor N Sg Nom
     V* TV Actor A Attr

    210: 
     Pron Dem Sg Par
     Pron Dem Sg Nom

    205: 
     A Sg Nom PxSg3
     A Attr
     A Sg Gen PxSg3
     A Sg Ela
     A Sg Acc PxSg3

    202: 
     V TV GerII
     V* TV Actio N Ess
     V* TV Actio N Sg Gen
     V* TV Actio N Pl Nom

    197: 
     V PrfPrc
     V* Actio N Sg Nom

    182: 
     N Sg Acc PxSg2
     N Sg Nom PxSg2
     N Sg Gen PxSg2

    181: 
     N Sg Acc PxSg2
     N Sg Gen PxSg2

    174: 
     V Inf
     V* Der/u/a/åd V Ind Prs Sg3
     V* Der/d V Ind Prs Sg3

    172: 
     Pron Pers Sg3 Ine
     Pron Pers Sg3 Com

    170: 
     V* TV Pass V Ind ConNeg
     V TV ImprtII ConNeg Du2
     V* TV Pass V Imprt Sg2
     V TV ImprtII Sg2
     V* TV Pass V VGen
     V* TV Pass V Ind Prs Sg3
     V TV ImprtII ConNeg Sg2
     V TV ImprtII ConNeg Pl2
     V* TV Pass V Ind Prs Sg2

    167: 
     N Prop Plc Pl Nom
     N Prop Plc Sg Gen

    162: 
     N Prop Plc Pl Com
     N Prop Plc Sg Ill
     N Prop Plc Pl Gen

    162: 
     V* TV Der/d V Ind Prt Sg3
     V* TV Der/u/a/år V Ind Prt Sg3

    157: 
     N Prop Mal Sg Ill
     N Prop Mal Pl Gen
     N Prop Mal Pl Com

    154: 
     V TV PrfPrc
     V* TV Pass V* Actio N Sg Nom
     V* TV Pass V PrfPrc

    154: 
     V* TV Actor N Ess
     V* TV Actor N Sg Ine

    154: 
     Adv
     A Attr
     A Sg Nom

    142: 
     Po Ine
     N Sg Ine

    140: 
     Pron Indef Sg Gen
     Pron Indef Sg Nom

    135: 
     Num Ess
     Num Sg Ine
     N Ess

    129: 
     N Prop Plc Sg Ine
     N Prop Plc Ess

    128: 
     Po Ill
     N Sg Ill

    126: 
     N Sg Gen
     N Pl Nom
     N Ess

    124: 
     A Sg Ill
     A Pl Gen
     A Pl Com

    124: 
     Num
     N Sg Nom

    120: 
     Num Sg Nom
     N Sg Nom
     Num Sg Gen
     Num Pl Nom

    119: 
     V TV Ind ConNeg
     V TV Imprt Sg2
     V* TV Actor N Sg Gen
     V TV Imprt Du2
     V* TV Actor N Pl Nom
     V TV Imprt ConNeg
     V* TV Actor N Sg Nom
     V* TV Actor A Attr
     V TV VGen

    116: 
     V Ind Prt Pl3
     V Ind Prs Du1

    114: 
     V TV Ind Prt Pl1
     V TV Ind Prt Du1

    113: 
     Adv
     N Sg Nom
     N Sg Gen
     N Pl Nom

    113: 
     A Attr
     Pron Indef Attr

    111: 
     A Attr
     Pron Indef Sg Nom
     A Sg Nom

    110: 
     Pron Pers Sg1 Com
     Pron Pers Sg1 Ine

    109: 
     V* TV Actio N Sg Nom PxSg3
     V* TV Actio N Sg Gen PxSg3
     V* TV Actio N Sg Acc PxSg3
     V* TV Actio N Sg Ela

    105: 
     V* TV Pass V Inf
     V* TV Pass V* Actor N Sg Gen PxSg2
     V* TV Pass V* Actor N Sg Acc PxSg2
     V* TV Pass V* Actor N Sg Nom PxSg2

    103: 
     V* IV Actor N Sg Nom PxSg3
     V* IV Actor N Sg Ela
     V* IV Actor N Sg Gen PxSg3
     V* IV Actor N Sg Acc PxSg3

    103: 
     V IV Ind Prt Sg3
     V TV Ind Prt Sg3

    101: 
     A Comp Sg Nom
     A Comp Attr

    101: 
     N Prop Sur Sg Attr
     N Prop Sur Sg Nom

    101: 
     V TV Ind Prt Pl2
     V TV Ind Prt Du2

    100: 
     N Sg Gen PxSg1
     N Sg Acc PxSg1

    100: 
     V* TV Actio N Pl Com
     V* TV Actio N Sg Ill
     V* TV Actio N Pl Gen
     
    98: 
     V* TV Der/d V Ind Prt Pl3
     V* TV Der/u/a/år V Ind Prs Du1
     V* TV Der/u/a/år V Ind Prt Pl3
     V* TV Der/d V Ind Prs Du1

    95: 
     N Prop Mal Ess
     N Prop Mal Sg Ine

    95: 
     Adv
     A Attr

    95: 
     V IV Ind Prt Pl3
     V IV Ind Prs Du1

    91: 
     Pron Dem Pl Gen
     Pron Dem Pl Com

    88: 
     N Prop Plc Sg Nom
     N Prop Plc Pl Nom
     N Prop Plc Sg Gen

    86: 
     V* TV Pass V Ind Prt Sg2
     V* TV Pass V Ind Prs Pl3

    86: 
     V PrfPrc
     V* Pass V PrfPrc
     V TV PrfPrc
     V* TV Pass V* Actio N Sg Nom
     V* TV Pass V PrfPrc
     V* Pass V* Actio N Sg Nom

    86: 
     Adv
     Po
     Adp
     Pr

    86: 
     V* TV Actor N Sg Nom PxDu1
     V* TV Actor N Sg Gen PxDu1
     V* TV Actor N Sg Nom PxPl1
     V* TV Actor N Sg Gen PxPl1
     V* TV Actor N Sg Acc PxDu1
     V* TV Actio N Sg Gen
     V* TV Actio N Pl Nom
     V* TV Actor N Sg Acc PxPl1

    83: 
     V* TV Actor N Sg Nom PxSg1
     V* TV Actor N Sg Gen PxSg1
     V* TV Actor N Sg Acc PxSg1
     V* TV Actio N Sg Nom

    83: 
     Pron Indef Sg Gen
     Pron Indef Pl Nom

    82: 
     V Ind Prt Sg2
     V Ind Prs Pl3

    81: 
     V* TV Pass V Imprt Sg2
     V ImprtII ConNeg Pl2
     V Ind Prs Pl3
     V* TV Pass V VGen
     V* Pass V VGen
     V* Pass V Ind Prs Sg3
     V* Pass V Imprt Sg2
     V* TV Pass V Ind Prs Sg2
     V ImprtII Sg2
     V TV Ind Prs Sg3
     V ImprtII ConNeg Du2
     V* TV Pass V Ind ConNeg
     V* Pass V Ind Prs Sg2
     V ImprtII ConNeg Sg2
     V* Pass V Ind ConNeg
     V* TV Pass V Ind Prs Sg3
     V Ind Prs Sg3
     V Ind Prt Sg2

    79: 
     V IV Ind Prs Sg3
     V TV Ind Prs Sg3

    76: 
     V TV Ind Prt Sg3
     V Ind Prt Sg3

    75: 
     Pcle
     Pron Dem Sg Par
     Pron Dem Sg Nom

    75: 
     Pron Refl Sg Gen PxSg1
     Pron Refl Sg Acc PxSg1

    75: 
     A* Der/vuohta N Sg Gen
     A* Der/vuohta N Pl Nom

    75: 
     Pron Rel Ess
     Pron Interr Ess

    73: 
     Pron Refl Sg Gen PxPl2
     Pron Refl Sg Gen PxDu2
     Pron Refl Sg Acc PxDu2
     Pron Refl Sg Acc PxPl2

    73: 
     N Prop Fem Pl Nom
     N Prop Fem Sg Gen
     N Prop Fem Sg Attr
     N Prop Fem Sg Nom

    73: 
     A Sg Nom
     A Sg Gen
     A Pl Nom

    73: 
     A Attr
     A Sg Gen PxSg3
     A Sg Ela
     A Sg Acc PxSg3

    71: 
     V* TV Pass V Ind Prt Pl3
     V* TV Pass V Ind Prs Du1

    71: 
     Pron Refl Sg Gen PxPl3
     Pron Refl Sg Acc PxPl3

    69: 
     Pron Refl Du Nom
     Pron Refl Pl Nom

    67: 
     V TV PrfPrc
     V IV PrfPrc

    67: 
     Adv
     N Sg Nom

    65: 
     V TV Ind Prs Pl1
     V TV Imprt Pl1

    62: 
     N* Dim N Pl Nom
     N* Dim N Sg Gen

    61: 
     V* TV Actor N Pl Gen
     V* TV Actor N Pl Com

    61: 
     V* TV Actor N Sg Ill
     V* TV Pass V Ind Prt Sg3

    60: 
     A Superl Attr
     A Superl Sg Nom

    60: 
     Pron Rel Sg Ill
     Pron Interr Sg Ill

    59: 
     Pron Indef Sg Gen
     Pron Indef Sg Acc

    58: 
     Pron Refl Sg Acc PxSg2
     Pron Refl Sg Gen PxSg2

    56: 
     V* TV Der/u/a/år V* Actor N Pl Nom
     V* TV Der/u/a/år V* Actor N Sg Nom
     V* TV Der/u/a/år V* Actor N Sg Gen
     V* TV Der/u/a/år V* Actor A Attr
     V* TV Der/d V* Actor N Sg Nom
     V* TV Der/d V* Actor N Pl Nom
     V* TV Der/d V* Actor A Attr
     V* TV Der/d V* Actor N Sg Gen

    55: 
     N Prop Sur Sg Ine
     N Prop Sur Ess

    54: 
     V IV Ind Prt Pl3
     V IV Ind Prs Du1
     V TV Ind Prt Pl3
     V TV Ind Prs Du1

    54: 
     N Prop Fem Sg Attr
     N Prop Fem Sg Nom

    53: 
     V* TV Actor N Sg Acc PxSg3
     V* TV Actor N Sg Ela
     V* TV Actor N Sg Nom PxSg3
     V* TV Actor N Sg Gen PxSg3

    53: 
     V IV Inf
     V IV Imprt Pl2

    53: 
     N* Der/dibme A Pl Nom
     N* Der/dibme A Sg Gen

    52: 
     Pron Indef Pl
     Pron Indef Pl Nom

    52: 
     V* TV Der/u/a/år V PrfPrc
     V* TV Der/d V PrfPrc

    52: 
     N* Der/dibme A* Der/duvva V* Actor N Sg Gen PxSg1
     N* Der/dibme A* Der/duvva V* Actio N Sg Nom
     N* Der/dibme A* Der/duvva V PrfPrc
     N* Der/dibme A* Der/duvva V* Actor N Sg Nom PxSg1
     N* Der/dibme A* Der/duvva V* Actor N Sg Acc PxSg1

    51: 
     V* Pass V* Actor N Sg Acc PxSg1
     V* Pass V PrfPrc
     V* Pass V* Actor N Sg Nom PxSg1
     V* Pass V* Actor N Sg Gen PxSg1
     V* Pass V* Actio N Sg Nom

    50: 
     V Neg Prt Pl2
     V Neg Prt Du2

    50: 
     V TV Ind ConNeg
     V Ind ConNeg
     V Ind Prs Sg2
     V TV Imprt Sg2
     V Imprt ConNeg
     V Imprt Sg2
     V TV Imprt ConNeg
     V VGen
     V TV VGen
     V TV Ind Prs Sg2

    50: 
     V* TV Inch V Ind Prt Pl3
     V* TV Inch V Ind Prs Du1

    49: 
     V* TV Der/d V Inf
     V* TV Der/u/a/år V Inf
     V* TV Der/d V Imprt Pl2
     V* TV Der/u/a/år V Imprt Pl2

    49: 
     V* TV Der/u/a/år V Imprt Sg2
     V* TV Der/d V Ind ConNeg
     V* TV Der/d V Imprt Sg2
     V* TV Der/u/a/år V Ind Prs Sg2
     V* TV Der/d V Ind Prs Sg2
     V* TV Der/u/a/år V Ind ConNeg
     V* TV Der/d V VGen
     V* TV Der/u/a/år V VGen

    49: 
     V IV Ind Prt Sg2
     V IV Ind Prs Pl3

    48: 
     V TV ImprtII Pl1
     V* TV Pass V Ind Prs Pl1

    47: 
     V* TV Der/l V Imprt Sg2
     V* TV Der/l V VGen
     V* TV Der/l V Ind ConNeg
     V* TV Der/l V Ind Prs Sg2

    47: 
     V* Actor N Sg Nom PxSg2
     V TV Inf
     V* TV Actor N Sg Gen PxSg2
     V Inf
     V* TV Actor N Sg Nom PxSg2
     V* Actor N Sg Gen PxSg2
     V* TV Actor N Sg Acc PxSg2
     V* Actor N Sg Acc PxSg2

    47: 
     N Prop Plc Sg Nom
     N Prop Sur Sg Nom

    47: 
     V* TV Pass V* Actio N Sg Nom
     V* TV Pass V PrfPrc

    47: 
     N Sg Ela
     Po Ela
     N Sg Acc PxSg3
     N Sg Gen PxSg3

    45: 
     V Cond Du2
     V Cond Pl2

    44: 
     V* TV Der/l V Ind Prt Pl3
     V* TV Der/l V Ind Prs Du1

    44: 
     V TV Inf
     V IV Inf
     V IV Imprt Pl2
     V TV Imprt Pl2

    44: 
     V* TV Actio N Sg Gen PxSg3
     V* TV Actio N Sg Acc PxSg3
     V* TV Actio N Sg Ela

    44: 
     V* TV Der/l V Inf
     V* TV Der/l V Imprt Pl2

    44: 
     N Prop Sur Pl Nom
     N Prop Sur Sg Gen

    43: 
     N Pl Ine PxSg3
     N Sg Com PxSg3

    43: 
     V* TV Der/d V Inf
     V* TV Der/d V Imprt Pl2

    43: 
     V TV ImprtII ConNeg Du2
     V TV ImprtII Sg2
     V TV ImprtII ConNeg Sg2
     V TV ImprtII ConNeg Pl2

    43: 
     N* Der/lasj A Sg Nom
     N* Der/lasj A Attr

    42: 
     A Attr
     N Sg Nom
     A Sg Nom

    42: 
     Pron Indef Sg Ine
     Pron Indef Ess

    41: 
     V TV Ind ConNeg
     V Ind ConNeg
     V TV Imprt ConNeg

    40: 
     A* Der/vuohta N Sg Acc PxSg3
     A* Der/vuohta N Sg Gen PxSg3
     A* Der/vuohta N Sg Ela

    40: 
     N Prop Mal Sg Com
     N Prop Mal Pl Ine

    40: 
     V TV Inf
     V Inf
     V* Der/u/a/åd V Ind Prs Sg3
     V* Der/d V Ind Prs Sg3

    39: 
     N Sg Gen PxSg1
     N Sg Acc PxSg1
     N Sg Nom PxSg1

    39: 
     A Sg Nom PxSg3
     A Sg Gen PxSg3
     A Sg Ela
     A Sg Acc PxSg3

    38: 
     N* Der/dibme A* Der/duvva V Ind Prs Du1
     N* Der/dibme A* Der/duvva V Ind Prt Pl3

    38: 
     V* TV Actio N Sg Gen
     V* TV Actio N Pl Nom

    37: 
     N Sg Gen PxDu2
     N Sg Acc PxPl2
     N Sg Gen PxPl2
     N Sg Acc PxDu2

    37: 
     V IV Imprt ConNeg
     V IV Ind Prs Sg2
     V IV VGen
     V IV Ind ConNeg
     V IV Imprt Sg2

    37: 
     V* TV Der/d V Ind Prs Sg3
     V* TV Der/u/a/år V Ind Prs Sg3

    37: 
     V* TV Der/us N Sg Nom
     V* TV Der/us N* Dim N Sg Nom
     V TV ImprtII Sg3

    36: 
     Pron Pers Sg2 Ine
     Pron Pers Sg2 Com

    36: 
     A Sg Acc PxSg2
     A Sg Nom PxSg2
     A Sg Gen PxSg2
     A* Adv

    36: 
     V Cond ConNeg
     V Cond Sg2

    35: 
     A* Der/vuohta N Sg Com
     A* Der/vuohta N Pl Ine

    35: 
     V Cond Pl1
     V Cond Du1

    35: 
     V Ind Prt Pl3
     V ImprtII Du1
     V Ind Prs Du1

    35: 
     V Ind Prs Pl2
     V TV Ind Prs Pl2

    35: 
     V* TV Pass V VGen
     V* TV Pass V Ind ConNeg
     V* TV Pass V Imprt Sg2
     V* TV Pass V Imprt ConNeg
     V* TV Pass V Ind Prs Sg2

    34: 
     V* TV Der/u/a/år V Ind Prs Du1
     V* TV Der/u/a/år V Ind Prt Pl3

    33: 
     V IV Ind Prs Sg2
     V IV VGen
     V IV Ind ConNeg
     V IV Imprt Sg2

    33: 
     N* Dim N Pl Com
     N* Dim N Pl Gen
     N* Dim N Sg Ill

    33: 
     Pron Pers Pl2 Com
     Pron Pers Pl2 Ine

    33: 
     V* TV Der/alla V Ind Prs Du1
     V* TV Der/alla V Ind Prt Pl3

    32: 
     N Pl Gen
     A Pl Gen
     A Pl Com
     N Pl Com

    31: 
     V Prt Pl1
     V Prt Du1

    31: 
     N Pl Acc PxDu2
     N Pl Acc PxPl2

    30: 
     V* TV Actio N Pl Ine
     V* TV Actio N Sg Com

    30: 
     Adv
     Pron Dem

    30: 
     Pron Interr Pl Ine
     Pron Rel Pl Ine
     Pron Interr Sg Com
     Pron Rel Sg Com

    29: 
     N Sg Nom PxDu2
     N Sg Nom PxPl2

    29: 
     N Prop Mal Pl Nom
     N Prop Mal Sg Gen
     N Prop Mal Sg Nom
     N Prop Mal Sg Attr

    28: 
     Num Gen
     Num Acc
     N Nom
     Num Nom
     N Gen
     N Acc

    28: 
     V TV Ind ConNeg
     V Ind ConNeg
     V Ind Prs Sg2
     V TV Imprt ConNeg
     V TV VGen
     V TV Imprt Sg2
     V TV Ind Prs Sg2

    28: 
     V TV Ind Prs Sg3
     V Ind Prs Sg3

    27: 
     V TV Ind ConNeg
     V IV VGen
     V TV Imprt Sg2
     V IV Imprt Sg2
     V IV Ind Prs Sg2
     V TV VGen
     V IV Ind ConNeg
     V TV Ind Prs Sg2

    27: 
     V* IV Actio N Pl Nom
     V IV GerII
     V* IV Actio N Sg Gen
     V* IV Actio N Ess

    26: 
     V* Pass V* Actor N Sg Nom PxSg2
     V* Pass V* Actor N Sg Gen PxSg2
     V* Pass V* Actor N Sg Acc PxSg2
     V* Pass V Inf

    26: 
     Pron Pers Pl3 Com
     Pron Pers Pl3 Ine

    26: 
     V* TV Der/u/a/år V Sup
     V* TV Der/d V Sup

    26: 
     Pron Rel Sg Ela
     Pron Interr Sg Ela

    26: 
     V* IV Actor N Sg Gen PxSg2
     V IV Inf
     V* IV Actor N Sg Nom PxSg2
     V* IV Actor N Sg Acc PxSg2

    25: 
     V* TV Actor N Pl Gen
     V* TV Actor N Pl Com
     V TV Ind Prt Sg3

    25: 
     N Sg Gen PxDu2
     N Sg Acc PxPl2
     N Abess
     N Sg Gen PxPl2
     N Sg Acc PxDu2

    25: 
     A Pl Gen
     A Pl Com

    24: 
     V* TV Der/us N Pl Nom
     V* TV Der/us N Sg Gen
     V TV ImprtII Pl3

    23: 
     N Sg Gen PxPl3
     N Sg Acc PxPl3

    23: 
     V Imprt Sg3
     V ImprtII Sg3

    23: 
     Pron Indef Sg Gen
     A Sg Gen
     A Pl Nom

    22: 
     V* TV Der/d V Ind Prs Sg2
     V* TV Der/d V Ind ConNeg
     V* TV Der/d V Imprt Sg2
     V* TV Der/d V VGen

    22: 
     V* TV Der/alla V Ind ConNeg
     V* TV Der/alla V Imprt ConNeg
     V* TV Der/alla V Imprt Sg2
     V* TV Der/alla V Ind Prs Sg2
     V* TV Der/alla V VGen

    22: 
     V Prt Pl2
     V Prt Du2

    22: 
     N Sg Gen
     N Pl Nom
     A Sg Gen
     A Pl Nom

    22: 
     V* TV Pass V Ind ConNeg
     V TV ImprtII ConNeg Du2
     V TV ImprtII ConNeg Sg2
     V TV ImprtII ConNeg Pl2

    22: 
     A Attr
     A Sg Nom
     A Sg Gen
     A Pl Nom

    21: 
     A Comp Ess
     A Comp Sg Ine

    21: 
     V* Der/u/a/åd V Inf
     V* Der/d V Imprt Pl2
     V* Der/u/a/åd V Imprt Pl2
     V* Der/d V Inf

    21: 
     V TV ImprtII Pl2
     V* TV Pass V Inf

    21: 
     V* IV Pass V* Actor N Sg Gen PxSg2
     V* IV Pass V* Actor N Sg Nom PxSg2
     V* IV Pass V* Actor N Sg Acc PxSg2
     V* IV Pass V Inf

    21: 
     V* TV Der/d V* Actor N Sg Nom
     V* TV Der/d V* Actor N Pl Nom
     V* TV Der/d V* Actor A Attr
     V* TV Der/d V* Actor N Sg Gen

    21: 
     V* TV Der/d V GerII
     V* TV Der/d V* Actio N Pl Nom
     V* TV Der/d V* Actio N Ess
     V* TV Der/u/a/år V* Actio N Sg Gen
     V* TV Der/u/a/år V* Actio N Pl Nom
     V* TV Der/d V* Actio N Sg Gen
     V* TV Der/u/a/år V GerII
     V* TV Der/u/a/år V* Actio N Ess

    21: 
     V TV Ind Prs Sg1
     V Ind Prs Sg1

    21: 
     N* Dim N Sg Ine
     N* Dim N Ess

    20: 
     V* IV Actio N Sg Nom
     V* IV Actor N Sg Acc PxSg1
     V* IV Actor N Sg Nom PxSg1
     V IV PrfPrc
     V* IV Actor N Sg Gen PxSg1

    20: 
     A Ess
     N Ess

    20: 
     Po
     N Sg Nom

    20: 
     Pron Interr Pl Com
     Pron Interr Pl Gen
     Pron Rel Pl Gen
     Pron Rel Pl Com

    19: 
     V* TV Actor N Sg Gen PxPl3
     V* TV Actor N Sg Acc PxPl3
     V* TV Actor N Sg Nom PxPl3

    19: 
     V TV Inf
     V Inf

    19: 
     V* IV Pass V* Actio N Sg Nom
     V* IV Pass V* Actor N Sg Nom PxSg1
     V* IV Pass V* Actor N Sg Acc PxSg1
     V* IV Pass V* Actor N Sg Gen PxSg1
     V* IV Pass V PrfPrc

    19: 
     V TV Inf
     V* TV Actor N Sg Gen PxSg2
     V Inf
     V* TV Actor N Sg Nom PxSg2
     V* TV Actor N Sg Acc PxSg2

    18: 
     Pron Indef Pl Gen
     Pron Indef Pl Com

    18: 
     V* TV Actio N* Der/ahtes A Sg Nom
     V* TV Actio N* Der/ahtes A Attr

    18: 
     V Ind ConNeg
     V Ind Prs Sg2
     V Imprt Sg2
     V TV Ind Prs Sg3
     V VGen
     V Ind Prs Sg3

    18: 
     V TV GerII
     V IV GerII
     V* TV Actio N Sg Gen
     V* IV Actio N Pl Nom
     V* IV Actio N Sg Gen
     V* TV Actio N Ess
     V* IV Actio N Ess
     V* TV Actio N Pl Nom

    18: 
     V* TV Der/alla V Ind Prt Sg2
     V* TV Der/alla V Ind Prs Pl3

    18: 
     A Sg Acc PxSg2
     A Sg Gen PxSg2
     A* Adv

    18: 
     V* Der/u/a/åd V PrfPrc
     V* Der/d V PrfPrc

    18: 
     V* Der/d V Sup
     V* Der/u/a/åd V Sup

    18: 
     N Sg Acc PxDu1
     N Sg Gen PxPl1
     N Sg Acc PxPl1
     N Sg Gen PxDu1

    17: 
     V* Actor N Pl Nom
     V* Actor N Sg Gen
     V* Actor A Attr
     V* Actor N Sg Nom

    17: 
     V TV Ind Prs Pl3
     V TV Ind Prt Sg2
     V IV Ind Prt Sg2
     V IV Ind Prs Pl3

    17: 
     V* Der/u/a/åd V Ind Prt Pl3
     V* Der/u/a/åd V Ind Prs Du1
     V* Der/d V Ind Prt Pl3
     V* Der/d V Ind Prs Du1

    17: 
     A Sg Acc
     Pron Indef Sg Acc

    17: 
     N Sg Ela
     A Attr
     A Sg Gen PxSg3
     N Sg Acc PxSg3
     N Sg Gen PxSg3
     A Sg Ela
     A Sg Acc PxSg3

    17: 
     V Neg Prt Pl1
     V Neg Prt Du1

    16: 
     V* IV Actor A Attr
     V IV Imprt Du2
     V* IV Actor N Sg Gen
     V* IV Actor N Sg Nom
     V* IV Actor N Pl Nom

    16: 
     V TV Pot ConNeg
     V TV Pot Sg2

    16: 
     V* TV Der/ahtte V* Actor N Pl Nom
     V* TV Der/ahtte V Imprt Du2
     V* TV Der/ahtte V* Actor N Sg Gen
     V* TV Der/ahtte V* Actor A Attr
     V* TV Der/ahtte V* Actor N Sg Nom

    16: 
     A Pl Acc
     N Pl Acc

    16: 
     V* TV Pass V Ind ConNeg
     V* TV Pass V Imprt ConNeg

    16: 
     V* TV Der/d V Ind Prt Sg2
     V* TV Der/d V Ind Prs Pl3

    16: 
     Pron Refl Sg Acc PxDu1
     Pron Refl Sg Gen PxDu1
     Pron Refl Sg Gen PxPl1
     Pron Refl Sg Acc PxPl1

    16: 
     V* TV Der/alla V* Actor N Sg Nom PxSg2
     V* TV Der/alla V* Actor N Sg Acc PxSg2
     V* TV Der/alla V* Actor N Sg Gen PxSg2
     V* TV Der/alla V Inf

    15: 
     N Prop Sur Sg Ill
     N Prop Sur Pl Com
     N Prop Sur Pl Gen

    15: 
     V* TV Actor N Sg Acc PxSg3
     V* TV Actor N Sg Ela
     V* TV Der/st V Ind Prs Sg3
     V* TV Actor N Sg Nom PxSg3
     V* TV Actor N Sg Gen PxSg3

    15: 
     N Sg Nom
     A Sg Nom
     A Sg Gen
     A Pl Nom

    15: 
     V* TV Pass V Ind Prt Pl2
     V* TV Pass V Ind Prt Du2

    15: 
     Adv
     A Attr
     N Sg Nom
     N Sg Gen
     N Pl Nom
     A Sg Nom

    15: 
     V* TV Der/st V Ind Prs Sg2
     V* TV Der/st V Ind ConNeg
     V* TV Der/st V VGen
     V* TV Der/st V Imprt Sg2

    15: 
     V IV Ind Prt Pl1
     V IV Ind Prt Du1

    14: 
     Pron Interr Pl Ill
     Pron Rel Pl Ill

    14: 
     V* TV Der/u/a/år V Ind Prs Sg1
     V* TV Der/d V Ind Prs Sg1

    14: 
     V* TV Der/u/a/år V Imprt Sg2
     V* TV Der/u/a/år V Ind ConNeg
     V* TV Der/u/a/år V VGen
     V* TV Der/u/a/år V Ind Prs Sg2

    14: 
     V* IV Actio N Sg Ine
     V IV GerII
     V* IV Actio N Ess

    13: 
     V* TV Der/mus N Pl Nom
     V* TV Der/mus N Sg Gen

    13: 
     V* TV Der/dalla V* Actio N Sg Nom
     V* TV Pass V* Actor N Sg Gen PxSg1
     V* TV Pass V* Actio N Sg Nom
     V* TV Pass V PrfPrc
     V* TV Der/dalla V* Actor N Sg Gen PxSg1
     V* TV Der/dalla V* Actor N Sg Acc PxSg1
     V* TV Der/dalla V PrfPrc
     V* TV Der/dalla V* Actor N Sg Nom PxSg1
     V* TV Pass V* Actor N Sg Nom PxSg1
     V* TV Pass V* Actor N Sg Acc PxSg1

    13: 
     V* TV Der/d V* Actor N Ess
     V* TV Der/u/a/år V* Actor N Ess
     V* TV Der/d V* Actor N Sg Ine
     V* TV Der/u/a/år V* Actor N Sg Ine

    13: 
     V* TV Der/u/a/år V* Der/us N Sg Gen
     V* TV Der/u/a/år V ImprtII Pl3
     V* TV Der/d V ImprtII Pl3
     V* TV Der/d V* Der/us N Sg Gen
     V* TV Der/d V* Der/us N Pl Nom
     V* TV Der/u/a/år V* Der/us N Pl Nom

    13: 
     N Sg Ela
     A Sg Gen PxSg3
     N Sg Acc PxSg3
     N Sg Gen PxSg3
     A Sg Ela
     A Sg Acc PxSg3

    13: 
     V* Actio N Sg Gen
     V* Actio N Pl Nom

    13: 
     A Pl Ela
     N Pl Ela

    13: 
     Pron Pers Pl3 Com
     Pron Pers Pl3 Gen

    13: 
     V TV Ind Prs Pl1
     V Imprt Pl1
     V Ind Prs Pl1

    13: 
     Pron Pers Pl2 Com
     Pron Pers Pl2 Gen

    13: 
     V ImprtII ConNeg Sg2
     V ImprtII ConNeg Pl2
     V Ind Prs Pl3
     V ImprtII Sg2
     V TV Ind Prs Sg3
     V ImprtII ConNeg Du2
     V Ind Prs Sg3
     V Ind Prt Sg2

    13: 
     V* TV Inch V Ind Prt Sg2
     V* TV Inch V Ind Prs Pl3

    12: 
     Pron Pers Pl1 Ine
     Pron Pers Pl1 Com

    12: 
     Adv
     A Attr
     N Sg Nom

    12: 
     V* TV Der/st V Inf
     V* TV Der/st V Imprt Pl2

    12: 
     N Pl Ine PxDu2
     N Pl Ine PxPl2

    12: 
     V* TV Der/d V Ind Prt Pl3
     V* TV Der/d V Ind Prs Du1

    12: 
     V* TV Der/u/a/år V Ind Prt Pl1
     V* TV Der/d V Ind Prt Pl1
     V* TV Der/u/a/år V Ind Prt Du1
     V* TV Der/d V Ind Prt Du1

    12: 
     V IV ImprtII ConNeg Du2
     V IV ImprtII ConNeg Sg2
     V IV ImprtII ConNeg Pl2
     V* IV Pass V Imprt Sg2
     V* IV Pass V Ind ConNeg
     V* IV Pass V Ind Prs Sg2
     V IV ImprtII Sg2
     V* IV Pass V VGen
     V* IV Pass V Ind Prs Sg3

    12: 
     V* TV Actor N Sg Nom PxSg1
     V* TV Actor N Sg Gen PxSg1
     V* TV Actor N Sg Acc PxSg1

    12: 
     V IV Ind Prs Pl2
     V TV Ind Prs Pl2

    12: 
     V* Actio N Ess
     V GerII
     V* Actio N Sg Ine

    12: 
     V* TV Der/u/a/år V Ger
     V* TV Der/d V Ger

    12: 
     V* TV Der/ahtte V Imprt Sg2
     V* TV Der/ahtte V VGen
     V* TV Der/ahtte V Imprt ConNeg
     V* TV Der/ahtte V Ind ConNeg

    12: 
     N* Der/lasj A Sg Gen
     N* Der/lasj A Pl Nom

    11: 
     V* TV Der/alla V* Actor N Sg Gen PxSg1
     V* TV Der/alla V* Actor N Sg Nom PxSg1
     V* TV Der/alla V* Actor N Sg Acc PxSg1
     V* TV Der/alla V* Actio N Sg Nom
     V* TV Der/alla V PrfPrc

    11: 
     N Prop Sur Sg Attr
     N Prop Mal Sg Nom
     N Prop Sur Sg Nom
     N Prop Mal Sg Attr

    11: 
     V* TV Der/d V Ind Prt Du3
     V* TV Der/u/a/år V Ind Prt Du3

    11: 
     V* TV Der/l V Ind Prt Sg2
     V* TV Der/l V Ind Prs Pl3

    11: 
     A Pl Ine
     A Sg Com

    11: 
     V* TV Der/u/a/år V* Der/us N Sg Acc
     V* TV Der/d V* Der/us N Sg Acc

    11: 
     Pron Rel Pl Ela
     Pron Interr Pl Ela

    11: 
     Pron Refl Sg Ill PxPl2
     Pron Refl Sg Ill PxDu2

    11: 
     V* TV Pass V* Actio N Sg Ela
     V* TV Pass V* Actio N Sg Nom PxSg3
     V* TV Pass V* Actio N Sg Acc PxSg3
     V* TV Pass V* Actio N Sg Gen PxSg3

    11: 
     V* TV Pass V Ind ConNeg
     V* TV Der/dalla V Ind ConNeg
     V* TV Der/dalla V Imprt Sg2
     V* TV Der/dalla V Ind Prs Sg2
     V* TV Pass V Imprt Sg2
     V* TV Der/dalla V Imprt ConNeg
     V* TV Pass V VGen
     V* TV Der/dalla V VGen
     V* TV Pass V Imprt ConNeg
     V* TV Pass V Ind Prs Sg2

    11: 
     V* TV Der/dalla V Ind Prt Sg3
     V* TV Pass V Ind Prt Sg3

    10: 
     V* TV Der/u/a/år V Inf
     V* TV Der/u/a/år V Imprt Pl2

    10: 
     A Superl Sg Gen
     A Superl Pl Nom

    10: 
     V TV Sup
     V IV Sup

    10: 
     N* Der/dibme A* Der/duvva V* Actor N Sg Acc PxSg2
     N* Der/dibme A* Der/duvva V* Actor N Sg Nom PxSg2
     N* Der/dibme A* Der/duvva V* Actor N Sg Gen PxSg2
     N* Der/dibme A* Der/duvva V Inf

    10: 
     N* Der/dibme A Sg Ela
     N* Der/dibme A Sg Acc PxSg3
     N* Der/dibme A Sg Gen PxSg3

    10: 
     V* IV Actor N Sg Nom
     V* IV Actor N Pl Nom
     V* IV Actor A Attr
     V* TV Actor N Sg Gen
     V* IV Actor N Sg Gen
     V* TV Actor N Pl Nom
     V* TV Actor A Attr
     V* TV Actor N Sg Nom

    10: 
     N Sg Nom
     A Sg Nom

    10: 
     V TV Ind Prs Sg3
     V TV Ind Prs Sg2

    10: 
     V TV Inf
     V* TV Actor N Sg Gen PxSg2
     V* TV Actor N Sg Nom PxSg2
     V* TV Der/d V Ind Prs Sg3
     V* TV Actor N Sg Acc PxSg2

    10: 
     V* TV Der/dalla V* Actor N Sg Nom PxSg2
     V* TV Der/dalla V Inf
     V* TV Der/dalla V* Actor N Sg Gen PxSg2
     V* TV Pass V Inf
     V* TV Pass V* Actor N Sg Gen PxSg2
     V* TV Pass V* Actor N Sg Acc PxSg2
     V* TV Der/dalla V* Actor N Sg Acc PxSg2
     V* TV Pass V* Actor N Sg Nom PxSg2

    10: 
     V* Actio N Sg Ela
     V* Actio N Sg Acc PxSg3
     V* Actio N Sg Gen PxSg3
     V* Actio N Sg Nom PxSg3

    10: 
     V Ind Prt Du2
     V TV Ind Prt Pl2
     V Ind Prt Pl2
     V TV Ind Prt Du2

    10: 
     V* TV Pass V* Der/dahka N Sg Gen
     V* TV Pass V* Der/dahka N Pl Nom

    10: 
     V* TV Der/alla V* Inch V Ind Prs Du1
     V* TV Der/alla V* Inch V Ind Prt Pl3

    10: 
     V* IV Actor A Attr
     V* IV Actor N Sg Gen
     V* IV Actor N Sg Nom
     V* IV Actor N Pl Nom

    10: 
     V PrfPrc
     V TV PrfPrc

    10: 
     V TV Ind Prs Pl3
     V TV Ind Prt Sg2
     V Ind Prt Sg2
     V Ind Prs Pl3

    10: 
     N Sg Acc PxDu1
     N Sg Nom PxPl1
     N Sg Gen PxPl1
     N Sg Acc PxPl1
     N Sg Nom PxDu1
     N Sg Gen PxDu1

    10: 
     V* TV Der/us N Pl Ine
     V* TV Der/us N Sg Com

    10: 
     V TV Ind Prs Pl1
     V Ind Prs Pl1

    10: 
     V* TV Der/d V Ind Prt Sg2
     V* TV Der/u/a/år V Ind Prs Pl3
     V* TV Der/u/a/år V Ind Prt Sg2
     V* TV Der/d V Ind Prs Pl3

    10: 
     V* TV Pass V Ind Prs Sg1
     V Ind Prt Sg1
     V* Pass V Ind Prs Sg1

    9: 
     N Pl Acc PxDu1
     N Pl Acc PxPl1

    9: 
     N* Der/dibme A Pl Com
     N* Der/dibme A Pl Gen

    9: 
     V IV Ind Prt Sg3
     V Ind Prt Sg3

    9: 
     V TV Ind Prt Du3
     V IV Ind Prt Du3

    9: 
     Pron Interr Sg Ine
     Pron Rel Ess
     Pron Interr Ess
     Pron Rel Sg Ine

    9: 
     V ImprtII ConNeg Sg2
     V ImprtII ConNeg Pl2
     V Ind Prs Pl3
     V IV Ind Prs Sg3
     V ImprtII Sg2
     V ImprtII ConNeg Du2
     V Ind Prs Sg3
     V Ind Prt Sg2

    9: 
     V* TV Pass V* Actor N Sg Gen PxDu1
     V* TV Pass V* Actor N Sg Acc PxDu1
     V* TV Pass V* Actio N Pl Nom
     V* TV Pass V* Actio N Sg Gen
     V* TV Pass V* Actor N Sg Nom PxPl1
     V* TV Pass V* Actor N Sg Gen PxPl1
     V* TV Pass V* Actor N Sg Acc PxPl1
     V* TV Pass V* Actor N Sg Nom PxDu1

    9: 
     V* TV Der/u/a/år V Imprt Pl1
     V* TV Der/d V Ind Prs Pl1
     V* TV Der/d V Imprt Pl1
     V* TV Der/u/a/år V Ind Prs Pl1

    9: 
     N Sg Ine PxPl2
     N Sg Ine PxDu2

    9: 
     A Sg Ela PxSg2
     N Sg Ela PxSg2

    9: 
     V* TV Der/st V Ind Prt Pl3
     V* TV Der/st V Ind Prs Du1

    9: 
     Adv
     Po
     Pr

    9: 
     N Sg Ela PxPl1
     N Sg Ela PxDu1

    9: 
     V TV Ind ConNeg
     V Imprt Sg2
     V TV Imprt ConNeg
     V TV VGen
     V TV Imprt Sg2
     V TV Ind Prs Sg2

    9: 
     V TV Ind ConNeg
     V IV Ind ConNeg

    9: 
     V* TV Actor N Sg Acc PxDu2
     V* TV Actor N Sg Acc PxPl2
     V* TV Actor N Abess
     V* TV Actor N Sg Nom PxDu2
     V* TV Actor N Sg Nom PxPl2
     V* TV Actor N Sg Gen PxPl2
     V* TV Actor N Sg Gen PxDu2

    9: 
     V* IV Actor N Pl Gen
     V* IV Actor N Pl Com

    9: 
     V* TV Der/u/a/år V Imprt Sg3
     V* TV Der/d V Imprt Sg3

    9: 
     V TV Ind ConNeg
     V Ind ConNeg
     V Imprt ConNeg
     V TV Imprt ConNeg

    9: 
     Pron Rel Sg Par
     Pron Interr Sg Par

    9: 
     N Prop Sur Pl Nom
     N Prop Sur Sg Attr
     N Prop Sur Sg Gen
     N Prop Sur Sg Nom

    8: 
     V* TV Der/d V* Actor N Ess
     V* TV Der/d V* Actor N Sg Ine

    8: 
     V* TV Der/u/a/år V Ind Prt Sg1
     V* TV Der/d V Ind Prt Sg1

    8: 
     V* TV Der/ahtte V* Actor N Sg Acc PxSg2
     V* TV Der/ahtte V Inf
     V* TV Der/ahtte V* Actor N Sg Gen PxSg2
     V* TV Der/ahtte V* Actor N Sg Nom PxSg2

    8: 
     V* TV Actor N Sg Gen
     V TV Imprt Du2
     V* TV Actor N Pl Nom
     V* TV Actor N Sg Nom
     V* TV Actor A Attr
     V Imprt Du2

    8: 
     V* TV Pass V Ind Prt Sg2
     V* TV Der/dalla V Ind Prs Pl3
     V* TV Pass V Ind Prs Pl3
     V* TV Der/dalla V Ind Prt Sg2

    8: 
     A Sg Gen PxSg1
     A Sg Acc PxSg1
     A Sg Nom PxSg1

    8: 
     A Pl Acc
     Pron Indef Pl Acc

    8: 
     V* IV Der/d V Imprt Pl2
     V* Der/d V Imprt Pl2
     V* IV Der/d V Inf
     V* Der/d V Inf

    8: 
     V PrfPrc
     V TV PrfPrc
     V* Actio N Sg Nom
     V* TV Actio N Sg Nom

    8: 
     V* IV Actio N Sg Ill
     V* TV Actio N Sg Ill

    8: 
     V* Der/r N Sg Ine
     V* Der/r N Ess

    8: 
     V TV Imprt Du3
     V TV Imprt Pl3

    8: 
     V TV Inf
     V* TV Actor N Sg Gen PxSg2
     Adv
     V* TV Actor N Sg Nom PxSg2
     V* TV Actor N Sg Acc PxSg2

    8: 
     V* TV Der/ahtte V Ind Prt Pl3
     V* TV Der/ahtte V Ind Prs Du1

    8: 
     V* TV Der/d V* Der/us N Pl Gen
     V* TV Der/u/a/år V* Der/us N Pl Gen
     V* TV Der/u/a/år V* Der/us N Pl Com
     V* TV Der/d V* Der/us N Pl Com

    8: 
     N Sg Nom PxPl1
     N Sg Nom PxDu1

    7: 
     V* TV Pass V Ind Prs Sg3
     V* TV Der/dalla V Ind Prs Sg3

    7: 
     A* Attr Der/mielak A Attr
     A* Attr Der/mielak A Sg Nom

    7: 
     V* TV Der/d V Ind ConNeg
     V* TV Der/u/a/år V Ind ConNeg

    7: 
     V* Der/d V Ind Prs Pl2
     V* Der/u/a/åd V Ind Prs Pl2

    7: 
     V* IV Actio N Sg Gen PxSg3
     V* IV Actio N Sg Ela
     V* IV Actio N Sg Acc PxSg3
     V* IV Actio N Sg Nom PxSg3

    7: 
     N Sg Acc PxDu3
     N Sg Gen PxDu3

    7: 
     N* Der/lasj A* Adv
     N* Der/lasj A Sg Gen PxSg2
     N* Der/lasj A Sg Acc PxSg2

    7: 
     V TV Inf
     V IV Inf
     V IV Imprt Pl2
     Adv
     V TV Imprt Pl2

    7: 
     N* Der/dibme A* Der/duhtte V Inf
     N* Der/dibme A* Der/duhtte V* Actor N Sg Nom PxSg2
     N* Der/dibme A* Der/duhtte V* Actor N Sg Acc PxSg2
     N* Der/dibme A* Der/duhtte V* Actor N Sg Gen PxSg2

    7: 
     V* TV Actor N Sg Gen PxSg2
     V* TV Actor N Sg Nom PxSg2
     V* TV Actor N Sg Acc PxSg2

    7: 
     V* Der/r N Pl Nom
     V* Der/r N Sg Gen

    7: 
     V* Der/dalla V* Actor N Sg Gen PxSg1
     V* Der/dalla V* Actio N Sg Nom
     V* Der/dalla V PrfPrc
     V* Der/dalla V* Actor N Sg Nom PxSg1
     V* Der/dalla V* Actor N Sg Acc PxSg1

    7: 
     V* Pass V Ind Prt Pl3
     V* Pass V Ind Prs Du1

    7: 
     V* TV Der/u/a/år V GerII
     V* TV Der/u/a/år V* Actio N Sg Gen
     V* TV Der/u/a/år V* Actio N Pl Nom
     V* TV Der/u/a/år V* Actio N Ess

    7: 
     Adv
     Po
     Adp

    6: 
     V* TV Pass V* Actio N Sg Gen
     V* TV Pass V* Actio N Pl Nom

    6: 
     N Pl Ine
     A Pl Ine
     N Sg Com
     A Sg Com

    6: 
     V* TV Der/u/a/år V* Actio N Sg Gen PxSg3
     V* TV Der/u/a/år V* Actio N Sg Acc PxSg3
     V* TV Der/u/a/år V* Actio N Sg Ela
     V* TV Der/d V* Actio N Sg Ela
     V* TV Der/d V* Actio N Sg Acc PxSg3
     V* TV Der/d V* Actio N Sg Gen PxSg3

    6: 
     V* Actio N Ess
     V GerII
     V TV GerII
     V* TV Actio N Sg Ine
     V* TV Actio N Ess
     V* Actio N Sg Ine

    6: 
     V* Der/dalla V Ind Prs Pl3
     V* Der/dalla V Ind Prt Sg2

    6: 
     Pron Pers Pl1 Gen
     Pron Pers Pl1 Com

    6: 
     A Sg Gen PxPl3
     A Sg Acc PxPl3
     A Sg Nom PxPl3

    6: 
     N Prop Fem Pl Gen
     N Prop Fem Pl Com
     N Prop Fem Sg Ill

    6: 
     V* TV Der/us N Pl Com
     V* TV Der/us N Pl Gen

    6: 
     V* TV Der/u/a/år V* Der/us N Pl Acc
     V* TV Der/d V* Der/us N Pl Acc

    6: 
     V TV Ind Prt Sg1
     V IV Ind Prt Sg1

    6: 
     V* TV Pass Der/dahtte V Ind Prs Sg3
     V* TV Der/dahtte V Ind Prs Sg3

    6: 
     N Sg Ela PxDu2
     N Sg Ela PxPl2

    6: 
     A* Comp Adv
     A Comp Sg Nom PxSg2
     A Comp Sg Acc PxSg2
     A Comp Sg Gen PxSg2

    6: 
     N Prop Org Sg Gen
     N Prop Org Pl Nom

    6: 
     A Sg Ill
     N Sg Ill

    6: 
     V* Der/u/a/åd V GerII
     V* Der/d V* Actio N Ess
     V* Der/d V GerII
     V* Der/u/a/åd V* Actio N Pl Nom
     V* Der/u/a/åd V* Actio N Ess
     V* Der/d V* Actio N Pl Nom
     V* Der/d V* Actio N Sg Gen
     V* Der/u/a/åd V* Actio N Sg Gen

    6: 
     A Comp Sg Gen
     A Comp Pl Nom

    6: 
     V* TV Actio N Pl Com
     V* TV Actio N Pl Gen

    6: 
     N* Dim N Sg Acc PxSg3
     N* Dim N Sg Nom PxSg3
     N* Dim N Sg Ela
     N* Dim N Sg Gen PxSg3

    6: 
     V* TV Der/ahtte V Ind Prs Pl3
     V* TV Der/ahtte V Ind Prt Sg2

    6: 
     A Sg Gen PxSg3
     A Sg Ela
     A Sg Acc PxSg3

    6: 
     V* TV Actio N Sg Nom PxSg3
     V* Actio N Sg Ela
     V* Actio N Sg Gen PxSg3
     V* Actio N Sg Nom PxSg3
     V* TV Actio N Sg Gen PxSg3
     V* TV Actio N Sg Acc PxSg3
     V* Actio N Sg Acc PxSg3
     V* TV Actio N Sg Ela

    6: 
     V* TV Actor N Sg Com
     V* TV Actor N Pl Ine

    6: 
     V Ind Prt Du2
     V Ind Prt Pl2

    5: 
     N Prop Plc Pl Com
     N Prop Plc Pl Gen

    5: 
     V* Actor N Pl Gen
     V* Actor N Pl Com

    5: 
     V* TV Pass V Ind Prs Pl2
     V* TV Der/dalla V Ind Prs Pl2

    5: 
     V TV Inf
     V* TV Actor N Sg Gen PxSg2
     V* TV Actor N Sg Nom PxSg2
     V* TV Der/d V Ind Prs Sg3
     V* TV Actor N Sg Acc PxSg2
     V* TV Der/u/a/år V Ind Prs Sg3

    5: 
     V TV Ind Prt Pl3
     V Ind Prt Pl3
     V TV Ind Prs Du1
     V Ind Prs Du1

    5: 
     V* TV Der/alla V* Actio N Ess
     V* TV Der/alla V* Actio N Sg Ine
     V* TV Der/alla V GerII

    5: 
     V* TV Der/d V* Actor N Sg Acc
     V* TV Der/u/a/år V* Actor N Sg Acc

    5: 
     V* TV Der/d V* Actio N Sg Nom
     V* TV Der/u/a/år V* Actio N Sg Nom

    5: 
     V* TV Der/us N Sg Ela
     V* TV Der/us N Sg Acc PxSg3
     V* TV Der/us N Sg Gen PxSg3

    5: 
     V* TV Der/d V GerII
     V* TV Der/d V* Actio N Pl Nom
     V* TV Der/d V* Actio N Ess
     V* TV Der/d V* Actio N Sg Gen

    5: 
     V* TV Inch V Imprt ConNeg
     V* TV Inch V VGen
     V* TV Inch V Ind ConNeg
     V* TV Inch V Imprt Sg2

    5: 
     V* TV Der/u/a/år V* Der/us N Sg Nom
     V* TV Der/d V ImprtII Sg3
     V* TV Der/u/a/år V ImprtII Sg3
     V* TV Der/d V* Der/us N* Dim N Sg Nom
     V* TV Der/u/a/år V* Der/us N* Dim N Sg Nom
     V* TV Der/d V* Der/us N Sg Nom

    5: 
     V* TV Der/mus N Pl Com
     V* TV Der/mus N Pl Gen

    5: 
     V* TV Der/d V ImprtII ConNeg Du2
     V* TV Der/d V ImprtII Sg2
     V* TV Der/d V ImprtII ConNeg Sg2
     V* TV Der/u/a/år V ImprtII ConNeg Du2
     V* TV Der/u/a/år V ImprtII ConNeg Sg2
     V* TV Der/u/a/år V ImprtII ConNeg Pl2
     V* TV Der/d V ImprtII ConNeg Pl2
     V* TV Der/u/a/år V ImprtII Sg2

    5: 
     V TV Ind Prs Pl1
     V TV Imprt Pl1
     V IV Ind Prs Pl1
     V IV Imprt Pl1

    5: 
     V IV Imprt ConNeg
     V IV Ind ConNeg

    5: 
     V* TV Der/d V Ind Prs Pl2
     V* TV Der/u/a/år V Ind Prs Pl2

    5: 
     V* TV Der/alla V Ind ConNeg
     V* TV Der/alla V Imprt ConNeg

    5: 
     V* TV Pass V VGen
     V* TV Pass V Ind Prs Sg3
     V* TV Pass V Ind ConNeg
     V* TV Pass V Imprt Sg2
     V* TV Pass V Ind Prs Sg2

    5: 
     N Prop Mal Pl Nom
     N Prop Sur Sg Attr
     N Prop Mal Sg Gen
     N Prop Mal Sg Nom

    5: 
     A* Attr Der/lágásj A Attr
     A* Attr Der/lágásj A Sg Nom

    5: 
     N Sg Ill PxDu1
     N Sg Ill PxPl1

    5: 
     Pron Rel Ess Clt
     Pron Interr Sg Ine Clt
     Pron Rel Ess
     Pron Interr Ess Clt
     Pron Rel Sg Ine Clt
     Pron Interr Ess

    5: 
     V* TV Der/l V* Actio N Pl Nom
     V* TV Der/l V* Actio N Ess
     V* TV Der/l V* Actio N Sg Gen
     V* TV Der/l V GerII

    5: 
     V* TV Actor N* Dim N Sg Ill
     V* TV Actor N* Dim N Pl Gen
     V* TV Actor N* Dim N Pl Com

    5: 
     V* TV Der/l V* Actio N Sg Com
     V* TV Der/l V* Actio N Pl Ine

    5: 
     V Imprt Pl2
     V* TV Pass V Inf

    5: 
     V* Actor N Ess
     V* Actor N Sg Ine

    5: 
     N Prop Fem Pl Gen
     N Prop Fem Pl Com

    5: 
     Num Pl Com
     Num Pl Gen
     N Sg Ill
     Num Sg Ill

    5: 
     V* TV Der/u/a/år V Ind Prs Pl3
     V* TV Der/u/a/år V Ind Prt Sg2

    5: 
     V* TV Der/d V* Der/us N Ess
     V* TV Der/u/a/år V* Der/us N Ess

    5: 
     A Sg Acc
     N Sg Acc

    5: 
     N Sg Ill PxDu2
     N Sg Ill PxPl2

    5: 
     V* IV Actio N Sg Nom
     V* TV Actio N Sg Nom

    4: 
     V* IV Actio N* Der/ahtes A Attr
     V* IV Actio N* Der/ahtes A Sg Nom

    4: 
     A Comp Pl Gen
     A Comp Sg Ill
     A Comp Pl Com

    4: 
     V* Pass V Ind Prt Sg2
     V* Pass V Ind Prs Pl3

    4: 
     V* Actio N Sg Gen
     V* Actio N Pl Nom
     V* TV Actio N Sg Gen
     V* TV Actio N Pl Nom

    4: 
     N* Der/dibme A* Der/duvva V Ind Prt Pl2
     N* Der/dibme A* Der/duvva V Ind Prt Du2

    4: 
     V* TV Pass V* Der/dahka N Sg Gen PxSg3
     V* TV Pass V* Der/dahka N Sg Ela
     V* TV Pass V* Der/dahka N Sg Acc PxSg3

    4: 
     N Sg Nom PxDu2
     A Sg Nom PxPl2
     A Sg Nom PxDu2
     N Sg Nom PxPl2

    4: 
     V* Der/d V Ind Prt Sg2
     V* Der/u/a/åd V Ind Prt Sg2
     V* Der/u/a/åd V Ind Prs Pl3
     V* Der/d V Ind Prs Pl3

    4: 
     V* TV Pass V Ind Prt Pl1
     V* TV Pass V Ind Prt Du1

    4: 
     V* TV Pass V Ind Prt Pl3
     V* TV Der/dalla V Ind Prt Pl3
     V* TV Pass V Ind Prs Du1
     V* TV Der/dalla V Ind Prs Du1

    4: 
     N Prop Org Pl Gen
     N Prop Org Sg Ill
     N Prop Org Pl Com

    4: 
     V* TV Pass V* Actio N Ess
     V* TV Pass V* Actio N Sg Ine
     V* TV Pass V GerII
     V* TV Der/dalla V* Actio N Ess
     V* TV Der/dalla V GerII
     V* TV Der/dalla V* Actio N Sg Ine

    4: 
     V* Der/u/a/år V Ind Prt Pl3
     V* Der/u/a/år V Ind Prs Du1

    4: 
     V* TV Der/alla V* Actio N Sg Ill
     V* TV Der/alla V* Actio N Pl Gen
     V* TV Der/alla V* Actio N Pl Com

    4: 
     N Prop Sur Sg Acc
     N Prop Plc Sg Acc

    4: 
     V TV Ind Prs Sg1
     V IV Ind Prs Sg1

    4: 
     V* IV Actio N Sg Gen PxSg3
     V* TV Actio N Sg Gen PxSg3
     V* TV Actio N Sg Acc PxSg3
     V* IV Actio N Sg Ela
     V* IV Actio N Sg Acc PxSg3
     V* TV Actio N Sg Ela

    4: 
     N Pl Ela PxDu2
     N Pl Ela PxPl2

    4: 
     V* TV Der/st V Ind Prs Pl3
     V* TV Der/st V Ind Prt Sg2

    4: 
     V* Der/u/a/åd V* Actor N Pl Nom
     V* Der/u/a/åd V* Actor N Sg Nom
     V* Der/u/a/åd V* Actor A Attr
     V* Der/d V* Actor N Sg Nom
     V* Der/d V* Actor N Pl Nom
     V* Der/d V* Actor A Attr
     V* Der/u/a/åd V* Actor N Sg Gen
     V* Der/d V* Actor N Sg Gen

    4: 
     V Ind ConNeg
     V Ind Prs Sg2
     V Imprt Sg2
     V Imprt ConNeg
     V VGen

    4: 
     V* Der/d V Ind ConNeg
     V* Der/u/a/åd V Ind ConNeg

    4: 
     V* TV Der/u/a/år V* Actor N Pl Nom
     V* TV Der/u/a/år V* Actor N Sg Nom
     V* TV Der/u/a/år V* Actor N Sg Gen
     V* TV Der/u/a/år V* Actor A Attr

    4: 
     V IV Ind Prs Pl1
     V IV Imprt Pl1

    4: 
     V* TV Pass V Ind ConNeg
     V* TV Der/dalla V Ind ConNeg
     V* TV Der/dalla V Imprt ConNeg
     V* TV Pass V Imprt ConNeg

    4: 
     V* Der/u/a/åd V VGen
     V* Der/d V VGen
     V* Der/d V Imprt Sg2
     V* Der/u/a/åd V Imprt Sg2
     V* Der/d V Ind ConNeg
     V* Der/u/a/åd V Ind ConNeg
     V* Der/u/a/åd V Ind Prs Sg2
     V* Der/d V Ind Prs Sg2

    4: 
     V* TV Der/u/a/år V* Actio N Sg Acc
     V* TV Der/d V* Actio N Sg Acc

    4: 
     N Sg Ine PxPl1
     N Sg Ine PxDu1

    4: 
     N Prop Fem Pl Ine
     N Prop Fem Sg Com

    4: 
     N* Der/lasj A* Der/vuohta N Sg Com
     N* Der/lasj A* Der/vuohta N Pl Ine

    4: 
     V* Der/dalla V Ind Prs Sg2
     V* Der/dalla V Ind ConNeg
     V* Der/dalla V Imprt Sg2
     V* Der/dalla V VGen
     V* Der/dalla V Imprt ConNeg

    4: 
     V* Der/dalla V* Actor N Sg Acc PxSg2
     V* Der/dalla V Inf
     V* Der/dalla V* Actor N Sg Nom PxSg2
     V* Der/dalla V* Actor N Sg Gen PxSg2

    4: 
     V TV Ind Prt Pl1
     V TV Ind Prt Du1
     V IV Ind Prt Pl1
     V IV Ind Prt Du1

    4: 
     V* TV Pass V* Actio N Ess
     V* TV Pass V* Actio N Sg Ine
     V* TV Pass V GerII

    3: 
     V* Actor N Sg Nom PxSg2
     V Inf
     V* Actor N Sg Gen PxSg2
     V* Actor N Sg Acc PxSg2

    3: 
     V* TV Actor A* Attr Der/mielak A Sg Ine
     V* TV Actor A* Attr Der/mielak A Ess

    3: 
     V* TV Der/dalla V Sup
     V* TV Pass V Sup

    3: 
     V* TV Der/u/a/år V* Actor N Sg Nom PxSg3
     V* TV Der/u/a/år V* Actor N Sg Acc PxSg3
     V* TV Der/d V* Actor N Sg Gen PxSg3
     V* TV Der/d V* Actor N Sg Acc PxSg3
     V* TV Der/d V* Actor N Sg Ela
     V* TV Der/u/a/år V* Actor N Sg Gen PxSg3
     V* TV Der/u/a/år V* Actor N Sg Ela
     V* TV Der/d V* Actor N Sg Nom PxSg3

    3: 
     V* TV Pass V* Actio N Sg Ill
     V* TV Pass V* Actio N Pl Gen
     V* TV Pass V* Actio N Pl Com

    3: 
     V* TV Der/u/a/år V* Actio N Sg Gen PxSg3
     V* TV Der/u/a/år V* Actio N Sg Acc PxSg3
     V* TV Der/u/a/år V* Actio N Sg Ela

    3: 
     V* TV Der/d V* Actor N Pl Ill
     V* IV Der/d V* Actor N Pl Ill
     V* IV Der/u/a/år V* Actor N Pl Ill
     V* TV Der/u/a/år V* Actor N Pl Ill

    3: 
     Num Gen
     Num Acc

    3: 
     V* TV Der/mus N Sg Nom
     V* Der/mus N Sg Nom

    3: 
     N Prop Obj Pl Nom
     N Prop Obj Sg Gen

    3: 
     V* Pass V Ind Prs Sg2
     V* Pass V VGen
     V* Pass V Imprt Sg2
     V* Pass V Ind ConNeg
     V* Pass V Imprt ConNeg

    3: 
     V PrfPrc
     V IV PrfPrc

    3: 
     A* Attr Der/mielak A Sg Ine
     A* Attr Der/mielak A Ess

    3: 
     V* TV Der/mus N Ess
     V* Der/mus N Ess

    3: 
     V* TV Der/l V Ind Prt Du1
     V* TV Der/l V Ind Prt Pl1

    3: 
     Pron Indef Pl Ine
     Pron Indef Sg Com

    3: 
     V* Der/dahtte V Imprt ConNeg
     V* Der/dahtte V VGen
     V* Der/dahtte V Ind ConNeg
     V* Der/dahtte V Imprt Sg2

    3: 
     N Sg Com PxPl3
     N Pl Ine PxPl3

    3: 
     V* TV Der/ladda V Ind Prs Du1
     V* TV Der/ladda V Ind Prt Pl3

    3: 
     Po
     Pr

    3: 
     Pron Refl Sg Ela PxDu2
     Pron Refl Sg Ela PxPl2

    3: 
     N Prop Fem Pl Nom
     N Prop Fem Sg Gen

    3: 
     V IV ImprtII ConNeg Pl2
     V IV ImprtII ConNeg Du2
     V IV ImprtII ConNeg Sg2
     V IV ImprtII Sg2

    3: 
     V* Der/u/a/åd V Ind Prs Sg1
     V* Der/d V Ind Prs Sg1

    3: 
     V* Der/dalla V Ind Prt Pl3
     V* Der/dalla V Ind Prs Du1

    3: 
     V Ind Prs Sg2
     V TV Ind Prs Sg2

    3: 
     Pron Indef Pl Ill
     A Pl Ill

    3: 
     N* Der/lasj A Pl Com
     N* Der/lasj A Pl Gen

    3: 
     N Prop Plc Sg Com
     N Prop Plc Pl Ine

    3: 
     A Sg Nom PxSg3
     A Attr
     N Sg Nom PxSg3
     A Sg Gen PxSg3
     A Sg Ela
     A Sg Acc PxSg3

    3: 
     V* Actor N Sg Nom PxSg2
     V Inf
     V* Der/d V Ind Prs Sg3
     V* Actor N Sg Gen PxSg2
     V* Actor N Sg Acc PxSg2

    3: 
     N Pl Ill
     A Pl Ill

    3: 
     V* Der/u/a/år V Sup
     V* TV Der/u/a/år V Sup

    3: 
     V* IV Actor N Sg Nom PxPl2
     V* IV Actor N Sg Gen PxDu2
     V* IV Actor N Abess
     V* IV Actor N Sg Gen PxPl2
     V* IV Actor N Sg Acc PxDu2
     V* IV Actor N Sg Nom PxDu2
     V* IV Actor N Sg Acc PxPl2

    3: 
     V* Der/dalla V Ind ConNeg
     V* Der/dalla V Imprt ConNeg

    3: 
     V* TV Der/lahtte V Imprt ConNeg
     V* TV Der/lahtte V Ind ConNeg
     V* TV Der/lahtte V VGen
     V* TV Der/lahtte V Imprt Sg2

    3: 
     V* TV Pass Der/dahtte V PrfPrc
     V* TV Der/dahtte V PrfPrc

    3: 
     V* Inch V Ind Prs Sg3
     V* TV Inch V Ind Prs Sg3

    3: 
     V Ind Prt Du1
     V Ind Prt Pl1

    3: 
     A* Der/vuohta N Sg Acc PxSg2
     A* Der/vuohta N Sg Gen PxSg2

    3: 
     V* TV Der/alla V* Actor N Sg Nom
     V* TV Der/alla V Imprt Du2
     V* TV Der/alla V* Actor N Sg Gen
     V* TV Der/alla V* Actor N Pl Nom
     V* TV Der/alla V* Actor A Attr

    3: 
     V Ind ConNeg
     V Imprt ConNeg

    3: 
     N* Der/dibme A* Der/duvva V Ind Prt Sg2
     N* Der/dibme A* Der/duvva V Ind Prs Pl3

    3: 
     V* Der/mus N Sg Acc
     V* TV Der/mus N Sg Acc

    2: 
     V* TV Der/lis A Sg Nom
     V* TV Der/lis A Attr
     V* TV Der/l V Imprt Sg3

    2: 
     Adv
     Pr

    2: 
     V* TV Der/dalla V Imprt Pl2
     V* TV Pass V Imprt Pl2

    2: 
     V TV Imprt Sg3
     V IV Imprt Sg3

    2: 
     V* Der/dahka N Sg Acc
     V* Pass V* Der/dahka N Sg Acc

    2: 
     V* TV Der/d V* Actio N Sg Ela
     V* TV Der/d V* Actio N Sg Acc PxSg3
     V* TV Der/d V* Actio N Sg Gen PxSg3

    2: 
     V* Pass V* Actio N Sg Nom PxSg3
     V* Pass V* Actio N Sg Gen PxSg3
     V* Pass V* Actio N Sg Ela
     V* Pass V* Actio N Sg Acc PxSg3

    2: 
     V* TV Der/dahtte V* Actor N Sg Nom PxSg2
     V* TV Der/dahtte V* Actor N Sg Gen PxSg2
     V* TV Pass Der/dahtte V* Actor N Sg Nom PxSg2
     V* TV Pass Der/dahtte V* Actor N Sg Gen PxSg2
     V* TV Pass Der/dahtte V* Actor N Sg Acc PxSg2
     V* TV Pass Der/dahtte V Inf
     V* TV Der/dahtte V* Actor N Sg Acc PxSg2
     V* TV Der/dahtte V Inf

    2: 
     V Pot ConNeg
     V Pot Sg2

    2: 
     V* TV Der/dalla V Ind Prs Pl1
     V* TV Pass V Ind Prs Pl1

    2: 
     N* Der/dibme A Pl Ine
     N* Der/dibme A Sg Com

    2: 
     A Superl Ess
     A Superl Sg Ine

    2: 
     V* IV Der/d V Ind Prs Sg3
     V* Der/d V Ind Prs Sg3

    2: 
     V* TV Der/mus N Sg Acc PxSg3
     V* TV Der/mus N Sg Gen PxSg3
     V* TV Der/mus N Sg Ela

    2: 
     V* TV Der/dalla V* Actor N Sg Gen
     V* TV Pass V* Actor N Sg Gen
     V* TV Pass V Imprt Du2
     V* TV Der/dalla V Imprt Du2
     V* TV Der/dalla V* Actor A Attr
     V* TV Der/dalla V* Actor N Sg Nom
     V* TV Der/dalla V* Actor N Pl Nom
     V* TV Pass V* Actor N Pl Nom
     V* TV Pass V* Actor N Sg Nom
     V* TV Pass V* Actor A Attr

    2: 
     V* TV Der/dalla V ImprtII Sg3
     V* TV Pass V ImprtII Sg3

    2: 
     V* TV Der/u/a/år V Pot Pl3
     V* TV Der/d V Pot Pl3

    2: 
     N* Der/lasj A* Der/vuohta N Sg Gen
     N* Der/lasj A* Der/vuohta N Pl Nom

    2: 
     V Pot Sg3
     V TV Pot Sg3

    2: 
     V* IV Der/d V Imprt Pl2
     V* IV Der/d V Inf

    2: 
     A Ess
     Pron Indef Sg Ine
     A Sg Ine

    2: 
     V* TV Der/alla V Ind Prt Sg3
     V* IV Der/alla V Ind Prt Sg3

    2: 
     V* IV Actor N Ess
     V* IV Actor N Sg Ine

    2: 
     V* TV Actor N* Der/lasj A Sg Nom
     V* TV Actor N* Der/lasj A Attr

    2: 
     V TV Ind Prt Pl1
     V Ind Prt Du1
     V TV Ind Prt Du1
     V Ind Prt Pl1

    2: 
     V* Actio N Sg Ill
     V* Actio N Pl Com
     V* Actio N Pl Gen

    2: 
     V ImprtII Pl3
     V Imprt Pl3

    2: 
     V* TV Der/u/a/år V* Der/us N Sg Acc PxSg3
     V* TV Der/u/a/år V* Der/us N Sg Gen PxSg3
     V* TV Der/d V* Der/us N Sg Acc PxSg3
     V* TV Der/d V* Der/us N Sg Ela
     V* TV Der/u/a/år V* Der/us N Sg Ela
     V* TV Der/d V* Der/us N Sg Gen PxSg3

    2: 
     Pron Interr Pl Ine Clt
     Pron Rel Pl Ine Clt
     Pron Interr Sg Com
     Pron Rel Sg Com Clt
     Pron Rel Sg Com
     Pron Interr Sg Com Clt

    2: 
     V TV ImprtII ConNeg Du2
     V TV ImprtII ConNeg Sg2
     V TV ImprtII ConNeg Pl2

    2: 
     A* Der/vuohta N Sg Com PxSg3
     A* Der/vuohta N Pl Ine PxSg3

    2: 
     A* Attr Der/mielak A* Der/vuohta N Sg Gen PxSg3
     A* Attr Der/mielak A* Der/vuohta N Sg Ela
     A* Attr Der/mielak A* Der/vuohta N Sg Acc PxSg3

    2: 
     Pron Interr Pl Ine
     Pron Rel Pl Ine

    2: 
     V* TV Pass V* Actor N Sg Gen PxSg1
     V* TV Pass V* Actio N Sg Nom
     V* TV Pass V PrfPrc
     V* TV Actor N* Der/dibme A* Der/duvva V* Actor N Sg Gen PxSg1
     V* TV Actor N* Der/dibme A* Der/duvva V* Actor N Sg Nom PxSg1
     V* TV Actor N* Der/dibme A* Der/duvva V PrfPrc
     V* TV Actor N* Der/dibme A* Der/duvva V* Actio N Sg Nom
     V* TV Pass V* Actor N Sg Nom PxSg1
     V* TV Actor N* Der/dibme A* Der/duvva V* Actor N Sg Acc PxSg1
     V* TV Pass V* Actor N Sg Acc PxSg1

    2: 
     V* TV Der/dahtte V* Actor N Pl Nom
     V* TV Der/dahtte V Imprt Du2
     V* TV Der/dahtte V* Actor N Sg Gen
     V* TV Der/dahtte V* Actor A Attr
     V* TV Der/dahtte V* Actor N Sg Nom

    2: 
     V* Der/u/a/åd V Pot Pl3
     V* Der/d V Pot Pl3

    2: 
     N* Dim N Sg Gen PxSg1
     N* Dim N Sg Acc PxSg1
     N* Dim N Sg Nom PxSg1

    2: 
     A* Der/vuohta N Pl Gen
     A* Der/vuohta N Pl Com

    2: 
     V* TV Pass V* Der/dahka N Sg Com
     V* TV Pass V* Der/dahka N Pl Ine

    2: 
     A Sg Ill PxSg3
     N Sg Ill PxSg3

    2: 
     N Prop Obj Sg Ine
     N Prop Obj Ess

    2: 
     V* Der/dalla V* Actio N Sg Gen PxSg3
     V* Der/dalla V* Actio N Sg Ela
     V* Der/dalla V* Actio N Sg Nom PxSg3
     V* Der/dalla V* Actio N Sg Acc PxSg3

    2: 
     V* Der/st V* Actor A Attr
     V* Der/st V* Actor N Pl Nom
     V* Der/st V* Actor N Sg Nom
     V* Der/st V* Actor N Sg Gen

    2: 
     N* Der/dibme A Sg Nom
     V* TV Der/d V* Actio N Sg Nom
     V* TV Der/u/a/år V* Actio N Sg Nom

    2: 
     V* TV Der/u/a/år V Ind Prt Sg3
     V* Der/u/a/år V Ind Prt Sg3

    2: 
     A Attr
     V TV Imprt Sg3

    2: 
     A* Der/duhtte V* Actor N Sg Nom PxSg2
     A* Der/duhtte V* Actor N Sg Gen PxSg2
     A* Der/duhtte V Inf
     A* Der/duhtte V* Actor N Sg Acc PxSg2

    2: 
     V* TV Der/l V* Actor N Sg Nom
     V* TV Der/l V* Actor N Sg Gen
     V* TV Der/l V* Actor A Attr
     V* TV Der/l V* Actor N Pl Nom

    2: 
     V* IV Der/u/a/år V PrfPrc
     V* TV Der/u/a/år V PrfPrc
     V* IV Der/d V PrfPrc
     V* TV Der/d V PrfPrc

    2: 
     V Ind Prs Du3
     V TV Ind Prs Du3

    2: 
     V* IV Pass V* Actio N Sg Nom
     V* TV Pass V* Actor N Sg Gen PxSg1
     V* IV Pass V* Actor N Sg Nom PxSg1
     V* TV Pass V* Actio N Sg Nom
     V* TV Pass V PrfPrc
     V* IV Pass V* Actor N Sg Gen PxSg1
     V* IV Pass V* Actor N Sg Acc PxSg1
     V* TV Pass V* Actor N Sg Nom PxSg1
     V* IV Pass V PrfPrc
     V* TV Pass V* Actor N Sg Acc PxSg1

    2: 
     V* TV Der/dahka N Sg Com
     V* TV Der/dahka N Pl Ine

    2: 
     V* IV Pass V Ind Prt Sg2
     V* IV Pass V Ind Prs Pl3

    2: 
     N* Der/dibme A* Der/vuohta N Sg Ela
     N* Der/dibme A* Der/vuohta N Sg Acc PxSg3
     N* Der/dibme A* Der/vuohta N Sg Gen PxSg3

    2: 
     V* Der/u/a/åd V* Actio N Pl Gen
     V* Der/u/a/åd V* Actio N Pl Com
     V* Der/d V* Actio N Pl Com
     V* Der/d V* Actio N Pl Gen

    2: 
     V* TV Der/alla V* Actor N Sg Gen PxDu1
     V* TV Der/alla V* Actor N Sg Nom PxDu1
     V* TV Der/alla V* Actio N Sg Gen
     V* TV Der/alla V* Actor N Sg Acc PxDu1
     V* TV Der/alla V* Actor N Sg Gen PxPl1
     V* TV Der/alla V* Actor N Sg Acc PxPl1
     V* TV Der/alla V* Actio N Pl Nom
     V* TV Der/alla V* Actor N Sg Nom PxPl1

    2: 
     V* TV Der/dahtte V Ind Prt Sg3
     V* TV Pass Der/dahtte V Ind Prt Sg3

    2: 
     V* TV Pass V VAbess
     V* TV Der/dalla V VAbess

    2: 
     V* TV Der/lis A* Der/vuohta N Sg Ela
     V* TV Der/lis A* Der/vuohta N Sg Acc PxSg3
     V* TV Der/lis A* Der/vuohta N Sg Gen PxSg3

    2: 
     V* Der/u/a/åd V* Der/us N Pl Com
     V* Der/d V* Der/us N Pl Gen
     V* Der/u/a/åd V* Der/us N Pl Gen
     V* Der/d V* Der/us N Pl Com

    2: 
     V PrfPrc
     V* Pass V PrfPrc
     V* Pass V* Actio N Sg Nom

    2: 
     V* TV Der/st V Ind Prs Pl1
     V* TV Der/st V Imprt Pl1

    2: 
     N* Der/dibme A* Der/duvva V VGen
     N* Der/dibme A* Der/duvva V Ind ConNeg
     N* Der/dibme A* Der/duvva V Imprt ConNeg
     N* Der/dibme A* Der/duvva V Ind Prs Sg2
     N* Der/dibme A* Der/duvva V Imprt Sg2

    2: 
     V* TV Der/u/a/år V* Actor N Ess
     V* TV Der/u/a/år V* Actor N Sg Ine

    2: 
     V* TV Inch V Imprt ConNeg
     V* TV Inch V Ind ConNeg

    2: 
     V* IV Pass V* Actio N Sg Nom
     V* IV Pass V PrfPrc

    2: 
     V* IV Actor N Pl Ill
     V* TV Actor N Pl Ill

    2: 
     V* TV Pass V Ind Prs Sg1
     V* TV Der/dalla V Ind Prs Sg1

    2: 
     V* TV Der/dahtte V Ind Prt Pl3
     V* TV Der/dahtte V Ind Prs Du1
     V* TV Pass Der/dahtte V Ind Prt Pl3
     V* TV Pass Der/dahtte V Ind Prs Du1

    2: 
     V Imprt Pl2
     V ImprtII Pl2

    2: 
     N* Der/dibme A* Der/duvva V* Actio N Sg Nom PxSg3
     N* Der/dibme A* Der/duvva V* Actio N Sg Ela
     N* Der/dibme A* Der/duvva V* Actio N Sg Acc PxSg3
     N* Der/dibme A* Der/duvva V* Actio N Sg Gen PxSg3

    2: 
     V* Der/d V* Actio N Sg Nom
     V* Der/u/a/åd V* Actio N Sg Nom

    2: 
     V* TV Der/u/a/år V* Actio N Pl Acc
     V* TV Der/d V* Actio N Pl Acc

    2: 
     V* TV Der/u/a/år V* Der/us N Sg Gen
     V* TV Der/u/a/år V ImprtII Pl3
     V* TV Der/u/a/år V* Der/us N Pl Nom

    2: 
     V* TV Der/d V Ind Prs Du3
     V* TV Der/u/a/år V Ind Prs Du3

    2: 
     V TV Pot Pl3
     V Pot Pl3

    2: 
     V* Der/dahtte V Ind Prt Sg2
     V* Der/dahtte V Ind Prs Pl3

    2: 
     V* TV Der/dahtte V Sup
     V* TV Pass Der/dahtte V Sup

    2: 
     V* Der/u/a/år V Imprt Pl2
     V* TV Der/u/a/år V Inf
     V* Der/u/a/år V Inf
     V* TV Der/u/a/år V Imprt Pl2

    2: 
     V* TV Der/mus N Pl Ine PxSg3
     V* TV Der/mus N Sg Com PxSg3

    2: 
     V* Der/d V* Der/us N Ess
     V* Der/u/a/åd V* Der/us N Ess

    2: 
     V* Der/d V Ind Prt Sg3
     V* Der/u/a/åd V Ind Prt Sg3

    2: 
     V* Der/dahka N Pl Nom
     V* Der/dahka N Sg Gen

    2: 
     V* IV Pass V Ind ConNeg
     V IV ImprtII ConNeg Pl2
     V IV ImprtII ConNeg Du2
     V IV ImprtII ConNeg Sg2

    2: 
     V* IV Der/ahtte V Ind Prs Pl3
     V* IV Der/ahtte V Ind Prt Sg2

    2: 
     V* TV Der/d V* Der/us N Pl Ine
     V* TV Der/u/a/år V* Der/us N Pl Ine
     V* TV Der/d V* Der/us N Sg Com
     V* TV Der/u/a/år V* Der/us N Sg Com

    2: 
     V* Der/d V Ind Prs Sg1
     V* IV Der/d V Ind Prs Sg1

    2: 
     V* IV Der/d V Ind Prs Sg2
     V* Der/d V VGen
     V* Der/d V Ind ConNeg
     V* Der/d V Imprt Sg2
     V* IV Der/d V Imprt Sg2
     V* IV Der/d V VGen
     V* Der/d V Ind Prs Sg2
     V* IV Der/d V Ind ConNeg

    2: 
     V* TV Der/ahtte V* Actio N Sg Gen
     V* TV Der/ahtte V* Actio N Pl Nom
     V* TV Der/ahtte V* Actor N Sg Gen PxPl1
     V* TV Der/ahtte V* Actor N Sg Acc PxDu1
     V* TV Der/ahtte V* Actor N Sg Nom PxPl1
     V* TV Der/ahtte V* Actor N Sg Nom PxDu1
     V* TV Der/ahtte V* Actor N Sg Acc PxPl1
     V* TV Der/ahtte V* Actor N Sg Gen PxDu1

    2: 
     V* TV Actor N* Der/lasj A Pl Nom
     V* TV Actor N* Der/lasj A Sg Gen

    2: 
     V* IV Der/alla V VGen
     V* TV Der/alla V Imprt Sg2
     V* TV Der/alla V VGen
     V* IV Der/alla V Ind ConNeg
     V* IV Der/alla V Imprt ConNeg
     V* IV Der/alla V Imprt Sg2
     V* IV Der/alla V Ind Prs Sg2
     V* TV Der/alla V Imprt ConNeg
     V* TV Der/alla V Ind ConNeg
     V* TV Der/alla V Ind Prs Sg2

    2: 
     V* TV Actor N* Dim N Sg Gen
     V* TV Actor N* Dim N Pl Nom

    2: 
     V* TV Der/d V Imprt Pl3
     V* TV Der/u/a/år V Imprt Pl3
     V* TV Der/d V Imprt Du3
     V* TV Der/u/a/år V Imprt Du3

    2: 
     V* IV Pass Der/dahtte V Ind Prs Sg3
     V* IV Der/dahtte V Ind Prs Sg3

    1: 
     V* TV Der/dalla V* Inch V Ind Prs Du1
     V* TV Pass V* Inch V Ind Prt Pl3
     V* TV Der/dalla V* Inch V Ind Prt Pl3
     V* TV Pass V* Inch V Ind Prs Du1

    1: 
     V* TV Actio N Sg Com PxSg3
     V* TV Actio N Pl Ine PxSg3

    1: 
     V* TV Der/asste V* Actor N Sg Nom PxSg2
     V* TV Der/asste V* Actor N Sg Gen PxSg2
     V* IV Der/asste V* Actor N Sg Acc PxSg2
     V* IV Der/asste V* Actor N Sg Nom PxSg2
     V* IV Der/asste V* Actor N Sg Gen PxSg2
     V* TV Der/asste V* Actor N Sg Acc PxSg2
     V* TV Der/asste V Inf
     V* IV Der/asste V Inf

    1: 
     V* TV Der/u/a/år V* Der/ahkes A Attr
     V* TV Der/u/a/år V* Der/ahkes A Sg Nom

    1: 
     V* TV Der/st V* Actio N Pl Ine
     V* TV Der/st V* Actio N Sg Com

    1: 
     V* TV Der/dalla V Ind Prt Pl2
     V* TV Pass V Ind Prt Pl2
     V* TV Pass V Ind Prt Du2
     V* TV Der/dalla V Ind Prt Du2

    1: 
     V* IV Der/d V Sup
     V* Der/d V Sup

    1: 
     V* IV Der/d V Ind Prt Sg3
     V* Der/d V Ind Prt Sg3

    1: 
     A Sg Ill
     A Pl Gen
     A Pl Com
     N Sg Ill

    1: 
     V* IV Pass V Ind ConNeg
     V* IV Pass V Imprt Sg2
     V IV Ind Prs Sg3
     V* IV Pass V Ind Prs Sg2
     V* IV Pass V VGen
     V* IV Pass V Ind Prs Sg3

    1: 
     V* TV Actio N Sg Ine
     V* TV Actio N Ess

    1: 
     V IV Ind Prt Du2
     V IV Ind Prt Pl2

    1: 
     V IV ImprtII Pl1
     V* IV Pass V Ind Prs Pl1

    1: 
     V* TV Der/u/a/år V* Actor N Sg Ill
     V* TV Der/d V* Actor N Sg Ill

    1: 
     V* Pass V* Actio N Pl Com
     V* Pass V* Actio N Sg Ill
     V* Pass V* Actio N Pl Gen

    1: 
     V* TV Der/dahtte V VGen
     V* TV Pass Der/dahtte V Ind ConNeg
     V* TV Der/dahtte V Imprt Sg2
     V* TV Pass Der/dahtte V Imprt Sg2
     V* TV Der/dahtte V Ind ConNeg
     V* TV Pass Der/dahtte V Imprt ConNeg
     V* TV Der/dahtte V Imprt ConNeg
     V* TV Pass Der/dahtte V VGen

    1: 
     V* TV Der/d V Ind Prs Pl1
     V* TV Der/d V Imprt Pl1

    1: 
     A Sg Acc PxSg2
     N Sg Nom PxSg2
     A Sg Nom PxSg2
     A Sg Gen PxSg2
     A* Adv

    1: 
     V IV ImprtII Sg3
     V* TV Der/us N Sg Nom
     V* TV Der/us N* Dim N Sg Nom
     V* IV Der/us N Sg Nom
     V* IV Der/us N* Dim N Sg Nom
     V TV ImprtII Sg3

    1: 
     A Ess
     N Sg Ine
     A Sg Ine
     N Ess

    1: 
     V* Der/u/a/åd V* Actio N Pl Ill
     V* Der/d V* Actio N Pl Ill

    1: 
     Pron Refl Sg Com PxPl2
     Pron Refl Pl Ine PxDu2
     Pron Refl Pl Com PxPl2
     Pron Refl Pl Ine PxPl2
     Pron Refl Sg Com PxDu2
     Pron Refl Pl Com PxDu2

    1: 
     A* Der/duvva V Ind Prt Sg2
     A* Der/duvva V Ind Prs Pl3

    1: 
     V* TV Actio N Ess
     V* TV Actio N Sg Gen
     V* TV Actio N Pl Nom

    1: 
     N* Der/dibme A* Der/duvva V Ind Prt Du1
     N* Der/dibme A* Der/duvva V Ind Prt Pl1

    1: 
     V* TV Der/asste V Ind Prs Sg3
     V* IV Der/asste V Ind Prs Sg3

    1: 
     V* TV Der/u/a/år V* Actor N Pl Gen
     V* TV Der/u/a/år V* Actor N Pl Com
     V* TV Der/d V* Actor N Pl Com
     V* TV Der/d V* Actor N Pl Gen

    1: 
     V* TV Inch V Ind Prt Pl1
     V* TV Inch V Ind Prt Du1

    1: 
     V* Actor N Sg Nom PxSg2
     V TV Inf
     V* TV Actor N Sg Gen PxSg2
     V* Actor N Sg Gen PxSg2
     V* Actor N Sg Acc PxSg2
     V Inf
     V* TV Actor N Sg Nom PxSg2
     V* Der/d V Ind Prs Sg3
     V* TV Actor N Sg Acc PxSg2

    1: 
     V* IV Der/alla V* Actor N Sg Gen PxSg1
     V* TV Der/alla V* Actor N Sg Acc PxSg1
     V* IV Der/alla V* Actor N Sg Nom PxSg1
     V* TV Der/alla V* Actio N Sg Nom
     V* TV Der/alla V PrfPrc
     V* TV Der/alla V* Actor N Sg Gen PxSg1
     V* TV Der/alla V* Actor N Sg Nom PxSg1
     V* IV Der/alla V* Actio N Sg Nom
     V* IV Der/alla V PrfPrc
     V* IV Der/alla V* Actor N Sg Acc PxSg1

    1: 
     V* Der/l V Ind Prt Sg3
     V* IV Der/l V Ind Prt Sg3

    1: 
     V* TV Der/us N Sg Gen PxSg2
     V* TV Der/us N Sg Acc PxSg2

    1: 
     V* Der/dahtte V* Actor N Sg Nom PxDu1
     V* Der/dahtte V* Actor N Sg Acc PxPl1
     V* Der/dahtte V* Actor N Sg Acc PxDu1
     V* Der/dahtte V* Actio N Sg Gen
     V* Der/dahtte V* Actor N Sg Nom PxPl1
     V* Der/dahtte V* Actio N Pl Nom
     V* Der/dahtte V* Actor N Sg Gen PxDu1
     V* Der/dahtte V* Actor N Sg Gen PxPl1

    1: 
     N Prop Fem Sg Ine
     N Prop Fem Ess

    1: 
     N* Sg Nom Der/ahtes A Pl Nom
     N* Sg Nom Der/ahtes A Sg Gen

    1: 
     V* TV Inch V Ind Prt Sg3
     V* Inch V Ind Prt Sg3

    1: 
     V* TV Actor N* Dim N Sg Ine
     V* TV Actor N* Dim N Ess

    1: 
     V* IV Actio N Sg Acc
     V* TV Actio N Sg Acc

    1: 
     V* TV Actio N Sg Acc PxPl3
     V* TV Actio N Sg Gen PxPl3

    1: 
     V TV Pot Pl2
     V Pot Pl2

    1: 
     V* Pass V* Actor N Pl Nom
     V* Pass V* Actor A Attr
     V* Pass V Imprt Du2
     V* Pass V* Actor N Sg Nom
     V* Pass V* Actor N Sg Gen

    1: 
     V* IV Actor N Ess
     V* TV Actor N Ess
     V* TV Actor N Sg Ine
     V* IV Actor N Sg Ine

    1: 
     V TV Inf
     V* TV Actor N Sg Gen PxSg2
     V* TV Actor N Sg Nom PxSg2
     V* TV Actor N Sg Acc PxSg2
     A Sg Nom

    1: 
     Num Gen
     Num Acc
     Num Nom
     Num Range

    1: 
     V* TV Der/alla V Ind Prt Du2
     V* TV Der/alla V Ind Prt Pl2

    1: 
     Pron Refl Pl Com PxPl1
     Pron Refl Pl Ine PxPl1
     Pron Refl Sg Com PxPl1
     Pron Refl Pl Ine PxDu1
     Pron Refl Pl Com PxDu1
     Pron Refl Sg Com PxDu1

    1: 
     V* TV Der/u/a/år V* Actio N* Sg Nom Der/ahtes A Pl Nom
     V* TV Der/d V* Actio N* Sg Nom Der/ahtes A Pl Nom
     V* TV Der/u/a/år V* Actio N* Sg Nom Der/ahtes A Sg Gen
     V* TV Der/d V* Actio N* Sg Nom Der/ahtes A Sg Gen

    1: 
     V* TV Der/ahtte V* Actio N Ess
     V* TV Der/ahtte V GerII
     V* TV Der/ahtte V* Actio N Sg Ine

    1: 
     V TV Ger
     V IV Ger

    1: 
     V Ind ConNeg
     V Ind Prs Sg2
     V* Actor N Sg Nom
     V Imprt Du2
     V* Actor N Pl Nom
     V* Actor N Sg Gen
     V Imprt ConNeg
     V Imprt Sg2
     V* Actor A Attr
     V VGen

    1: 
     V* TV Inch V Ind Prt Sg1
     V* Inch V Ind Prt Sg1

    1: 
     V* TV Der/us N Pl Ine PxPl3
     V* TV Der/us N Sg Com PxPl3

    1: 
     V* TV Der/dalla V Ind Prs Sg2
     V* TV Pass V Ind Prs Sg2

    1: 
     V* TV Der/u/a/år V* Der/us N Pl Gen
     V* TV Der/u/a/år V* Der/us N Pl Com

    1: 
     V* TV Pass Der/dahtte V Ind Prs Pl3
     V* TV Der/dahtte V Ind Prt Sg2
     V* TV Der/dahtte V Ind Prs Pl3
     V* TV Pass Der/dahtte V Ind Prt Sg2

    1: 
     V* TV Der/dalla V* Actor N Sg Acc PxDu1
     V* TV Pass V* Actor N Sg Acc PxDu1
     V* TV Pass V* Actio N Sg Gen
     V* TV Der/dalla V* Actio N Pl Nom
     V* TV Der/dalla V* Actio N Sg Gen
     V* TV Pass V* Actor N Sg Nom PxDu1
     V* TV Pass V* Actor N Sg Gen PxDu1
     V* TV Der/dalla V* Actor N Sg Acc PxPl1
     V* TV Der/dalla V* Actor N Sg Gen PxPl1
     V* TV Der/dalla V* Actor N Sg Nom PxPl1
     V* TV Pass V* Actio N Pl Nom
     V* TV Pass V* Actor N Sg Nom PxPl1
     V* TV Der/dalla V* Actor N Sg Nom PxDu1
     V* TV Der/dalla V* Actor N Sg Gen PxDu1
     V* TV Pass V* Actor N Sg Gen PxPl1
     V* TV Pass V* Actor N Sg Acc PxPl1

    1: 
     V* TV Der/u/a/år V* Actio N Sg Gen
     V* TV Der/u/a/år V* Actio N Pl Nom
     V* Der/u/a/år V GerII
     V* Der/u/a/år V* Actio N Sg Gen
     V* Der/u/a/år V* Actio N Ess
     V* TV Der/u/a/år V GerII
     V* Der/u/a/år V* Actio N Pl Nom
     V* TV Der/u/a/år V* Actio N Ess

    1: 
     V* Der/d V* Der/us N Pl Ela
     V* Der/u/a/åd V* Der/us N Pl Ela

    1: 
     A Sg Nom PxSg3
     A Sg Gen PxSg3
     Pron Indef Sg Ela
     A Sg Ela
     A Sg Acc PxSg3

    1: 
     V* TV Pass V Ind ConNeg
     V* TV Actor N* Der/dibme A* Der/duvva V Imprt ConNeg
     V* TV Pass V Imprt ConNeg
     V* TV Actor N* Der/dibme A* Der/duvva V Ind ConNeg

    1: 
     V* Pass V Ind Prs Sg2
     V ImprtII ConNeg Sg2
     V* Pass V Ind ConNeg
     V ImprtII ConNeg Pl2
     V Ind Prs Pl3
     V* Pass V VGen
     V* Pass V Ind Prs Sg3
     V* Pass V Imprt Sg2
     V ImprtII Sg2
     V ImprtII ConNeg Du2
     V Ind Prs Sg3
     V Ind Prt Sg2

    1: 
     V* Pass V Ind ConNeg
     V* Pass V Imprt ConNeg

    1: 
     V* TV Der/mus N Pl Nom
     V* Der/mus N Pl Nom
     V* Der/mus N Sg Gen
     V* TV Der/mus N Sg Gen

    1: 
     V TV ImprtII Sg2
     V TV ImprtII ConNeg Sg2
     V* TV Pass V Ind Prs Sg2

    1: 
     N Pl Ela PxPl1
     N Pl Ela PxDu1

    1: 
     V* IV Der/alla V Ind Prs Pl1
     V* TV Der/alla V Ind Prs Pl1

    1: 
     A Sg Com PxSg3
     A Pl Ine PxSg3

    1: 
     N* Der/lasj A Comp Sg Ine
     N* Der/lasj A Comp Ess

    1: 
     V IV Ind Prs Du3
     V TV Ind Prs Du3

    1: 
     V* Actor N Pl Gen
     V* Actor N Pl Com
     V Ind Prt Sg3

    1: 
     V* IV Der/alla V Ind Prt Pl3
     V* TV Der/alla V Ind Prs Du1
     V* IV Der/alla V Ind Prs Du1
     V* TV Der/alla V Ind Prt Pl3

    1: 
     N Sg Gen PxPl3
     N Sg Acc PxPl3
     N Sg Nom PxPl3

    1: 
     V* IV Inch V Ind Prt Pl3
     V* IV Inch V Ind Prs Du1

    1: 
     A Sg Acc PxSg2
     A Sg Nom PxSg2
     A Sg Gen PxSg2

    1: 
     V* TV Der/dahtte V ImprtII Sg3
     V* TV Pass Der/dahtte V ImprtII Sg3

    1: 
     V* TV Der/u/a/år V* Actio N Sg Com
     V* TV Der/d V* Actio N Pl Ine
     V* TV Der/u/a/år V* Actio N Pl Ine
     V* TV Der/d V* Actio N Sg Com

    1: 
     V* Der/u/a/åd V* Der/us N Sg Acc
     V* Der/d V* Der/us N Sg Acc

    1: 
     V* TV Der/dahtte V VAbess
     V* TV Pass Der/dahtte V VAbess

    1: 
     Po Gen
     N Sg Gen
     N Pl Nom

    1: 
     A* Der/duvva V Ind ConNeg
     A* Der/duvva V VGen
     A* Der/duvva V Imprt ConNeg
     A* Der/duvva V Imprt Sg2
     A* Der/duvva V Ind Prs Sg2

    1: 
     V* TV Pass Der/dahtte V VGen
     V* TV Pass Der/dahtte V Ind ConNeg
     V* TV Pass Der/dahtte V Imprt Sg2
     V* TV Pass Der/dahtte V Imprt ConNeg

    1: 
     V* TV Der/dalla V Pot Sg1
     V* TV Pass V Pot Sg1

    1: 
     N Sg Nom PxDu2
     N Sg Gen PxDu2
     N Sg Acc PxPl2
     N Abess
     N Sg Nom PxPl2
     N Sg Gen PxPl2
     N Sg Acc PxDu2

    1: 
     V* IV Actor N Sg Nom PxDu1
     V* IV Actor N Sg Acc PxDu1
     V* IV Actor N Sg Acc PxPl1
     V* IV Actor N Sg Gen PxDu1
     V* IV Actor N Sg Gen PxPl1
     V* IV Actio N Pl Nom
     V* IV Actio N Sg Gen
     V* IV Actor N Sg Nom PxPl1

    1: 
     V* TV Der/u/a/år V* Actor N Pl Gen
     V* TV Der/u/a/år V* Actor N Pl Com

    1: 
     V* TV Der/l V* Der/us N* Dim N Sg Nom
     V* TV Der/l V* Der/us N Sg Nom
     V* TV Der/l V ImprtII Sg3

    1: 
     V IV ImprtII Sg3
     V* IV Der/us N Sg Nom
     V* IV Der/us N* Dim N Sg Nom

    1: 
     V* TV Der/l V* Actio N Pl Gen
     V* TV Der/l V* Actio N Pl Com

    1: 
     V* TV Der/u/a/år V* Der/us N Sg Ine
     V* TV Der/d V* Der/us N Sg Ine

    1: 
     V* TV Pass V Ind Prt Sg2
     V* TV Der/dalla V Ind Prs Pl3
     V* Der/dalla V Ind Prs Pl3
     V* TV Pass V Ind Prs Pl3
     V* Pass V Ind Prt Sg2
     V* TV Der/dalla V Ind Prt Sg2
     V* Pass V Ind Prs Pl3
     V* Der/dalla V Ind Prt Sg2

    1: 
     V* IV Der/d V Ind Prs Pl3
     V* IV Der/d V Ind Prt Sg2
     V* IV Der/u/a/år V Ind Prt Sg2
     V* IV Der/u/a/år V Ind Prs Pl3

    1: 
     V* TV Der/l V Ind Prt Pl2
     V* TV Der/l V Ind Prt Du2

    1: 
     V* TV Der/u/a/år V* Der/us N Sg Nom
     V* TV Der/u/a/år V ImprtII Sg3
     V* TV Der/u/a/år V* Der/us N* Dim N Sg Nom

    1: 
     V* Actor N Sg Nom
     V* Actor N Pl Nom
     V* TV Actor N Sg Gen
     V* Actor N Sg Gen
     V* TV Actor N Pl Nom
     V* Actor A Attr
     V* TV Actor A Attr
     V* TV Actor N Sg Nom

    1: 
     Po Ess
     N Ess

    1: 
     V* TV Der/st V ImprtII Sg3
     V* TV Der/st V* Der/us N* Dim N Sg Nom
     V* TV Der/st V* Der/us N Sg Nom

    1: 
     V* TV Der/d V* Actio N Pl Nom
     V* TV Der/d V* Actio N Ess
     V* TV Der/u/a/år V* Actio N Sg Gen
     V* TV Der/u/a/år V* Actio N Pl Nom
     V* TV Der/d V* Actio N Sg Gen
     V* TV Der/u/a/år V* Actio N Ess

    1: 
     V* TV Pass V ImprtII ConNeg Sg2
     V* TV Pass V ImprtII ConNeg Du2
     V* TV Pass V ImprtII ConNeg Pl2

    1: 
     V* IV Actor N Sg Gen PxSg2
     V TV Inf
     V* TV Actor N Sg Gen PxSg2
     V IV Inf
     V* IV Actor N Sg Nom PxSg2
     V* TV Actor N Sg Nom PxSg2
     V* TV Actor N Sg Acc PxSg2
     V* IV Actor N Sg Acc PxSg2

    1: 
     V* Pass V* Actor N Sg Acc PxDu1
     V* Pass V* Actor N Sg Gen PxDu1
     V* Pass V* Actio N Sg Gen
     V* Pass V* Actio N Pl Nom
     V* Pass V* Actor N Sg Acc PxPl1
     V* Pass V* Actor N Sg Gen PxPl1
     V* Pass V* Actor N Sg Nom PxDu1
     V* Pass V* Actor N Sg Nom PxPl1

    1: 
     V* TV Der/l V Imprt Du3
     V* TV Der/l V Imprt Pl3

    1: 
     V* TV Actor N* Der/dibme A* Der/duvva V* Actor N Sg Acc PxSg2
     V* TV Actor N* Der/dibme A* Der/duvva V* Actor N Sg Gen PxSg2
     V* TV Actor N* Der/dibme A* Der/duvva V* Actor N Sg Nom PxSg2
     V* TV Actor N* Der/dibme A* Der/duvva V Inf

    1: 
     V* TV Der/u/a/år V* Der/us N Pl Ela
     V* TV Der/d V* Der/us N Pl Ela

    1: 
     V Inf
     V IV Inf

    1: 
     V* TV Der/alla V* Actor N Sg Nom PxSg2
     V* IV Der/alla V* Actor N Sg Gen PxSg2
     V* TV Der/alla V Inf
     V* IV Der/alla V* Actor N Sg Nom PxSg2
     V* TV Der/alla V* Actor N Sg Acc PxSg2
     V* IV Der/alla V* Actor N Sg Acc PxSg2
     V* IV Der/alla V Inf
     V* TV Der/alla V* Actor N Sg Gen PxSg2

    1: 
     V* TV Der/stalla V* Actio N Pl Gen
     V* TV Der/stalla V* Actio N Pl Com
     V* TV Der/stalla V* Actio N Sg Ill

    1: 
     V TV Pot Pl1
     V Pot Pl1

    1: 
     N Sg Nom PxDu2
     N Sg Gen PxDu2
     N Sg Acc PxPl2
     N Sg Nom PxPl2
     N Sg Gen PxPl2
     N Sg Acc PxDu2

    1: 
     V* TV Inch V Ind Prt Du2
     V* TV Inch V Ind Prt Pl2

    1: 
     A Comp Pl Gen
     A Comp Pl Com

    1: 
     V* TV Der/d V Ind Prs Du2
     V* TV Der/u/a/år V Ind Prs Du2

    1: 
     V* IV Der/asste V Ind Prt Pl3
     V* IV Der/asste V Ind Prs Du1

    1: 
     V* TV Der/u/a/år V Ind Prt Pl1
     V* TV Der/u/a/år V Ind Prt Du1

    1: 
     V IV Ger
     V Ger

    1: 
     V* Der/d V Ind Prt Sg1
     V* Der/u/a/åd V Ind Prt Sg1

    1: 
     N* Der/dibme A* Der/vuohta N Sg Com
     N* Der/dibme A* Der/vuohta N Pl Ine

    1: 
     V* TV Actio N* Der/ahtes A Ess
     V* TV Actio N* Der/ahtes A Sg Ine

    1: 
     V* TV Der/st V* Der/us N Sg Acc PxSg3
     V* TV Der/st V* Der/us N Sg Ela
     V* TV Der/st V* Der/us N Sg Gen PxSg3

    1: 
     V* IV Actio N Sg Ill
     V* IV Actio N Pl Gen
     V* IV Actio N Pl Com

    1: 
     V TV ImprtII Sg2
     V TV ImprtII ConNeg Sg2

    1: 
     V* Der/u/a/åd V* Actio N Pl Ela
     V* Der/d V* Actio N Pl Ela

    1: 
     V* TV Actor N* Der/dibme A Sg Com
     V* TV Actor N* Der/dibme A Pl Ine

    1: 
     V* TV Pass Der/dahtte V Ind Prt Sg1
     V* TV Der/dahtte V Ind Prt Sg1

    1: 
     V* IV Der/alla V* Actor N Sg Gen PxSg1
     V* IV Der/alla V* Actor N Sg Nom PxSg1
     V* IV Der/alla V* Actio N Sg Nom
     V* IV Der/alla V* Actor N Sg Acc PxSg1
     V* IV Der/alla V PrfPrc

    1: 
     V* TV Der/u/a/år V Ind Prs Pl3
     V* Der/u/a/år V Ind Prt Sg2
     V* TV Der/u/a/år V Ind Prt Sg2
     V* Der/u/a/år V Ind Prs Pl3

    1: 
     V TV Imprt Du2
     V IV Imprt Du2

    1: 
     V* TV Actor N* Der/dibme A* Der/duvva V PrfPrc
     V* TV Actor N* Der/dibme A* Der/duvva V* Actio N Sg Nom
     V* TV Actor N* Der/dibme A* Der/duvva V* Actor N Sg Gen PxSg1
     V* TV Actor N* Der/dibme A* Der/duvva V* Actor N Sg Acc PxSg1
     V* TV Actor N* Der/dibme A* Der/duvva V* Actor N Sg Nom PxSg1

    1: 
     V* Actio N Ess
     V GerII
     V* IV Actio N Sg Ine
     V IV GerII
     V* IV Actio N Ess
     V* Actio N Sg Ine

    1: 
     A* Der/duvva V* Actio N Sg Nom
     A* Der/duvva V* Actor N Sg Acc PxSg1
     A* Der/duvva V* Actor N Sg Nom PxSg1
     A* Der/duvva V* Actor N Sg Gen PxSg1
     A* Der/duvva V PrfPrc

    1: 
     V* TV Der/st V Ind Prt Pl2
     V* TV Der/st V Ind Prt Du2

    1: 
     V TV Ind Prt Du3
     V Ind Prt Du3

    1: 
     V TV Imprt Du3
     V IV Imprt Pl3
     V IV Imprt Du3
     V TV Imprt Pl3

    1: 
     V* TV Actor N* Dim N Sg Nom PxSg3
     V* TV Actor N* Dim N Sg Gen PxSg3
     V* TV Actor N* Dim N Sg Acc PxSg3
     V* TV Actor N* Dim N Sg Ela

    1: 
     V* IV Der/ahtte V Inf
     V* IV Der/ahtte V* Actor N Sg Gen PxSg2
     V* IV Der/ahtte V* Actor N Sg Nom PxSg2
     V* IV Der/ahtte V* Actor N Sg Acc PxSg2

    1: 
     V* IV Der/ahtte V Ind Prs Sg3
     V* TV Der/ahtte V Ind Prs Sg3

    1: 
     A* Attr Der/lágásj A Pl Nom
     A* Attr Der/lágásj A Sg Gen

    1: 
     V* TV Pass V Ind Prt Sg2
     V* TV Pass V Ind Prs Pl3
     V* Pass V Ind Prt Sg2
     V* Pass V Ind Prs Pl3

    1: 
     V* IV Der/ahtte V Ind Prs Du1
     V* IV Der/ahtte V Ind Prt Pl3

    1: 
     A* Attr Der/mielak A Sg Gen
     A* Attr Der/mielak A Pl Nom

    1: 
     N* Der/ahtes A Sg Acc PxSg1
     N* Der/ahtes A Sg Nom PxSg1
     N* Der/ahtes A Sg Gen PxSg1

    1: 
     A* Attr Der/vájmuk A Sg Gen
     A* Attr Der/vájmuk A Pl Nom

    1: 
     V* Der/u/a/åd V* Actio N Sg Acc
     V* Der/d V* Actio N Sg Acc

    1: 
     V* TV Der/st V* Der/us N Sg Com PxPl3
     V* TV Der/st V* Der/us N Pl Ine PxPl3

    1: 
     V* TV Der/dahka N Sg Acc PxSg3
     V* TV Der/dahka N Sg Gen PxSg3
     V* TV Der/dahka N Sg Ela

    1: 
     N Prop Plc Pl Com
     N Prop Sur Sg Ill
     N Prop Sur Pl Com
     N Prop Plc Sg Ill
     N Prop Plc Pl Gen
     N Prop Sur Pl Gen

    1: 
     N Prop Sur Pl Ine
     N Prop Sur Sg Com

    1: 
     V TV Ind Prs Du2
     V Ind Prs Du2

    1: 
     V* TV Der/dahtte V* Actor N Sg Nom PxSg2
     V* TV Der/dahtte V* Actor N Sg Gen PxSg2
     V* TV Der/dahtte V* Actor N Sg Acc PxSg2
     V* TV Der/dahtte V Inf

    1: 
     V* IV Der/d V Ind Prs Sg2
     V* IV Der/u/a/år V Ind Prs Sg2
     V* IV Der/u/a/år V Imprt Sg2
     V* IV Der/u/a/år V Ind ConNeg
     V* IV Der/d V Imprt Sg2
     V* IV Der/d V VGen
     V* IV Der/u/a/år V VGen
     V* IV Der/d V Ind ConNeg

    1: 
     V* TV Der/mus N Sg Com
     V* TV Der/mus N Pl Ine

    1: 
     N Prop Ani Pl Gen
     N Prop Ani Pl Com
     N Prop Ani Sg Ill

    1: 
     V* IV Der/l V Inf
     V* IV Der/l V Imprt Pl2

    1: 
     N Pl Ine PxPl1
     N Sg Com PxPl1
     N Sg Com PxDu1
     N Pl Ine PxDu1

    1: 
     A Ess
     A Sg Ine
     N Ess

    1: 
     V* TV Pass Der/duhtte V* Actor N Sg Nom PxSg2
     V* TV Pass Der/duhtte V* Actor N Sg Acc PxSg2
     V* TV Pass Der/duhtte V* Actor N Sg Gen PxSg2
     V* TV Pass Der/duhtte V Inf

    1: 
     V* TV Der/dalla V* Actio N Pl Com
     V* TV Der/dalla V* Actio N Sg Ill
     V* TV Pass V* Actio N Sg Ill
     V* TV Der/dalla V* Actio N Pl Gen
     V* TV Pass V* Actio N Pl Gen
     V* TV Pass V* Actio N Pl Com

    1: 
     N Sg Com PxSg1
     N Pl Ine PxSg1

    1: 
     V* TV Der/u/a/år V ImprtII Pl1
     V* TV Der/d V ImprtII Pl1

    1: 
     V* TV Actor N Sg Nom PxSg1
     V* Actor N Sg Acc PxSg1
     V* TV Actor N Sg Gen PxSg1
     V* TV Actor N Sg Acc PxSg1
     V* Actor N Sg Nom PxSg1
     V* Actor N Sg Gen PxSg1
     V* Actio N Sg Nom
     V* TV Actio N Sg Nom

    1: 
     V* IV Actio N Sg Com
     V* IV Actio N Pl Ine

    1: 
     V* Der/d V* Actio N Sg Ela
     V* Der/u/a/åd V* Actio N Sg Ela
     V* Der/d V* Actio N Sg Acc PxSg3
     V* Der/u/a/åd V* Actio N Sg Gen PxSg3
     V* Der/u/a/åd V* Actio N Sg Acc PxSg3
     V* Der/d V* Actio N Sg Gen PxSg3

    1: 
     V* Der/d V* Actor N Sg Ine
     V* Der/u/a/åd V* Actor N Sg Ine
     V* Der/u/a/åd V* Actor N Ess
     V* Der/d V* Actor N Ess

    1: 
     V* TV Der/d V Ind Prt Pl1
     V* TV Der/d V Ind Prt Du1

    1: 
     V* Pass V Sup
     V Sup

    1: 
     V* IV Der/ahtte V Ind ConNeg
     V* IV Der/ahtte V Imprt ConNeg
     V* IV Der/ahtte V Imprt Sg2
     V* IV Der/ahtte V VGen

    1: 
     V* TV Der/us N Sg Gen PxSg1
     V* TV Der/us N Sg Acc PxSg1

    1: 
     V* TV Der/d V* Actor N Sg Gen PxSg3
     V* TV Der/d V* Actor N Sg Nom PxSg3
     V* TV Der/d V* Actor N Sg Acc PxSg3
     V* TV Der/d V* Actor N Sg Ela

    1: 
     V* TV Der/l V ImprtII ConNeg Sg2
     V* TV Der/l V ImprtII ConNeg Du2
     V* TV Der/l V ImprtII ConNeg Pl2
     V* TV Der/l V ImprtII Sg2

    1: 
     V* TV Der/l V* Actio N Sg Ela
     V* TV Der/l V* Actio N Sg Gen PxSg3
     V* TV Der/l V* Actio N Sg Acc PxSg3

    1: 
     V* Der/dalla V Ind Prt Pl2
     V* Der/dalla V Ind Prt Du2

    1: 
     V* Pass V* Actio N Sg Ine
     V* Pass V* Actio N Ess
     V* Pass V GerII

    1: 
     A Superl Sg Gen PxSg3
     A Superl Sg Ela
     A Superl Sg Acc PxSg3

    1: 
     Pron Refl Sg Gen PxDu3
     Pron Refl Sg Acc PxDu3

    1: 
     V* TV Der/lis A Sg Gen
     V* TV Der/lis A Pl Nom

    1: 
     V* TV Der/l V* Der/us N Pl Nom
     V* TV Der/l V* Der/us N Sg Gen
     V* TV Der/l V ImprtII Pl3

    1: 
     N* Der/dibme A* Der/duvva V Ind ConNeg
     N* Der/dibme A* Der/duvva V Imprt ConNeg

    1: 
     V* TV Actor N Sg Acc
     V* IV Actor N Sg Acc

    1: 
     Pron Rel Sg Acc Clt
     Pron Interr Sg Acc Clt

    1: 
     V VAbess
     V TV VAbess

    1: 
     V* Der/u/a/åd V* Actor N Sg Ill
     V* Der/d V* Actor N Sg Ill

    1: 
     V* IV Actio N Sg Ine
     V* TV Actio N Sg Ine

    1: 
     V* IV Der/d V Ind Prs Pl3
     V* Der/d V Ind Prt Sg2
     V* IV Der/d V Ind Prt Sg2
     V* Der/d V Ind Prs Pl3

    1: 
     V* Der/u/a/åd V ImprtII Pl3
     V* Der/d V* Der/us N Pl Nom
     V* Der/u/a/åd V* Der/us N Sg Gen
     V* Der/u/a/åd V* Der/us N Pl Nom
     V* Der/d V ImprtII Pl3
     V* Der/d V* Der/us N Sg Gen

    1: 
     V* TV Der/u/a/år V ImprtII ConNeg Du2
     V* TV Der/u/a/år V ImprtII ConNeg Sg2
     V* TV Der/u/a/år V ImprtII ConNeg Pl2
     V* TV Der/u/a/år V ImprtII Sg2

    1: 
     V* IV Pass V* Actio N Sg Nom
     V* IV Pass V PrfPrc
     V IV PrfPrc

    1: 
     N Sg Acc PxDu3
     N Sg Gen PxDu3
     N Sg Nom PxDu3

    1: 
     N Sg Nom PxSg2
     A Sg Nom PxSg2

    1: 
     Pron Refl Sg Ill PxPl1
     Pron Refl Sg Ill PxDu1

    1: 
     V* Inch V Ind Prs Du1
     V* TV Inch V Ind Prt Pl3
     V* TV Inch V Ind Prs Du1
     V* Inch V Ind Prt Pl3

    1: 
     V TV Ind Prt Pl2
     V IV Ind Prt Pl2

    1: 
     V* Der/u/a/åd V* Actor N Pl Acc
     V* Der/d V* Actor N Pl Acc

    1: 
     V TV Inf
     Adv

    1: 
     V* IV Pass V Ind Prs Du1
     V* IV Pass V Ind Prt Pl3

    1: 
     V ImprtII ConNeg Sg2
     V ImprtII Sg2
     V ImprtII ConNeg Pl2
     V ImprtII ConNeg Du2

    1: 
     V TV Pot Sg3
     V IV Pot Sg3

    1: 
     V IV VAbess
     V TV VAbess

    1: 
     V* TV Pass V Ind Prt Sg2
     V* IV Pass V Ind Prt Sg2
     V* TV Pass V Ind Prs Pl3
     V* IV Pass V Ind Prs Pl3

    1: 
     V* IV Der/d V Ind Prs Pl3
     V* IV Der/d V Ind Prt Sg2

    1: 
     V* Der/u/a/åd V Ind Prt Du3
     V* Der/d V Ind Prt Du3

    1: 
     V* TV Der/l V Imprt Pl1
     V* TV Der/l V Ind Prs Pl1

    1: 
     V* Der/u/a/åd V Ind Prs Pl1
     V* Der/u/a/åd V Imprt Pl1
     V* Der/d V Ind Prs Pl1
     V* Der/d V Imprt Pl1

    1: 
     V Pot ConNeg
     V TV Pot ConNeg
     V Pot Sg2
     V TV Pot Sg2

    1: 
     V* Der/r N Pl Com
     V* Der/r N Pl Gen
     V* Der/r N Sg Ill

    1: 
     N* Dim N Pl Ine
     N* Dim N Sg Com

    1: 
     A* Der/duvva V Ind Prs Du1
     A* Der/duvva V Ind Prt Pl3

    1: 
     N* Dim N Sg Gen PxSg2
     N* Dim N Sg Acc PxSg2

    1: 
     V* TV Actio N* Sg Nom Der/ahtes A Sg Gen
     V* TV Actio N* Sg Nom Der/ahtes A Pl Nom

    1: 
     A Sg Nom PxSg3
     A Attr

    1: 
     V* TV Der/u/a/år V VAbess
     V* TV Der/d V VAbess

    1: 
     V* TV Der/us N Sg Acc PxDu3
     V* TV Der/us N Sg Gen PxDu3

    1: 
     V* TV Pass Der/duhtte V ImprtII Sg2
     V* TV Pass Der/duhtte V ImprtII ConNeg Sg2
     V* TV Pass Der/duhtte V ImprtII ConNeg Du2
     V* TV Pass Der/duhtte V ImprtII ConNeg Pl2

    1: 
     V IV Imprt ConNeg
     V IV VGen
     V IV Ind ConNeg
     V IV Imprt Sg2

    1: 
     V* TV Der/d V Ind Prt Pl2
     V* TV Der/d V Ind Prt Du2

    1: 
     V* TV Der/u/a/år V Imprt Pl3
     V* TV Der/u/a/år V Imprt Du3

    1: 
     V* TV Pass V* Inch V Ind Prs Sg2
     V* TV Der/dalla V* Inch V Ind Prs Sg2
     
        
