## Process this file with automake to produce Makefile.in
## Copyright: Sámediggi/Divvun/UiT
## Licence: GPL v3+

######## Test targets: ###########

if WANT_GRAMCHECK

# List here (space separated) all yaml files to be run as part of make check:
TESTS=\
	DEV-lex-oahpasmuvvat-oahpastuvvat-FAIL.yaml \
	DEV-lex-oahpasmuvvat-oahpastuvvat-PASS.yaml \
	DEV-msyn-congr-mij-ma-FAIL.yaml \
	DEV-msyn-congr-mij-ma-PASS.yaml \
	DEV-msyn-genna-gejn-FAIL.yaml \
	DEV-msyn-genna-gejn-PASS.yaml \
	DEV-msyn-gut-mij-gut-FAIL.yaml \
	DEV-msyn-gut-mij-gut-PASS.yaml \
	DEV-msyn-iesj-ietja-FAIL.yaml \
	DEV-msyn-iesj-ietja-PASS.yaml \
	DEV-msyn-numeral-attr-FAIL.yaml \
	DEV-msyn-numeral-attr-PASS.yaml \
	DEV-msyn-sme_bastard_neg1-2-FAIL.yaml \
	DEV-msyn-sme_bastard_neg1-2-PASS.yaml \
	DEV-msyn-soajtta-FAIL.yaml \
	DEV-msyn-soajtta-PASS.yaml \
	DEV-syn-pred-attr-FAIL.yaml \
	DEV-syn-pred-attr-PASS.yaml \
	format-missing-comma.yaml \
	lex-oahpasmuvvat-oahpastuvvat.yaml \
	msyn-IV-with-object.yaml \
	msyn-acc-nom.yaml \
	msyn-congr-mij-ma.yaml \
	msyn-congr.yaml \
	msyn-genna-gejn.yaml \
	msyn-gut-mij-gut.yaml \
	msyn-iesj-ietja.yaml \
	msyn-liba-li.yaml \
	msyn-liehket-congr-condsg2-condpl3.yaml \
	msyn-liehket-congr-condsg2-condsg3.yaml \
	msyn-lulujin.yaml \
	msyn-nom-gen-PP.yaml \
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
	real-gæhppat-alkke.yaml \
	real-habbmim.yaml \
	syn-attr-pred.yaml \
	syn-correct-form-liehket.yaml \
	syn-nom-nom.yaml \
	syn-pred-attr.yaml \
	syn-wo-neg-before-subj.yaml

# List tests that are presently (expected) failures here, ie things that should
# be fixed *later*, but is not critical at the moment:
XFAIL_TESTS=\
    DEV-lex-oahpasmuvvat-oahpastuvvat-FAIL.yaml \
    DEV-msyn-congr-mij-ma-FAIL.yaml             \
    DEV-msyn-genna-gejn-FAIL.yaml               \
    DEV-msyn-gut-mij-gut-FAIL.yaml              \
    DEV-msyn-iesj-ietja-FAIL.yaml               \
    DEV-msyn-numeral-attr-FAIL.yaml             \
    DEV-msyn-sme_bastard_neg1-2-FAIL.yaml       \
    DEV-msyn-soajtta-FAIL.yaml                  \
    DEV-syn-pred-attr-FAIL.yaml                 \
    format-missing-comma.yaml \
    lex-oahpasmuvvat-oahpastuvvat.yaml          \
    msyn-IV-with-object.yaml                    \
    msyn-IV-with-object.yaml                    \
    msyn-acc-nom.yaml                           \
    msyn-congr-mij-ma.yaml                      \
    msyn-congr.yaml                             \
    msyn-genna-gejn.yaml                        \
    msyn-gut-mij-gut.yaml                       \
    msyn-iesj-ietja.yaml                        \
    msyn-liba-li.yaml                           \
    msyn-liehket-congr-condsg2-condpl3.yaml     \
    msyn-liehket-congr-condsg2-condsg3.yaml     \
    msyn-lulujin.yaml                           \
    msyn-nom-gen-PP.yaml                        \
    msyn-numeral-attr.yaml                      \
    msyn-oadjot-kausative.yaml                  \
    msyn-pass-active.yaml                       \
    msyn-sme_bastard_neg1-2.yaml                \
    msyn-soajtta.yaml                           \
    real-NegSg3-NegSg2.yaml                     \
    real-PrsPl3-PrsSg3.yaml                     \
    real-PrsSg2-PrsSg3.yaml                     \
    real-PrtSg3-PrsPl3.yaml                     \
    real-gæhppat-alkke.yaml                     \
    real-habbmim.yaml                           \
    syn-correct-form-liehket.yaml               \
    syn-nom-nom.yaml                            \
    syn-pred-attr.yaml                          \
    syn-wo-neg-before-subj.yaml
    
