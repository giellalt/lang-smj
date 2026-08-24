## Process this file with automake to produce Makefile.in
## Copyright: Sámediggi/Divvun/UiT
## Licence: GPL v3+

# Uncomment and list here (space separated) all test scripts that should be run:
TESTS=

# Add local yaml test runners here:
YAML_TEST_RUNNERS=

# Specify other shell scripts here to make sure they are included in the distro
# even though spellers are disabled:
OTHER_TEST_RUNNERS_IN=

OTHER_TEST_RUNNERS=

# Only test spellers if we build spellers:
if WANT_SPELLERS
# Only run yaml tests if we are able to:
if CAN_YAML_TEST
YAML_TEST_RUNNERS+=run-spellers-gt-norm-yaml-testcases.sh
endif # CAN_YAML_TEST
endif # WANT_SPELLERS

# NB: the shared include at the bottom appends both $(YAML_TEST_RUNNERS) and
# $(OTHER_TEST_RUNNERS) to TESTS, and adds the accuracy runners
# (suggestion-quality.sh, test-speller-variants.sh, ...) to OTHER_TEST_RUNNERS
# itself. Repeating them in TESTS here would run every test twice.

# List tests that are presently (expected) failures here (in addition to above),
# ie things that should be fixed *later*, but is not critical at the moment:
XFAIL_TESTS=run-desktopspeller-gt-norm-yaml-testcases.sh accept-all-lemmas.sh

# Make sure all required files are included in the distribution:
YAML_FILES=$(wildcard *.yaml)
YAML_DIRS=desktopspeller-gt-norm-yamls

EXTRA_DIST=$(OTHER_TEST_RUNNERS_IN) \
           $(YAML_TEST_RUNNERS) \
           $(YAML_FILES) \
           $(YAML_DIRS)

include $(top_srcdir)/../giella-core/am-shared/tools-spellcheckers-test-include.am
include $(top_srcdir)/../giella-core/am-shared/devtest-include.am
