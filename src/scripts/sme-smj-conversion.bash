#!/bin/bash
#
# orig. from:
# smi-smj-conversion.pl
# Convert names in the SMI propernoun lexicon to smj.
#set -x

# Continuation lexicon substitutions:
cat "$@" |\
    sed -e 's/% /___/g' \
        -e  's/^[[:space:]]*//' |\
    sed \
        -e 's/ C-FI-NEN/nen LONDON/g' \
        -e 's/SUND/BERN/g' \
        -e 's/HEIM/BERN/g' \
        -e 's/NIKOSIIJA/ACCRA/g' \
        -e 's/SIJTE/ACCRA/g' \
        -e 's/BALAK/ANAR/g' \
        -e 's/HAWAII/ACCRA/g' \
        -e 's/SKANIK/SULLOT/g' \
        -e 's/Jerusalem/!Jerusalem/g' |\
	# SME escape char deletion:
    # Some X9 letters need to be # Some X9 letters need to be simplified, others not, cf the twol alphabet simplified, others not, cf the twol alphabet
    sed \
        -e 's/j9/j/g' \
        -e 's/7 / /g' \
        -e 's/8 / /g' \
        -e 's/\([a-z]\)9 /\1 /g' \
        -e 's/d9-/d-/g' \
        -e 's/7#/#/g' \
        -e 's/8#/#/g' \
        -e 's/\([^jktsp]\)9#/\1#/g' \
        -e 's/7-/-/g' \
        -e 's/8-/-/g' \
        -e 's/\([^jktsp]\)9-/\1-/g' |\

    # SMJ escape char insertio# not in front of ; - then it is a contlex namen:
    sed \
        -e 's/ss \([^;]\)/ss9 \1/g'  \
        -e 's/st \([^;]\)/st9 \1/g' \
        -e 's/ss#/ss9#/g' \
        -e 's/st#/st9#/g' |\
    # Substitutions due to orthographic differences between SMJ and SME:
    sed \
        -e 's/t:\(.*\)h /t:\1d9 /g' \
        -e 's/t:\(.*\)h#/t:\1d9#/g' \
        -e 's/\([ÁAEIOUaáeiou]\)i\([^j].*\):\(.*\)\([ÁAEIOUaáeiou]\)j\([^ÁAEIOUaáeiou]\)/\1i\2:\3\4i\5/g'  |\
#    -e 's/čč/ttj/g'
#    -e 's/Č/Tj/g'
#    -e ' Andreevič -> Andreevitj:
#    -e 's/^(.*)č /$1tj:$1t9j /g'
#    -e 's/^(.*)č#/$1tj:$1t9j#/g'
#    -e 's/č /tj9 /g'
#    -e 's/č/tj/g'
#    -e 's/šž/sjtj/g'
#    -e 's/Šž/Sjtj/g'
#    -e 's/šš/ssj/g'
#    -e 's/žž/dtj/g'
#    -e 's/Š/Sj/g'
#    -e 's/š/sj/g'
#    -e 's/ž/dj/g'
#    -e ' j->i || Vow i .* : .* Vow _' Heaika:Heajka -> Heaika:Heaika. But Majken
#    -e 's/([ÁAEIOUaáeiou])i(.*):(.*)([ÁAEIOUaáeiou])j/$1i$2:$3$4i/g'

while read -r line ; do
    if echo "$line" | grep -E '[äæ]' -q ; then
        lex=$(echo "$line" | cut -d ' ' -f 1)
        rest=$(echo "$line" | cut -d ' ' -f 2-)
        if echo "$lex" | grep -E '[^%]:' -q ; then
            upper=$(echo "$lex" | cut -d : -f 1)
            lower=$(echo "$lex" | cut -d : -f 2)
        else
            upper=$lex
            lower=$lex
        fi
        lower=$(echo "$lower" | sed -e 's/æ/æ9/g' -e 's/ä/ä9/g')
        echo "$upper:$lower $rest" | sed -e 's/___/% /g'
    else
        echo "$line" | sed -e 's/___/% /g'
    fi
done
