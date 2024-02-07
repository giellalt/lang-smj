## Process this file with automake to produce Makefile.in
## Copyright: Sámediggi/Divvun/UiT
## Licence: GPL v3+

######## Test targets: ###########

if WANT_GRAMCHECK

# List here (space separated) all yaml files to be run as part of make check:
TESTS=\
	DEV-msyn-congr-mij-ma-FAIL.yaml               \
	DEV-msyn-congr-mij-ma-PASS.yaml               \
	DEV-msyn-dimin-after-unna-FAIL.yaml           \
	DEV-msyn-dimin-after-unna-PASS.yaml           \
	DEV-msyn-gut-mij-gut-FAIL.yaml                \
	DEV-msyn-gut-mij-gut-PASS.yaml                \
	DEV-msyn-moadda-bale-FAIL.yaml                \
	DEV-msyn-moadda-bale-PASS.yaml                \
	DEV-msyn-nom-gen-PP-FAIL.yaml                 \
	DEV-msyn-nom-gen-PP-PASS.yaml                 \
	DEV-msyn-nom-nom-gen-PASS.yaml                    \
    DEV-msyn-numeral-attr-FAIL.yaml               \
	DEV-msyn-numeral-attr-PASS.yaml               \
	DEV-msyn-sme_interferenc_neg-PASS.yaml        \
	DEV-msyn-sme_interferenc_neg-PASS.yaml        \
    DEV-punct-nom-nom-comma-FAIL.yaml             \
	DEV-real-NegSg2-NegSg3-FAIL.yaml              \
	DEV-real-NegSg2-NegSg3-PASS.yaml              \
	DEV-real-NegSg3-NegSg2-FAIL.yaml              \
	DEV-real-NegSg3-NegSg2-PASS.yaml              \
	DEV-real-PrsPl3-PrtSg3-FAIL.yaml              \
	DEV-real-PrsPl3-PrtSg3-PASS.yaml              \
	DEV-real-PrtSg3-PrsPl3-FAIL.yaml              \
	DEV-real-PrtSg3-PrsPl3-PASS.yaml              \
	DEV-real-habbmim-PASS.yaml                    \
    DEV-syn-akta-FAIL.yaml                        \
    DEV-syn-missing-gus-FAIL.yaml                         \
    DEV-syn-missing-copula-FAIL.yaml              \
    DEV-syn-missing-copula-PASS.yaml            \
	DEV-syn-number_congruence-subj-verb-FAIL.yaml \
	DEV-syn-number_congruence-subj-verb-PASS.yaml \
	DEV-syn-pred-attr-FAIL.yaml                   \
	DEV-syn-pred-attr-PASS.yaml                   \
	REL-lex-oahpasmuvvat-oahpastuvvat-FAIL.yaml   \
	REL-lex-oahpasmuvvat-oahpastuvvat-PASS.yaml   \
	REL-msyn-attr-pred-FAIL.yaml                  \
	REL-msyn-attr-pred-PASS.yaml                  \
	REL-msyn-genna-gejn-FAIL.yaml                 \
	REL-msyn-genna-gejn-PASS.yaml                 \
	REL-msyn-iesj-ietja-FAIL.yaml                 \
	REL-msyn-iesj-ietja-PASS.yaml                 \
	REL-msyn-soajtta-FAIL.yaml                    \
	REL-msyn-soajtta-PASS.yaml                    \
	REL-syn-correct-form-liehket-FAIL.yaml        \
	REL-syn-correct-form-liehket-PASS.yaml        \
	format-missing-comma.yaml                     \
	lex-oahpasmuvvat-oahpastuvvat.yaml            \
	msyn-IV-with-object.yaml                      \
	msyn-acc-nom.yaml                             \
	msyn-congr-mij-ma.yaml                        \
	msyn-congr.yaml                               \
	msyn-genna-gejn.yaml                          \
	msyn-gut-mij-gut.yaml                         \
	msyn-iesj-ietja.yaml                          \
    msyn-IV-with-object.yaml                    \
	msyn-liba-li.yaml                             \
	msyn-liehket-congr-condsg2-condpl3.yaml       \
	msyn-liehket-congr-condsg2-condsg3.yaml       \
	msyn-lulujin.yaml                             \
	msyn-nom-gen-PP.yaml                          \
	msyn-numeral-attr.yaml                        \
	msyn-oadjot-kausative.yaml                    \
	msyn-pass-active.yaml                         \
	msyn-sme_interferenc_neg.yaml                 \
	msyn-soajtta.yaml                             \
    msyn-valens.yaml                                \
    real-adjective-adverb.yaml                      \
	real-NegSg2-NegSg3.yaml                       \
	real-NegSg3-NegSg2.yaml                       \
	real-PrsPl3-PrtSg3.yaml                       \
	real-PrtSg3-PrsPl3.yaml                       \
	real-gæhppat-alkke.yaml                       \
	real-gæhppat-alkke.yaml                       \
	real-habbmim.yaml                             \
	real-habbmim.yaml                             \
    syn-attr-pred.yaml                          \
	syn-correct-form-liehket.yaml                 \
	syn-number_congruence-subj-verb.yaml          \
	syn-pred-attr.yaml                            \
    syn-should-be-cmp.yaml                       \
	syn-wo-neg-before-subj.yaml

