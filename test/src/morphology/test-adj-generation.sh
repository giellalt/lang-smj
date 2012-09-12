#!/bin/bash

# Dette skriptet tester at nesten alle lemmaene i
# $GTHOME/newinfra/langs/sma/src/morphology/stems/adjectives.lexc kan genereres.
# De som ikke kan genereres, kopieres til missingAdjLemmas.txt

###### Variables: #######
sourcefile=${srcdir}/../../../src/morphology/stems/adjectives.lexc
generatorfile=${srcdir}/../../../src/generator.gt
resultfile=missingAdjLemmas.txt

# Check that the source file exists:
if [ ! -f "$sourcefile" ]; then
	echo Source file not found: $sourcefile
	exit 1
fi

###### Extraction: #######
### Regular adjectives:
grep ";" $sourcefile | grep -v "^\!" \
	| egrep -v "(PRED|CASE| MES|EVTEBE)" | tr ":+\t" " " | cut -d " " -f1 \
	| tr -d "#" | sort -u > adjs
### Adjectives with no attr form, ie only pred form:
grep ";" $sourcefile | grep -v "^\!" \
	| egrep "(PRED|CASE)" | tr ":+\t" " " | cut -d " " -f1 | tr -d "#" \
	| sort -u > predadjs
### Adjectives with only comparative forms:
grep ";" $sourcefile | grep -v "^\!" \
	| grep "EVTEBE" | tr ":+\t" " " | cut -d " " -f1 | tr -d "#" \
	| sort -u > compladjs
### Adjectives with only superlative forms:
grep ";" $sourcefile | grep -v "^\!" \
	| grep " MES" | tr ":+\t" " " | cut -d " " -f1 | tr -d "#" \
	| sort -u > superladjs

###### Start testing: #######
transducer_found=0
Fail=0

for f in  .xfst .hfst; do
	if [ $f == ".xfst" ]; then
		lookuptool="lookup -q -flags mbTT"
#		echo "Xerox test"
	else
		lookuptool="hfst-lookup -q"
#		echo "Hfst test"
	fi
	if [ -f "$generatorfile$f" ]; then
		let "transducer_found += 1"

# Remove old generated files - don't mix Xerox and HFST test results:
		rm -f analadjs

#### First we try to generate the regular adjectives:
		sed 's/$/+A+Attr/' adjs | $lookuptool $generatorfile$f \
			| cut -f2 | grep -v "A+" | grep -v "^$" | sort -u > analadjs 

#### Then we try to generate the predicate-only adjectives:
		sed 's/$/+A+Sg+Nom/' predadjs \
			| $lookuptool $generatorfile$f | cut -f2 \
			| grep -v "A+" | grep -v "^$" | sort -u >> analadjs 

#### Then we try to generate the predicate-only adjectives:
		sed 's/$/+A+Superl+Sg+Nom/' superladjs \
			| $lookuptool $generatorfile$f | cut -f2 \
			| grep -v "A+" | grep -v "^$" | sort -u >> analadjs 

#### Then we try to generate the predicate-only adjectives:
		sed 's/$/+A+Comp+Sg+Nom/' compladjs \
			| $lookuptool $generatorfile$f | cut -f2 \
			| grep -v "A+" | grep -v "^$" | sort -u >> analadjs 

		cat predadjs superladjs compladjs >> adjs
		sort -u -o adjs adjs 
		sort -u -o analadjs analadjs 
		comm -23 adjs analadjs > $resultfile
		rm -f *adjs

		# if at least one word is found, the test failed, and the list of failed
		# lemmas is opened in SubEthaEdit:
		if [ `wc -w $resultfile | tr -s ' ' | cut -d' ' -f2` -gt 0 ]
		then
			see $resultfile
		    Fail=1
		fi
#	else
#		echo Transducer not found: $generatorfile$f
	fi
done

# At least one of the Xerox or HFST tests failed:
if [ "$Fail" = "1" ]; then
	exit 1
fi

if [ $transducer_found -eq 0 ]; then
    echo No transducer found
    exit 1
fi
