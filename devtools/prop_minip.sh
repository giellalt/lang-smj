#!/bin/bash

# script to generate paradigms for generating word forms
# command:
# sh generate_contlex_para.sh PATTERN
# example, when you are in smj:
# sh devtools/prop_minip.sh VUONA | dsmjNorm | less
# sh devtools/prop_minip.sh Hirškikkâ | dsmjNorm 


LOOKUP=$(echo $HLOOKUP)
GTLANGS=$(echo $GTLANGS)

PATTERN=$1
L_FILE="in.txt"
cut -d '!' -f1 src/fst/morphology/stems/smj-propernouns.lexc | grep $PATTERN | grep -v Err | cut -d ':' -f1 | tr -d '%'>$L_FILE

P_FILE="test/data/testpropparadigm.txt"

for lemma in $(cat $L_FILE);
do
 for form in $(cat $P_FILE);
 do
   echo "${lemma}${form}" | $LOOKUP $GTLANGS/lang-smj/src/fst/generator-gt-norm.hfstol
 done
 rm -f $L_FILE
done

