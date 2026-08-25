## Process this file with automake to produce Makefile.in
## Copyright: Sámediggi/Divvun/UiT
## Licence: GPL v3+

# Subdirs in build order:
SUBDIRS = filters weights neural . test

include $(srcdir)/Makefile.mod-spellcheckers.am
include $(srcdir)/Makefile.mod-fstbased.am
include $(srcdir)/Makefile.mod-desktop.am
include $(srcdir)/Makefile.mod-desktop-hfst.am
include $(srcdir)/Makefile.mod-mobile.am
include $(srcdir)/Makefile.mod-mobile-hfst.am
include $(top_srcdir)/../giella-core/am-shared/tools-spellcheckers-dir-include.am
include $(top_srcdir)/../giella-core/am-shared/devtest-include.am

# The area edit-distance sources are generated from the default model so that
# every shared cost change reaches all three spellers. SE substitutes its area
# vowel; NO uses the default model unchanged.
AREA_EDITDIST_FILES = editdist.NO.txt editdist.SE.txt
BUILT_SOURCES = $(AREA_EDITDIST_FILES)
CLEANFILES += $(AREA_EDITDIST_FILES)
EXTRA_DIST = editdist.default.txt generate-area-editdist.py \
		extract-errorth-strings.py strings.errorth.default.regex

editdist.NO.txt: $(srcdir)/editdist.default.txt \
		$(srcdir)/generate-area-editdist.py
	$(AM_V_GEN)$(PYTHON) $(srcdir)/generate-area-editdist.py \
		--area NO --input $< --output $@

editdist.SE.txt: $(srcdir)/editdist.default.txt \
		$(srcdir)/generate-area-editdist.py
	$(AM_V_GEN)$(PYTHON) $(srcdir)/generate-area-editdist.py \
		--area SE --input $< --output $@
