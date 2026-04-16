#!/bin/bash
if test -f "${GIELLA_CORE}/scripts/termcolors.bash" ; then
    . "${GIELLA_CORE}/scripts/termcolors.bash"
fi
TESTER=/Users/ttr000/.cargo/bin/divvunspell
THRESHOLD=75
CONFIG="./../config.json"
if test x"$TESTER" = x"false" ; then
    printf "%sSKIP%s: missing divvunspell accuracy\n" "${light_blue}" "${reset}"
    exit 77
fi
failed=0
passed=0
skipped=0
TYPOS="./typos-SE-generated.tsv"
ZHFST="../../../tools/spellcheckers/smj-SE.zhfst"
REPORT="../../../docs/typosreport/report-SE.json"
if test ! -f "$ZHFST" ; then
    printf "%sSKIP%s: SE (spellchecker not found)\n" "${light_blue}" "${reset}"
    skipped=$((skipped + 1))
    exit 77
fi
if test ! -f "$TYPOS" ; then
    printf "%sSKIP%s: SE (test data not found)\n" "${light_blue}" "${reset}"
    skipped=$((skipped + 1))
    exit 77
fi
if test -f "$CONFIG" ; then
    CONFIGOPTION=" -c $CONFIG "
else
    CONFIGOPTION=""
fi
"$TESTER" accuracy -T "$THRESHOLD" --verbose $CONFIGOPTION -o "$REPORT" "$TYPOS" "$ZHFST" > /dev/null 2>&1
rv=$?
if test $rv = 77 ; then
    printf "%sSKIP%s: SE\n" "${light_blue}" "${reset}"
    skipped=$((skipped + 1))
elif test $rv -gt 0 ; then
    printf "%sFAIL%s: SE\n" "${red}" "${reset}"
    failed=$((failed + 1))
else
    printf "%sPASS%s: SE\n" "${green}" "${reset}"
    passed=$((passed + 1))
fi
printf "\nVariant tests: $passed passed, $failed failed, $skipped skipped\n"
if test $failed -gt 0 ; then
    exit 1
elif test $passed -eq 0 && test $skipped -gt 0 ; then
    exit 77
else
    exit 0
fi
