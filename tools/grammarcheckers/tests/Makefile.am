## Process this file with automake to produce Makefile.in
## Copyright: Sámediggi/Divvun/UiT
## Licence: GPL v3+

######## Test targets: ###########

if WANT_GRAMCHECK

# List here (space separated) all yaml files to be run as part of make check:
TESTS=\
	DEV-msyn-congr-dem-noun-FAIL.yaml			  \
	DEV-msyn-congr-dem-noun-PASS.yaml             \
	DEV-msyn-congr-mij-ma-FAIL.yaml               \
	DEV-msyn-congr-mij-ma-PASS.yaml               \
	DEV-msyn-dates-FAIL.yaml				      \
	DEV-msyn-dates-PASS.yaml				      \
	DEV-msyn-dimin-after-unna-FAIL.yaml           \
	DEV-msyn-dimin-after-unna-PASS.yaml           \
	DEV-msyn-gut-mij-gut-FAIL.yaml                \
	DEV-msyn-gut-mij-gut-PASS.yaml                \
	DEV-msyn-moadda-bale-FAIL.yaml                \
	DEV-msyn-moadda-bale-PASS.yaml                \
	DEV-msyn-nom-gen-PP-FAIL.yaml                 \
	DEV-msyn-nom-gen-PP-PASS.yaml                 \
	DEV-msyn-nom-nom-gen-FAIL.yaml                \
	DEV-msyn-nom-nom-gen-PASS.yaml                \
	DEV-msyn-numeral-jagak-FAIL.yaml              \
	DEV-msyn-numeral-jagak-PASS.yaml              \
	DEV-msyn-numphrase-FAIL.yaml                  \
    DEV-msyn-numphrase-PASS.yaml                  \
	DEV-msyn-sme_interference_neg-FAIL.yaml       \
	DEV-msyn-sme_interference_neg-PASS.yaml       \
	DEV-msyn-rajes-FAIL.yaml                      \
	DEV-msyn-rajes-PASS.yaml                      \
	DEV-msyn-valens-FAIL.yaml					  \
	DEV-msyn-valens-PASS.yaml					  \
    DEV-punct-nom-nom-comma-FAIL.yaml             \
	DEV-real-NegSg2-NegSg3-FAIL.yaml              \
	DEV-real-NegSg2-NegSg3-PASS.yaml              \
	DEV-real-NegSg3-NegSg2-FAIL.yaml              \
	DEV-real-NegSg3-NegSg2-PASS.yaml              \
	DEV-real-PrsPl3-PrtSg3-FAIL.yaml              \
	DEV-real-PrsPl3-PrtSg3-PASS.yaml              \
	DEV-real-PrtSg3-PrsPl3-FAIL.yaml              \
	DEV-real-PrtSg3-PrsPl3-PASS.yaml              \
	DEV-real-vuostasj-vuostak-FAIL.yaml			  \
	DEV-real-vuostasj-vuostak-PASS.yaml			  \
	DEV-real-habbmim-PASS.yaml                    \
    DEV-syn-akta-FAIL.yaml                        \
    DEV-syn-akta-PASS.yaml                        \
    DEV-syn-missing-gus-FAIL.yaml                 \
    DEV-syn-missing-gus-PASS.yaml                 \
    DEV-syn-missing-copula-FAIL.yaml              \
    DEV-syn-missing-copula-PASS.yaml              \
	DEV-syn-number_congruence-subj-verb-FAIL.yaml \
	DEV-syn-number_congruence-subj-verb-PASS.yaml \
	DEV-syn-pred-attr-FAIL.yaml                   \
	DEV-syn-pred-attr-PASS.yaml                   \
	DEV-lex-oahpasmuvvat-oahpastuvvat-PASS.yaml   \
	DEV-lex-oahpasmuvvat-oahpastuvvat-FAIL.yaml   \
	DEV-msyn-attr-pred-FAIL.yaml                  \
	DEV-msyn-attr-pred-PASS.yaml                  \
	DEV-msyn-genna-gejn-FAIL.yaml                 \
	DEV-msyn-genna-gejn-PASS.yaml                 \
	DEV-msyn-iesj-ietja-FAIL.yaml                 \
	DEV-msyn-iesj-ietja-PASS.yaml                 \
	DEV-msyn-soajtta-FAIL.yaml                    \
	DEV-msyn-soajtta-PASS.yaml                    \
	DEV-msyn-verbform-inf-actioela-FAIL.yaml	  \
	DEV-msyn-verbform-inf-actioela-PASS.yaml	  \
	DEV-syn-correct-form-liehket-FAIL.yaml        \
	DEV-syn-correct-form-liehket-PASS.yaml        
	
# List tests that are presently (expected) failures here, ie things that should
# be fixed *later*, but is not cDEV-msyn-gut-mij-gut-FAIL.yamlritical at the moment:
XFAIL_TESTS=\
	DEV-msyn-congr-dem-noun-FAIL.yaml             \
	DEV-msyn-congr-mij-ma-FAIL.yaml               \
	DEV-msyn-dates-FAIL.yaml                      \
	DEV-msyn-dimin-after-unna-FAIL.yaml           \
	DEV-msyn-gut-mij-gut-FAIL.yaml                \
	DEV-msyn-moadda-bale-FAIL.yaml                \
	DEV-msyn-nom-gen-PP-FAIL.yaml                 \
	DEV-msyn-nom-nom-gen-FAIL.yaml                \
	DEV-msyn-numphrase-FAIL.yaml                  \
	DEV-msyn-numeral-jagak-FAIL.yaml              \
	DEV-msyn-sme_interference_neg-FAIL.yaml       \
	DEV-real-NegSg2-NegSg3-FAIL.yaml              \
	DEV-real-NegSg3-NegSg2-FAIL.yaml              \
	DEV-real-PrsPl3-PrtSg3-FAIL.yaml              \
	DEV-real-PrtSg3-PrsPl3-FAIL.yaml              \
	DEV-msyn-rajes-FAIL.yaml                      \
	DEV-syn-number_congruence-subj-verb-FAIL.yaml \
	DEV-syn-pred-attr-FAIL.yaml                   \
    DEV-punct-nom-nom-comma-FAIL.yaml             \
    DEV-syn-akta-FAIL.yaml                        \
    DEV-syn-missing-gus-FAIL.yaml                 \
    DEV-syn-missing-copula-FAIL.yaml              \
	DEV-style-short-long-FAIL.yaml                \
	DEV-msyn-valens-FAIL.yaml					  \
	DEV-msyn-attr-pred-FAIL.yaml                  \
	DEV-msyn-genna-gejn-FAIL.yaml                 \
	DEV-msyn-iesj-ietja-FAIL.yaml                 \
	DEV-msyn-soajtta-FAIL.yaml                    \
	DEV-syn-correct-form-liehket-FAIL.yaml        \
	DEV-lex-oahpasmuvvat-oahpastuvvat-FAIL.yaml   \
	DEV-msyn-verbform-inf-actioela-FAIL.yaml	  \
	DEV-real-vuostasj-vuostak-FAIL.yaml			  

    
endif # WANT_GRAMCHECK

#### Do NOT edit below here: ####
include $(top_srcdir)/../giella-core/am-shared/tools-grammarcheckers-tests-dir-include.am
include $(top_srcdir)/../giella-core/am-shared/devtest-include.am