# List tests that are presently (expected) failures here, ie things that should
# be fixed *later*, but is not cDEV-msyn-gut-mij-gut-FAIL.yamlritical at the moment:
XFAIL_TESTS=\
	DEV-msyn-congr-mij-ma-FAIL.yaml               \
	DEV-msyn-dimin-after-unna-FAIL.yaml           \
	DEV-msyn-gut-mij-gut-FAIL.yaml                \
	DEV-msyn-moadda-bale-FAIL.yaml                \
	DEV-msyn-nom-gen-PP-FAIL.yaml                 \
	DEV-msyn-nom-nom-gen-FAIL.yaml                    \
	DEV-msyn-numeral-attr-FAIL.yaml               \
	DEV-msyn-sme_interferenc_neg-FAIL.yaml        \
	DEV-real-NegSg2-NegSg3-FAIL.yaml              \
	DEV-real-NegSg3-NegSg2-FAIL.yaml              \
	DEV-real-PrsPl3-PrtSg3-FAIL.yaml              \
	DEV-real-PrtSg3-PrsPl3-FAIL.yaml              \
	DEV-syn-number_congruence-subj-verb-FAIL.yaml \
	DEV-syn-pred-attr-FAIL.yaml                   \
    DEV-punct-nom-nom-comma-FAIL.yaml             \
    DEV-syn-akta-FAIL.yaml                        \
    DEV-syn-missing-gus-FAIL.yaml                         \
    DEV-syn-missing-copula-FAIL.yaml              \
	REL-lex-oahpasmuvvat-oahpastuvvat-FAIL.yaml   \
	REL-msyn-attr-pred-FAIL.yaml                  \
	REL-msyn-genna-gejn-FAIL.yaml                 \
	REL-msyn-iesj-ietja-FAIL.yaml                 \
	REL-msyn-soajtta-FAIL.yaml                    \
	REL-syn-correct-form-liehket-FAIL.yaml        \
	format-missing-comma.yaml                     \
	lex-oahpasmuvvat-oahpastuvvat.yaml            \
	msyn-IV-with-object.yaml                      \
	msyn-acc-nom.yaml                             \
	msyn-congr-mij-ma.yaml                        \
	msyn-congr.yaml                               \
	msyn-genna-gejn.yaml                          \
	msyn-gut-mij-gut.yaml                         \
	msyn-iesj-ietja.yaml                          \
	msyn-liba-li.yaml                             \
	msyn-liehket-congr-condsg2-condpl3.yaml       \
	msyn-liehket-congr-condsg2-condsg3.yaml       \
	msyn-lulujin.yaml                             \
	msyn-nom-gen-PP.yaml                          \
	msyn-numeral-attr.yaml                        \
	msyn-oadjot-kausative.yaml                    \
	msyn-pass-active.yaml                         \
	msyn-sme_interferenc_neg.yaml                 \
	msyn-soajtta.yaml                             \
    msyn-valens.yaml                                \
    real-adjective-adverb.yaml                      \
	real-NegSg2-NegSg3.yaml                       \
	real-NegSg3-NegSg2.yaml                       \
	real-PrsPl3-PrtSg3.yaml                       \
	real-PrtSg3-PrsPl3.yaml                       \
	real-gæhppat-alkke.yaml                       \
	real-gæhppat-alkke.yaml                       \
	real-habbmim.yaml                             \
	real-habbmim.yaml                             \
    syn-attr-pred.yaml                          \
	syn-correct-form-liehket.yaml                 \
	syn-number_congruence-subj-verb.yaml          \
	syn-pred-attr.yaml                            \
	syn-wo-neg-before-subj.yaml                   \
    syn-should-be-cmp.yaml                       \
	DEV-msyn-numeral-attr-PASS.yaml				  \
	DEV-msyn-sme_interferenc_neg-PASS.yaml        \
	REL-msyn-attr-pred-PASS.yaml				  \
	REL-syn-correct-form-liehket-PASS.yaml        
    
endif # WANT_GRAMCHECK

#### Do NOT edit below here: ####
include $(top_srcdir)/../giella-core/am-shared/tools-grammarcheckers-tests-dir-include.am



# Here are the candidate files to be considered.
