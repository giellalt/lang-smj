## Process this file with automake to produce Makefile.in
## Copyright: Sámediggi/Divvun/UiT
## Licence: GPL v3+

######## Test targets: ###########

if WANT_PHONETIC

# List here (space separated) all yaml files to be run as part of make check:
TESTS=txt2ipa-tests.txt \
	  acro-tests.txt

# List tests that are presently (expected) failures here, ie things that should
# be fixed *later*, but is not critical at the moment:
XFAIL_TESTS=txt2ipa-tests.txt \
			acro-tests.txt

endif # WANT_PHONETIC

#### Do NOT edit below here: ####
include $(top_srcdir)/../giella-core/am-shared/src-phonetics-tests-dir-include.am
