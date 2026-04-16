#!/bin/bash
if test -f "${GIELLA_CORE}/scripts/termcolors.bash" ; then
    . "${GIELLA_CORE}/scripts/termcolors.bash"
fi
failed=0 ; passed=0 ; skipped=0
if test -x "./test-speller-variant-NO.sh" ; then
    bash "./test-speller-variant-NO.sh"
    rv=$?
    if test $rv = 77 ; then skipped=$((skipped + 1))
    elif test $rv -gt 0 ; then failed=$((failed + 1))
    else passed=$((passed + 1)) ; fi
fi
if test -x "./test-speller-variant-SE.sh" ; then
    bash "./test-speller-variant-SE.sh"
    rv=$?
    if test $rv = 77 ; then skipped=$((skipped + 1))
    elif test $rv -gt 0 ; then failed=$((failed + 1))
    else passed=$((passed + 1)) ; fi
fi
if test $failed -gt 0 ; then exit 1
elif test $passed -eq 0 && test $skipped -gt 0 ; then exit 77
else exit 0 ; fi
