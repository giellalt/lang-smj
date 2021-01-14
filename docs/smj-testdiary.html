Test results for the morphology and lexicon files
=================================================

This document contains test results for the Lule Saami parser. We will
move to an automatic test regime, but while waiting, the first initial
steps will be documented here.

Test results for the lexicon
----------------------------

The following table records recall for word forms in various texts. Here
we measure coverage of the vocabulary, by recording all word forms that
are not recognised.

    -----------------------------------------------------------------------------------
    zcorp/gt/smj/bible/nt/lule_sami_new_testament.html.xml
                   Token recall testing       Type recall testing
    -----------------------------------------------------------------------------------
    Test 1   lex Wf-total   Wf-tkn  %-recall Tytot  Wf-typ %-recall
    070627         120070   119752   99,7 %                                            
    060228 19742   135662   131212   96,7 %  13289   11831   89,0 % ← 978 inc missing.
    060228 18307   135662   125367   92,4 %  13289   11385   85,7 % ← More rare words.
    060227 17997   135662   123368   90,1 %  13289    9938   74,8 % ← More Kintel, äöŋ fix
    060226 17723   135662   108573   80,0 %  13289    8952   67,4 % ← More Kintel
    060222         135662    82748   70,0 %  13289    2195   16,5 % ← First Kintel import
    060124  3368   135662    75018   55,3 %  13289    2084   15,6 % ← Still no lexicon
    ----------------------------------------------------------------------------------

Lower token than type percentage indicates that the parser misses common
words more often than seldom ones. Lower type than token percentage
(which is the case) indicates that the parser is good at the core
vocabulary, but has lower coverage of more seldom words.

Each text is given a separate section in the table, ordered
chronologically, with the oldest test case (Test 1) at the bottom. The
first line of each section gives the name of the file. Each line
represents a test run. The first colum gives the test date (in the
format ddmmyy), the second (WFtot) the total number of words in the file
question, the third (Wf-tkn) the number of recognised word form tokens,
and the percentage compared to the total. The next columns does the same
for wordform types (cf. below for the commands used to calculate the
numbers).

Test 1 does not cover proper nouns, as they are not added to the lexicon
yet. The commands used to get the numbers are:

-   **The file command (below referred to as *ccat file*:**  
    ccat zcorp/gt/smj/bible/nt/lule\_sami\_new\_testament.html.xml \|
    ...
-   **Wftot (total number of wordform types):**  
    ccat file \| preprocess \| grep -v '^\[A-Z\]' \| wc -l
-   **Wf-tkn (total number of wordform tokens):**  
    Wftot - Non\_recognised\_wf
-   **Non\_recognised\_wf::**  
    ccat zcorp/gt/smj/bible/nt/lule\_sami\_new\_testament.html.xml \|
    preprocess \| grep -v '^\[A-Z\]' \| lookup -flags mbTT -utf8
    bin/smj.fst \| grep '\\?' \| grep '\[a-z\]' \| wc -l
-   **Wf-tkn =:**  
    Wftot - Non\_recognised\_wf
-   **%-recall =:**  
    Wf-tkn \* 100 / Wftot
-   **Tytot (Total number of wordform types)::**  
    ccat file \| preprocess \| grep -v '^\[A-Z\]' \| sort \| uniq \| wc
    -l
-   **Non\_recognised\_wt (Number of non-analysed wordform types::**  
    ccat file \| preprocess \| sort \| uniq \|lookup -flags mbTT -utf8
    bin/smj.fst \| grep '\\?' \| grep -v CLB \| wc -l
-   **Wf-typ (Number of recognised wordform types) =:**  
    Tytot - Non\_recognised\_wt
-   **%-recall =:**  
    Wf-typ \* 100 / Tytot
