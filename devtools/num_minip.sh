#!/bin/bash

# script to generate paradigms for generating word forms
# command:
# sh generate_contlex_para.sh PATTERN
# example, when you are in smj:
# sh devtools/noun_minip.sh GÅNÅGIS | less
# sh devtools/noun_minip.sh tjielggidus 
# Only get the lemma you ask for:
# sh devtools/noun_minip.sh '^tjielggidus[:+]' 


LOOKUP=$(echo $HLOOKUP)
GTLANGS=$(echo $GTLANGS)


PATTERN=$1
L_FILE="in.txt"
cat src/fst/morphology/test/numeraler.txt >$L_FILE

P_FILE="src/fst/morphology/test/testnumparadigm.txt"

for lemma in $(cat $L_FILE);
do
 for form in $(cat $P_FILE);
 do
   echo "${lemma}${form}" | $LOOKUP $GTLANGS/lang-smj/src/fst/generator-gt-norm.hfstol
 done
 rm -f $L_FILE
done

