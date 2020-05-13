## Process this file with automake to produce Makefile.in
## Copyright: Sámediggi/Divvun/UiT
## Licence: GPL v3+

# always build . last here, and tagsets have to be built after morphology
SUBDIRS = fst filters phonetics hyphenation orthography cg3 transcriptions tagsets .

####### Automake targets: ########

# Define target variables first, before assigning to them:
GT_ANALYSERS=
GT_GENERATORS=

#### Local modifications in *fst processing: ####
####
#### Copy the fallback targets, and rename them to the desired targets. Then:
#### Replace the 'cp' command (Xerox) / Prepend the hfst-invert command (Hfst -
#### remember to move the $<) with whatever you need to complete
#### the processing to get the final target transducer.
#### Remember to add the dependencies as well.
#### Also make sure that HFST and Xerox processing are the same.
####
#### If you add new transducers to be built, you need to add them to the
#### relevant variable, e.g.:
####
#### if CAN_HFST
#### GT_GENERATORS+=generator-oahpa-gt-norm.hfst
#### endif
####
#### NB!!!!! The HFST targets should get a hyphen after 'analyser'/'generator'
#### respectively, to make the local targets minimally different from and
#### slightly more specific than the fallback targets. This is to avoid warnings
#### about duplicate targets. That is, the local targets should looke like:
####
#### analyser-%.hfst: analyser-%.tmp.hfst
#### generator-%.hfst: generator-%.tmp.hfst

##################################################################
#### BEGIN: Add local processing instructions BELOW this line ####
##################################################################

########################################################
#### Add language-specific transducer targets here: ####

#### Xerox transducers:
if CAN_XFST
GT_ANALYSERS+=
GT_GENERATORS+=
endif # CAN_XFST

#### HFST transducers
if CAN_HFST
GT_ANALYSERS+=
GT_GENERATORS+=
endif # CAN_HFST

#### FOMA transducers
if CAN_FOMA
GT_ANALYSERS+=
GT_GENERATORS+=
endif # CAN_FOMA

#################################################
#### Add language-specific build rules here: ####

# The SMJ morphology has some extra tags used for marking questionable
# normativity and our suggested norm:
analyser-gt-desc.%: analyser-gt-desc.tmp.% \
					filters/remove-derivation-position-tags.% \
					filters/remove-norm-comp-tags.%           \
					filters/remove-DNorm-tags.%
	$(AM_V_XFST_TOOL)$(PRINTF) "read regex \
			    @\"filters/remove-derivation-position-tags.$*\" \
			.o. @\"filters/remove-norm-comp-tags.$*\"           \
			.o. @\"filters/remove-DNorm-tags.$*\"               \
			.o. @\"$<\"                                         \
			;\n\
		 $(INVERT_HFST)\
		 save stack $@\n\
		 quit\n" | $(XFST_TOOL)

analyser-gt-norm.%: analyser-gt-norm.tmp.%                                 \
					 filters/remove-derivation-position-tags.%             \
					 filters/remove-DNorm-tags.%                           \
					 filters/remove-illegal-derivation-strings-flagbased.% \
					 filters/remove-MinusSpell-strings.%                   \
					 filters/insert-default-compounding-tags.%             \
					 filters/insert-default_left_compounding-tags.%        \
					 filters/block-illegal_compound-strings.%              \
					 filters/split-CmpN-tags.%                             \
					 filters/convert_to_flags-CmpNP-tags.%                 \
					 filters/split-CmpNP-tags.%
	$(AM_V_XFST_TOOL)$(PRINTF) "read regex \
			    @\"filters/remove-derivation-position-tags.$*\"             \
			.o. @\"filters/remove-DNorm-tags.$*\"                           \
			.o. @\"filters/block-illegal_compound-strings.$*\"              \
			.o. @\"filters/split-CmpN-tags.$*\"                             \
			.o. @\"filters/insert-default_left_compounding-tags.$*\"        \
			.o. @\"filters/insert-default-compounding-tags.$*\"             \
			.o. @\"filters/remove-illegal-derivation-strings-flagbased.$*\" \
			.o. @\"filters/convert_to_flags-CmpNP-tags.$*\"                 \
			.o. @\"filters/split-CmpNP-tags.$*\"                            \
			.o. @\"filters/remove-MinusSpell-strings.$*\"                   \
			.o. @\"$<\"                                                     \
			;\n\
		 twosided flag-diacritics\n\
		 $(INVERT_HFST)\
		 save stack $@\n\
		 quit\n" | $(XFST_TOOL)

