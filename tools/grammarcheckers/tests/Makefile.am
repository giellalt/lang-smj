## Process this file with automake to produce Makefile.in
## Copyright: Sámediggi/Divvun/UiT
## Licence: GPL v3+

######## Test targets: ###########

if WANT_GRAMCHECK

# List here (space separated) all yaml files to be run as part of make check:
TESTS=\
	lex-oahpasmuvvat-oahpastuvvat.yaml \
	msyn-IV-with-object.yaml \
	msyn-congr-mij-ma.yaml \
	msyn-congr.yaml \
	msyn-genna-gejn.yaml \
	msyn-gut-mij-gut.yaml \
	msyn-iesj-ietja.yaml \
	msyn-liba-li.yaml \
	msyn-liehket-congr-condsg2-condpl3.yaml \
	msyn-liehket-congr-condsg2-condsg3.yaml \
	msyn-lulujin.yaml \
	msyn-numeral-attr.yaml \
	msyn-oadjot-kausative.yaml \
	msyn-pass-active.yaml \
	msyn-sme_bastard_neg1-2.yaml \
	msyn-soajtta.yaml \
	real-NegSg3-NegSg2.yaml \
	real-PrsPl3-PrsSg3.yaml \
	real-PrsSg2-PrsSg3.yaml \
	real-PrtSg2-PrtSg3.yaml \
	real-PrtSg3-PrsPl3.yaml \
	real-habbmim.yaml \
	syn-attr-pred.yaml \
	syn-correct-form-liehket.yaml \
	syn-pred-attr.yaml \
    DEV-lex-oahpasmuvvat-oahpastuvvat-FAIL.yaml \
    DEV-lex-oahpasmuvvat-oahpastuvvat-PASS.yaml \
    DEV-msyn-congr-mij-ma-FAIL.yaml \
    DEV-msyn-congr-mij-ma-PASS.yaml \
    DEV-msyn-genna-gejn-FAIL.yaml \
    DEV-msyn-genna-gejn-PASS.yaml \
    DEV-msyn-gut-mij-gut-FAIL.yaml \
    DEV-msyn-gut-mij-gut-PASS.yaml \
    DEV-msyn-numeral-attr-FAIL.yaml \
    DEV-msyn-numeral-attr-PASS.yaml \
    DEV-msyn-soajtta-FAIL.yaml \
    DEV-msyn-soajtta-PASS.yaml
    
# List tests that are presently (expected) failures here, ie things that should
# be fixed *later*, but is not critical at the moment:
XFAIL_TESTS=\
    DEV-lex-oahpasmuvvat-oahpastuvvat-FAIL.yaml \
    DEV-msyn-congr-mij-ma-FAIL.yaml \
    DEV-msyn-genna-gejn-FAIL.yaml \
    DEV-msyn-gut-mij-gut-FAIL.yaml \
    DEV-msyn-numeral-attr-FAIL.yaml \
    DEV-msyn-soajtta-FAIL.yaml \
    lex-oahpasmuvvat-oahpastuvvat.yaml \
    msyn-IV-with-object.yaml \
    msyn-congr-mij-ma.yaml  \
    msyn-congr.yaml         \
    msyn-genna-gejn.yaml \
    msyn-gut-mij-gut.yaml \
    msyn-iesj-ietja.yaml \
    msyn-liba-li.yaml \
    msyn-liehket-congr-condsg2-condpl3.yaml \
    msyn-liehket-congr-condsg2-condsg3.yaml \
    msyn-lulujin.yaml \
    msyn-numeral-attr.yaml \
    msyn-oadjot-kausative.yaml \
    msyn-pass-active.yaml \
    msyn-sme_bastard_neg1-2.yaml \
    msyn-soajtta.yaml \
    real-habbmim.yaml \
    real-NegSg3-NegSg2.yaml \
    real-PrsPl3-PrsSg3.yaml \
    real-PrsSg2-PrsSg3.yaml \
    real-PrtSg3-PrsPl3.yaml \
    syn-attr-pred.yaml \
    syn-correct-form-liehket.yaml \
    syn-pred-attr.yaml 

endif # WANT_GRAMCHECK

#### Do NOT edit below here: ####
include $(top_srcdir)/../giella-core/am-shared/tools-grammarcheckers-tests-dir-include.am
