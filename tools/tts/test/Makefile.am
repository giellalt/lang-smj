## Process this file with automake to produce Makefile.in
## Copyright: Sámediggi/Divvun/UiT
## Licence: GPL v3+

######## Test targets: ###########

# Default variable for all languages
TESTS_ENVIRONMENT = ./run_tests.sh

# List here (space separated) all test scripts that should be run
# unconditionally:
TESTS=

if WANT_TTS
TESTS+= test_no_normalisation.normaliser.txt \
		test_no_normalisation.normaliser.ipa.txt \
		test_ordinal.normaliser.txt \
		test_plain_digits.normaliser.txt \
		test_digit_abbr.normaliser.txt \
		test_clock_10.14.normaliser.txt \
		test_pure_date_time.normaliser.txt \
		test_date_clock.normaliser.txt \
		test_regular_text_skaavlaan.ipa.txt
endif # WANT_TTS

# List tests that are presently (expected) failures here, ie things that should
# be fixed *later*, but is not critical at the moment:
XFAIL_TESTS=test_pure_date_time.normaliser.txt \
			test_clock_10.14.normaliser.txt \
			test_date_clock.normaliser.txt \
			test_regular_text_skaavlaan.ipa.txt \
			test_no_normalisation.normaliser.ipa.txt

####### Other targets: ###########
clean-local:
	-rm -f *.out *.out.tmp *.expect

include $(top_srcdir)/../giella-core/am-shared/devtest-include.am