analyser-gt-norm.xfst: analyser-gt-norm.tmp.xfst \
					 filters/remove-norm-comp-tags.xfst             \
					 filters/remove-derivation-position-tags.xfst   \
					 filters/remove-illegal-derivation-strings.xfst \
					 filters/remove-DNorm-tags.xfst
	$(AM_V_XFST)$(PRINTF) "read regex \
			    @\"filters/remove-derivation-position-tags.xfst\"   \
			.o. @\"filters/remove-norm-comp-tags.xfst\"             \
			.o. @\"filters/remove-DNorm-tags.xfst\"                 \
			.o. @\"$<\"                                             \
			;\n\
		 save stack $@\n\
		 quit\n" | $(XFST) $(VERBOSITY)

# This does not work -  the filter in its present form blocks too much because
# it crosses word boundaries, and restricting the filter by disallowing
# word boundaries makes it uncompilable when using Xerox. Another version makes
# Hfst crash!
#			.o. @\"filters/remove-illegal-derivation-strings.xfst\" \
#

# ... and also in the Oahpa analyser:
analyser-oahpa-gt-norm.%: analyser-gt-norm.tmp.% \
					filters/remove-derivation-position-tags.% \
					filters/remove-norm-comp-tags.%           \
					filters/remove-DNorm-tags.%
	$(AM_V_XFST_TOOL)$(PRINTF) "read regex \
			    @\"filters/remove-derivation-position-tags.$*\" \
			.o. @\"filters/remove-norm-comp-tags.$*\"           \
			.o. @\"filters/remove-DNorm-tags.$*\"               \
			.o. @\"$<\"                                         \
			;\n\
		 $(INVERT_HFST)\
		 save stack $@\n\
		 quit\n" | $(XFST_TOOL)


# We need special treatment of the disamb fst going to further pmatch processing
# mainly due to the target pattern, thus listed here. The rule body and the
# dependencies should be the same as the regular disamb analysers below:
analyser-pmatchdisamb-gt-desc.hfst: analyser-pmatchdisamb-gt-desc.tmp.hfst \
				filters/remove-dialect-tags.hfst               \
				filters/remove-area-tags.hfst                  \
				filters/remove-norm-comp-tags.hfst             \
				filters/remove-derivation-position-tags.hfst   \
				filters/remove-orig_lang-tags.hfst             \
				filters/rename-POS_before_Der-tags.hfst
	$(AM_V_HXFST)$(PRINTF) "read regex \
		    @\"filters/remove-derivation-position-tags.hfst\" \
		.o. @\"filters/remove-dialect-tags.hfst\"             \
		.o. @\"filters/remove-area-tags.hfst\"                \
		.o. @\"filters/remove-norm-comp-tags.hfst\"           \
		.o. @\"filters/remove-orig_lang-tags.hfst\"           \
		.o. @\"filters/rename-POS_before_Der-tags.hfst\"      \
		.o. @\"$<\"                                           \
		;\n\
	invert net\n\
	save stack $@\n\
	quit\n" | $(HFST_XFST) -p $(MORE_VERBOSITY)



# ... as well as in the disambiguation analyser:
analyser-disamb-gt-desc.%: analyser-disamb-gt-desc.tmp.%      \
				    filters/remove-dialect-tags.%             \
				    filters/remove-area-tags.%                \
					filters/remove-homonymy-tags.%			  \
					filters/remove-orig_lang-tags.%           \
					filters/remove-derivation-position-tags.% \
					filters/remove-norm-comp-tags.%           \
					filters/rename-POS_before_Der-tags.%      \
					filters/remove-DNorm-tags.%
	$(AM_V_XFST_TOOL)$(PRINTF) "read regex \
				@\"filters/remove-derivation-position-tags.$*\" \
			.o. @\"filters/remove-homonymy-tags.$*\"            \
	  		.o. @\"filters/remove-dialect-tags.$*\"             \
	  		.o. @\"filters/remove-area-tags.$*\"                \
			.o. @\"filters/remove-norm-comp-tags.$*\"           \
			.o. @\"filters/remove-orig_lang-tags.$*\"           \
			.o. @\"filters/rename-POS_before_Der-tags.$*\"      \
			.o. @\"filters/remove-DNorm-tags.$*\"               \
			.o. @\"$<\"                                         \
			;\n\
		 $(INVERT_HFST)\
		 save stack $@\n\
		 quit\n" | $(XFST_TOOL)

# The HFST Grammar Checker analyser (keep the Err/SpaceCmp strings):
analyser-gramcheck-gt-desc.hfst: analyser-gramcheck-gt-desc.tmp.hfst \
				filters/remove-dialect-tags.hfst             \
				filters/remove-norm-comp-tags.hfst           \
				filters/remove-derivation-position-tags.hfst \
				filters/rename-POS_before_Der-tags.hfst      \
				filters/remove-word-boundary.hfst			 \
				orthography/spellrelax-with-flagtags.compose.hfst
	$(AM_V_HXFST)$(PRINTF) "\
	set encode-weights ON\n\
	read regex \
			@\"filters/remove-dialect-tags.hfst\"             \
		.o. @\"filters/remove-norm-comp-tags.hfst\"           \
		.o. @\"filters/remove-derivation-position-tags.hfst\" \
		.o. @\"filters/rename-POS_before_Der-tags.hfst\"      \
		.o. @\"$<\"                                           \
		.o. @\"orthography/spellrelax-with-flagtags.compose.hfst\" \
		.o. @\"filters/remove-word-boundary.hfst\"            \
		;\n\
	twosided flag-diacritics\n\
	invert net\n\
	save stack $@\n\
	quit\n" | $(HFST_XFST) -p $(MORE_VERBOSITY)

