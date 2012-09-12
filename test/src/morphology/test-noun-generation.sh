#!/bin/bash

# Dette skriptet tester at nesten alle lemmaene i noun-sma-lex.txt kan genereres.
# De som ikke kan genereres, kopieres til missingNounLemmas.txt

###### Variables: #######
sourcefile=${srcdir}/../../../src/morphology/stems/nouns.lexc
generatorfile=${srcdir}/../../../src/generator.gt
resultfile=missingNounLemmas

# Check that the source file exists:
if [ ! -f "$sourcefile" ]; then
	echo Source file not found: $sourcefile
	exit 1
fi

###### Extraction: #######
# extract non-compounding lemmas:
grep ";" $sourcefile | grep -v "^\!" \
	| egrep -v '(CmpN/Only|+Gen+|+Der+| R )' | sed 's/% /€/g' | sed 's/%:/¢/g' \
	| tr ":+\t" " " | cut -d " " -f1 | tr -d "#" | tr "€" " " | tr "¢" ":" \
	| sort -u | grep -v '^$' > nouns.txt
# extract compounding lemmas:
grep ";" $sourcefile | grep -v "^\!" \
	| grep ' R '| tr ":+\t" " " | cut -d " " -f1 | tr -d "#" \
	| sort -u > Rnouns.txt

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
		rm -f *analnouns.txt

###### Test non-comopunds: #######
		# generate nouns in Singular, extract the resulting generated lemma,
		# store it:
		sed 's/$/+N+Sg+Nom/' nouns.txt | $lookuptool $generatorfile$f \
			| cut -f2 | grep -v "N+" | grep -v "^$" | sort -u > analnouns.txt 
		# Generate nouns, extract those that do not generate in singular,
		# generate the rest in plural:
		sed 's/$/+N+Sg+Nom/' nouns.txt | $lookuptool $generatorfile$f \
			| cut -f2 | grep "N+" | cut -d "+" -f1 | sed 's/$/+N+Pl+Nom/' \
			| $lookuptool $generatorfile$f | cut -f2 \
			| grep -v "^$" >> analnouns.txt 

###### Test comopunds: #######
		# Test nouns that only can generate as compounds:
		grep ";" $sourcefile \
			| grep -v "^\!" | grep ' R '| cut -d ":" -f1 | sed 's/+Use\/Sub//' \
			| sed 's/+Dial\/-SW//' | sed 's/+Dial\/-NOR//' \
			| sed 's/+CmpN\/Pref//' | sed 's/CmpN\/SgN$/Cmp#gåetie+N+Sg+Nom/' \
			| sed 's/CmpN\/PlG$/Cmp#gåetie+N+Sg+Nom/' \
			| $lookuptool $generatorfile$f | cut -f2 | grep "\-" \
			| grep -v "\-.*\-" | cut -d "-" -f1 > Ranalnouns.txt
		grep ";" $sourcefile \
			| grep -v "^\!" | grep ' R '| cut -d ":" -f1 | sed 's/+Use\/Sub//' \
			| sed 's/+Dial\/-SW//' | sed 's/+Dial\/-NOR//' \
			| sed 's/+CmpN\/Pref//' | sed 's/CmpN\/SgN$/Cmp#gåetie+N+Sg+Nom/' \
			| sed 's/CmpN\/PlG$/Cmp#gåetie+N+Sg+Nom/' \
			| $lookuptool $generatorfile$f | cut -f2 | grep "\-" \
			| grep "\-.*\-" | cut -d "-" -f1,2 >> Ranalnouns.txt

###### Collect results: #######
		# Sort and compare original input with resulting output - the diff is
		# stored and opened in SEE:
		sort -u -o analnouns.txt analnouns.txt 
		sort -u -o Ranalnouns.txt Ranalnouns.txt 
		comm -23 nouns.txt analnouns.txt > $resultfile$f.txt
		comm -23 Rnouns.txt Ranalnouns.txt >> $resultfile$f.txt
		rm -f *nouns.txt

		# if at least one word is found, the test failed, and the list of failed
		# lemmas is opened in SubEthaEdit:
		if [ `wc -w $resultfile$f.txt | tr -s ' ' | cut -d' ' -f2` -gt 0 ]; then
			see $resultfile$f.txt
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