endif # WANT_GRAMCHECK

#### Do NOT edit below here: ####
include $(top_srcdir)/../giella-core/am-shared/tools-grammarcheckers-tests-dir-include.am



# Here are the candidate files to be considered.

#	candidates-ellipsis.yaml \
#	candidates-lex-oahpaasmuvvat-oahpaastuvvat.yaml \
#	candidates-lex-oahpaastuvvat-oahpaasmuvvat.yaml \
#	candidates-msyn-attr-pred-pl.yaml \
#	candidates-msyn-attr-pred-sg.yaml \
#	candidates-msyn-attr-pred.yaml \
#	candidates-msyn-com-ill-oahpaastuvvat.yaml \
#	candidates-msyn-congr-PrtSg3-PrsPl3.yaml \
#	candidates-msyn-congr-gaenna-gejn.yaml \
#	candidates-msyn-congr-iesj-ietja.yaml \
#	candidates-msyn-congr-ma-mij.yaml \
#	candidates-msyn-congr-mij-ma.yaml \
#	candidates-msyn-gut-mij.yaml \
#	candidates-msyn-ill-com-oahpaasmuvvat.yaml \
#	candidates-msyn-l-not-la.yaml \
#	candidates-msyn-liehket-congr-condsg2-condpl3.yaml \
#	candidates-msyn-mij-gut.yaml \
#	candidates-msyn-numeral-accattr.yaml \
#	candidates-msyn-numeral-acccasecongr-akta.yaml \
#	candidates-msyn-numeral-acccasecongr.yaml \
#	candidates-msyn-numeral-attr-pl-com.yaml \
#	candidates-msyn-numeral-attr-pl-ine.yaml \
#	candidates-msyn-numeral-attr.yaml \
#	candidates-msyn-numeral-casecongr-guovte-com.yaml \
#	candidates-msyn-numeral-casecongr.yaml \
#	candidates-msyn-numeral-comcasecongr.yaml \
#	candidates-msyn-numeral-parcasecongr.yaml \
#	candidates-msyn-numerals-with-demopron.yaml \
#	candidates-msyn-pass-active.yaml \
#	candidates-msyn-pred-attr.yaml \
#	candidates-msyn-sme_bastard_neg.yaml \
#	candidates-msyn-sme_bastard_neg2.yaml \
#	candidates-msyn-soajttaa-adv.yaml \
#	candidates-msyn-soajttaa-le.yaml \
#	candidates-msyn-soajttaa-not-adv.yaml \
#	candidates-real-ActioGen-PrtPl1.yaml \
#	candidates-real-PrsPl3-PrtSg3.yaml \
#	candidates-real-PrsSg2-PrsSg3.yaml \
#	candidates-real-PrtSg2-PrtSg3.yaml \
#	candidates-real-negSg3-negSg2.yaml \
#	candidates-syn-from-sentence-init-copula.yaml \
#	candidates-syn-number_congruence-subj-verb.yaml \
#	candidates-syn-subj-before-neg.yaml \
#	candidates-syn-to-sentence-init-copula.yaml 