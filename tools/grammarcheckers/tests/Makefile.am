## Process this file with automake to produce Makefile.in
## Copyright: Sámediggi/Divvun/UiT
## Licence: GPL v3+

######## Test targets: ###########

if WANT_GRAMCHECK

# List here (space separated) all yaml files to be run as part of make check:
TESTS=\
	lex-oahpasmuvvat-oahpastuvvat.yaml \
	msyn-congr-mij-ma.yaml \
	msyn-congr.yaml \
	msyn-liehket-congr-condsg2-condpl3.notfixed.yaml \
	msyn-liehket-congr-condsg2-condpl3.yaml \
	msyn-numeral-attr.yaml \
	msyn-sme_bastard_neg1-2.yaml \
	msyn-soajtta.yaml \
	real-NegSg3-NegSg2.yaml \
	real-PrsPl3-PrsSg3.yaml \
	real-PrsSg2-PrsSg3.yaml \
	real-PrtSg2-PrtSg3.yaml \
	real-PrtSg3-PrsPl3.yaml 

# List tests that are presently (expected) failures here, ie things that should
# be fixed *later*, but is not critical at the moment:
XFAIL_TESTS=\
	lex-oahpasmuvvat-oahpastuvvat.yaml \
	msyn-congr-mij-ma.yaml  \
	msyn-congr.yaml         \
    msyn-numeral-attr.yaml \
    msyn-soajtta.yaml \
	real-NegSg3-NegSg2.yaml \
	real-PrsPl3-PrsSg3.yaml \
	real-PrsSg2-PrsSg3.yaml \
	real-PrtSg3-PrsPl3.yaml

endif # WANT_GRAMCHECK

#### Do NOT edit below here: ####
include $(top_srcdir)/../giella-core/am-shared/tools-grammarcheckers-tests-dir-include.am
