#!/bin/bash

# script to generate paradigms for generating word forms
# command:
# sh cmp_minip.sh PATTERN
# example, when you are in smj:
# sh devtools/cmp_minip.sh '^nieidâ:' 
# sh devtools/noun_minip.sh LAAVU | less


LOOKUP=$(echo $HLOOKUP)
GTLANGS=$(echo $GTLANGS)


PATTERN=$1
L_FILE="in.txt"
cut -d '!' -f1 src/fst/morphology/stems/nouns.lexc | egrep $PATTERN | grep -v Err| cut -d ':' -f1>$L_FILE

P_FILE="src/fst/morphology/test/cmp_paradigm.txt"

for lemma in $(cat $L_FILE);
do
 for form in $(cat $P_FILE);
 do
   echo "${lemma}${form}" | $LOOKUP $GTLANGS/lang-smj/src/fst/generator-gt-norm.hfstol
 done
 rm -f $L_FILE
done