# We need to add processing of language-specific tags in the generator:
# Xerox processing due to bug in the operation twosided flag-diacritics:
generator-gt-norm.xfst: generator-gt-norm.tmp.xfst                \
					 filters/remove-derivation-position-tags.xfst \
					 filters/remove-norm-comp-tags.xfst           \
					 filters/remove-illegal-derivation-strings.xfst \
					 filters/remove-DNorm-tags.xfst               \
					 filters/make-optional-lang_hom-tags.xfst
	$(AM_V_XFST)$(PRINTF) "read regex \
				@\"filters/make-optional-lang_hom-tags.xfst\"     \
			.o. @\"filters/remove-derivation-position-tags.xfst\" \
			.o. @\"filters/remove-norm-comp-tags.xfst\"           \
			.o. @\"filters/remove-DNorm-tags.xfst\"               \
			.o. @\"$<\"                                           \
			;\n\
		 invert net\n\
		 save stack $@\n\
		 quit\n" | $(XFST) $(VERBOSITY)

# This does not work -  the filter in its present form blocks too much because
# it crosses word boundaries, and restricting the filter by disallowing
# word boundaries makes it uncompilable when using Xerox. Another version makes
# Hfst crash!
#			.o. @\"filters/remove-illegal-derivation-strings.xfst\" \
#

# gt-norm for Foma and Hfst:
generator-gt-norm.%: generator-gt-norm.tmp.%                   \
					 filters/remove-derivation-position-tags.% \
					 filters/remove-norm-comp-tags.%           \
					 filters/remove-DNorm-tags.%               \
					 filters/make-optional-lang_hom-tags.%     \
					 filters/remove-illegal-derivation-strings-flagbased.% \
					 filters/insert-default-compounding-tags.%             \
					 filters/insert-default_left_compounding-tags.%        \
					 filters/block-illegal_compound-strings.%              \
					 filters/split-CmpN-tags.%                             \
					 filters/convert_to_flags-CmpNP-tags.%                 \
					 filters/split-CmpNP-tags.%
	$(AM_V_XFST_TOOL)$(PRINTF) "read regex \
				@\"filters/make-optional-lang_hom-tags.$*\"     \
			.o. @\"filters/remove-derivation-position-tags.$*\" \
			.o. @\"filters/remove-norm-comp-tags.$*\"           \
			.o. @\"filters/remove-DNorm-tags.$*\"               \
			.o. @\"filters/block-illegal_compound-strings.$*\"              \
			.o. @\"filters/split-CmpN-tags.$*\"                             \
			.o. @\"filters/insert-default_left_compounding-tags.$*\"        \
			.o. @\"filters/insert-default-compounding-tags.$*\"             \
			.o. @\"filters/remove-illegal-derivation-strings-flagbased.$*\" \
			.o. @\"filters/convert_to_flags-CmpNP-tags.$*\"                 \
			.o. @\"filters/split-CmpNP-tags.$*\"                            \
			.o. @\"$<\"                                          \
			;\n\
		 twosided flag-diacritics\n\
		 $(INVERT_XFST)$(INVERT_FOMA)\
		 save stack $@\n\
		 quit\n" | $(XFST_TOOL)

# Descriptive generators:
generator-gt-desc.%: generator-gt-desc.tmp.%                   \
					 filters/remove-derivation-position-tags.% \
					 filters/remove-norm-comp-tags.%           \
					 filters/remove-DNorm-tags.%               \
					 filters/make-optional-lang_hom-tags.%
	$(AM_V_XFST_TOOL)$(PRINTF) "read regex \
				@\"filters/make-optional-lang_hom-tags.$*\"     \
			.o. @\"filters/remove-derivation-position-tags.$*\" \
			.o. @\"filters/remove-norm-comp-tags.$*\"           \
			.o. @\"filters/remove-DNorm-tags.$*\"               \
			.o. @\"$<\"                                          \
			;\n\
		 $(INVERT_XFST)$(INVERT_FOMA)\
		 save stack $@\n\
		 quit\n" | $(XFST_TOOL)

# Include the scripts file in the distro to ensure we can convert the smi
# propernouns file:
EXTRA_DIST=scripts/smi-smj-conversion.pl

##################################################################
#### END: Add local processing instructions ABOVE this line ######
##################################################################

include $(top_srcdir)/../giella-core/am-shared/src-dir-include.am
