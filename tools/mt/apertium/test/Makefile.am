## Process this file with automake to produce Makefile.in
## Copyright: Sámediggi/Divvun/UiT
## Licence: GPL v3+

######## Local test targets: ###########

# List here (space separated) all test scripts that should be run:
TESTS=

# Add local yaml test runners here:
YAML_TEST_RUNNERS=
# Add your shell scripts for running python-based tests here:
OTHER_TEST_RUNNERS=

if CAN_YAML_TEST
# Add your shell scripts for running python-based tests here:

if WANT_APERTIUM
TESTS+=run-mt-gt-desc-anayaml-testcases.sh

endif # WANT_APERTIUM
endif # CAN_YAML_TEST

# List tests that are presently (expected) failures here, ie things that should
# be fixed *later*, but is not critical at the moment:
XFAIL_TESTS=

include $(top_srcdir)/../giella-core/am-shared/tools-mt-apertium-test-include.am
include $(top_srcdir)/../giella-core/am-shared/devtest-include.am
