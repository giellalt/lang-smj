#!/bin/bash
#
# Split tools/spellcheckers/test/typos-corpus.tsv into subsets specific
# to the Norwegian and Swedish orthographies used for smj place names
# etc: forms containing æ/ø go to typos-corpus-NO.tsv, forms containing
# ä/ö go to typos-corpus-SE.tsv. The extracted rows are removed from
# typos-corpus.tsv itself, to avoid duplicate entries.
#
# Run manually whenever typos-corpus.tsv has been regenerated, e.g. from
# the top of the source tree:
#
#   devtools/split-corpus-typos-by-language.sh
#
# The language-independent logic here is small enough to keep inline,
# unlike the other devtools/generate-*.sh scripts.

set -eu

testdir=$(dirname "$0")/../tools/spellcheckers/test
input="$testdir/typos-corpus.tsv"
output_no="$testdir/typos-corpus-NO.tsv"
output_se="$testdir/typos-corpus-SE.tsv"

grep -E '[æøÆØ]' "$input" > "$output_no"
grep -E '[äöÄÖ]' "$input" > "$output_se"

tmp=$(mktemp)
grep -v -E '[æøäöÆØÄÖ]' "$input" > "$tmp"
mv "$tmp" "$input"
