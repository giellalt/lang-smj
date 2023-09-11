## Process this file with automake to produce Makefile.in
## Copyright: Sámediggi/Divvun/UiT
## Licence: GPL v3+

# always build . last here, and tagsets have to be built after morphology
SUBDIRS = fst filters phonetics hyphenation orthography cg3 transcriptions tagsets .

####### Automake targets: ########

# Define target variables first, before assigning to them:
GT_ANALYSERS=
GT_GENERATORS=
CUSTOM_FSTS=

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

if WANT_CUSTOM_FSTS
CUSTOM_FSTS+=analyser-tts-gt-output.xfst analyser-tts-gt-input.xfst
endif # WANT_CUSTOM_FSTS

endif # CAN_XFST

#### HFST transducers
if CAN_HFST
GT_ANALYSERS+=
GT_GENERATORS+=

if WANT_CUSTOM_FSTS
CUSTOM_FSTS+=analyser-tts-gt-output.hfstol analyser-tts-gt-input.hfstol
endif # WANT_CUSTOM_FSTS

endif # CAN_HFST

#### FOMA transducers
if CAN_FOMA
GT_ANALYSERS+=
GT_GENERATORS+=

if WANT_CUSTOM_FSTS
CUSTOM_FSTS+=analyser-tts-gt-output.foma analyser-tts-gt-input.foma
endif # WANT_CUSTOM_FSTS

endif # CAN_FOMA

#################################################
#### Add language-specific build rules here: ####


### Process æ-ä early, and separately for xfst, hfst and foma. ###
###
### Xerox: can't use twosided flag-diacritics, so we'll just allow both
### everywhere:
analyser-raw-gt-desc.xfst: analyser-raw-gt-desc.tmp.xfst \
					filters/convert-æae-to-both.xfst
	$(AM_V_XFST_TOOL)$(PRINTF) "read regex            \
				@\"$<\"                               \
			.o. @\"filters/convert-æae-to-both.xfst\" \
			;\n\
		 save stack $@\n\
		 quit\n" | $(XFST_TOOL)

### Foma: as Hfst, but the file is an analyser (as xfst), not generator:
analyser-raw-gt-desc.foma: analyser-raw-gt-desc.tmp.foma \
					 filters/convert-æae-to-area-variant.foma \
					 filters/insert-area-tags.foma
	$(AM_V_XFST_TOOL)$(PRINTF) "set flag-is-epsilon OFF\n\
			read regex            \
				@\"$<\"                               \
			.o. @\"filters/convert-æae-to-area-variant.foma\" \
			;\n\
		 twosided flag-diacritics\n\
		 define lexicon\n\
		 read regex \
				@\"filters/insert-area-tags.foma\" \
			.o. lexicon                            \
			;\n\
		 twosided flag-diacritics\n\
		 save stack $@\n\
		 quit\n" | $(XFST_TOOL)

# Hfst - add weights to compounds if using tropical-semiring fst format:
if WITH_OFST_TROPICAL
generator-raw-gt-desc.hfst: generator-raw-gt-desc.tmp.hfst \
					 filters/convert-æae-to-area-variant.hfst \
					 filters/insert-area-tags.hfst
	$(AM_V_XFST_TOOL)$(PRINTF) "set flag-is-epsilon OFF\n\
			read regex            \
				@\"$<\"                               \
			.o. @\"filters/convert-æae-to-area-variant.hfst\" \
			;\n\
		 twosided flag-diacritics\n\
		 define lexicon\n\
		 read regex \
				@\"filters/insert-area-tags.hfst\" \
			.o. lexicon                            \
			;\n\
		 twosided flag-diacritics\n\
		 save stack $@tmp\n\
		 quit\n" | $(XFST_TOOL)
	$(AM_V_REWEIGHT)$(HFST_REWEIGHT) $(MORE_VERBOSITY) $(HFST_FLAGS) \
			-S '+Cmp' -a 10 --arcs-only -i $@tmp \
		> $@
	$(AM_V_at)rm -f $@tmp

else !WITH_OFST_TROPICAL

### Hfst: Add æ/ä with a flag diacritic for area, then make it double-sided,
### then add an explicit tag, also including a (two-sided) flag diacritic. This
### way, the æ/ä variation is explicitly tagged, and the tag is forced to follow
### the actual surface symbol. For normative fst's only variants from the same
### area can be combined, and with the explicit tags, the area-specific
### analysers will actually be area-specific.
generator-raw-gt-desc.hfst: generator-raw-gt-desc.tmp.hfst \
					 filters/convert-æae-to-area-variant.hfst \
					 filters/insert-area-tags.hfst
	$(AM_V_XFST_TOOL)$(PRINTF) "set flag-is-epsilon OFF\n\
			read regex            \
				@\"$<\"                               \
			.o. @\"filters/convert-æae-to-area-variant.hfst\" \
			;\n\
		 twosided flag-diacritics\n\
		 define lexicon\n\
		 read regex \
				@\"filters/insert-area-tags.hfst\" \
			.o. lexicon                            \
			;\n\
		 twosided flag-diacritics\n\
		 save stack $@\n\
		 quit\n" | $(XFST_TOOL)

endif !WITH_OFST_TROPICAL


#################################################
#### TTS specific build rules:               ####

# In the second part of the first step, we add flags and tags for æ variation.
# The output of this is also used as base for the input analyser.
analyser-tts-gt-output.hfst: analyser-tts-gt-output.tmp.hfst \
					 filters/insert-æae-area-flags.hfst \
					 filters/insert-area-tags.hfst
	$(AM_V_XFST_TOOL)$(PRINTF) "set flag-is-epsilon OFF\n\
			read regex            \
				@\"$<\"                               \
			.o. @\"filters/insert-æae-area-flags.hfst\" \
			;\n\
		 set flag-is-epsilon ON\n\
		 twosided flag-diacritics\n\
		 define lexicon\n\
		 set flag-is-epsilon OFF\n\
		 read regex      \
				@\"filters/insert-area-tags.hfst\" \
			.o. lexicon                     \
			;\n\
		 twosided flag-diacritics\n\
		 $(INVERT_HFST)\
		 save stack $@\n\
		 quit\n" | $(XFST_TOOL)

# Then we create the input side - lower side of lexicon + twolc/phonology:
# Language specific override/preprocessing, due to ÆÄ variation.
analyser-tts-gt-input.pretmp.hfst: analyser-tts-gt-output.hfst \
					 filters/remove-æae-flags-after-æae.hfst \
					 filters/remove-æae-flags-after-æae.inverted.hfst
	$(AM_V_COMPOSE)\
		  $(HFST_INVERT)      $(MORE_VERBOSITY) $(HFST_FLAGS) $< \
		| $(HFST_PROJECT)     $(MORE_VERBOSITY) $(HFST_FLAGS) -p output \
		| $(HFST_COMPOSE) --xerox-composition=ON -2 filters/remove-æae-flags-after-æae.hfst \
		| $(HFST_COMPOSE) --xerox-composition=ON -1 filters/remove-æae-flags-after-æae.inverted.hfst \
		| $(HFST_DETERMINIZE) $(MORE_VERBOSITY) $(HFST_FLAGS) \
		| $(HFST_MINIMIZE)    $(MORE_VERBOSITY) $(HFST_FLAGS) \
		-o $@

# Language specific postprocessing after TWOLC rules have been applied:
analyser-tts-gt-input.tmp.hfst: analyser-tts-gt-input.tmp1.hfst \
					 filters/convert-æae-to-area-variant.hfst
	$(AM_V_XFST_TOOL)$(PRINTF) "set flag-is-epsilon OFF\n\
			read regex            \
				@\"$<\"                               \
			.o. @\"filters/convert-æae-to-area-variant.hfst\" \
			;\n\
		 twosided flag-diacritics\n\
		 save stack $@\n\
		 quit\n" | $(XFST_TOOL)

analyser-tts-gt-input.hfst  \
analyser-tts-gt-input.xfst  \
analyser-tts-gt-input.foma: \
analyser-tts-gt-input.%: analyser-tts-gt-input.tmp.%          \
					filters/remove-hyphenation-marks.%        \
					filters/remove-infl_deriv-borders.%       \
					filters/remove-word-boundary.%            \
					orthography/inituppercase.compose.%       \
					orthography/spellrelax.compose.%          \
					$(GLT_DOWNCASE_FILTER)
	$(AM_V_XFST_TOOL)$(PRINTF) "read regex \
				@\"$<\" \
				$(GLT_DOWNCASE_COMPOSE) \
			.o. @\"filters/remove-hyphenation-marks.$*\"        \
			.o. @\"filters/remove-infl_deriv-borders.$*\"       \
			.o. @\"filters/remove-word-boundary.$*\"            \
			; \n\
			define fst \n\
			set flag-is-epsilon ON\n\
			read regex fst \
			.o. @\"orthography/inituppercase.compose.$*\"       \
			.o. @\"orthography/spellrelax.compose.$*\"          \
			;\n\
		 $(INVERT_HFST)\
		 save stack $@\n\
		 quit\n" | $(XFST_TOOL)

#################################################
#### Other language specific build rules:    ####

# The SMJ morphology has some extra tags used for marking questionable
# normativity and our suggested norm:
analyser-gt-desc.%: analyser-gt-desc.tmp.% \
					filters/remove-derivation-position-tags.% \
					filters/remove-grammatical-tags.%         \
					filters/remove-norm-comp-tags.%           \
					filters/remove-use_mt-strings.%           \
					filters/remove-DNorm-tags.% \
					filters/remove-usage-tags.%
	$(AM_V_XFST_TOOL)$(PRINTF) "read regex \
				@\"filters/remove-usage-tags.$*\"               \
			.o. @\"filters/remove-derivation-position-tags.$*\" \
			.o. @\"filters/remove-grammatical-tags.$*\"         \
			.o. @\"filters/remove-norm-comp-tags.$*\"           \
			.o. @\"filters/remove-DNorm-tags.$*\"               \
			.o. @\"filters/remove-use_mt-strings.$*\"           \
			.o. @\"$<\"                                         \
			;\n\
		 $(INVERT_HFST)\
		 save stack $@\n\
		 quit\n" | $(XFST_TOOL)

analyser-gt-norm.%: analyser-gt-norm.tmp.%                                \
					filters/remove-derivation-position-tags.%             \
					filters/remove-DNorm-tags.%                           \
					filters/remove-grammatical-tags.%                     \
					filters/remove-illegal-derivation-strings-flagbased.% \
					filters/remove-MinusSpell-strings.%                   \
					filters/remove-use_mt-strings.%                       \
					filters/insert-default-compounding-tags.%             \
					filters/insert-default_left_compounding-tags.%        \
					filters/block-illegal_compound-strings.%              \
					filters/split-CmpN-tags.%                             \
					filters/convert_to_flags-CmpNP-tags.%                 \
					filters/split-CmpNP-tags.% \
					filters/remove-usage-tags.%
	$(AM_V_XFST_TOOL)$(PRINTF) "read regex \
			    @\"filters/remove-usage-tags.$*\"                           \
			.o. @\"filters/remove-derivation-position-tags.$*\"             \
			.o. @\"filters/remove-DNorm-tags.$*\"                           \
			.o. @\"filters/remove-grammatical-tags.$*\"                     \
			.o. @\"filters/block-illegal_compound-strings.$*\"              \
			.o. @\"filters/split-CmpN-tags.$*\"                             \
			.o. @\"filters/insert-default_left_compounding-tags.$*\"        \
			.o. @\"filters/insert-default-compounding-tags.$*\"             \
			.o. @\"filters/remove-illegal-derivation-strings-flagbased.$*\" \
			.o. @\"filters/convert_to_flags-CmpNP-tags.$*\"                 \
			.o. @\"filters/split-CmpNP-tags.$*\"                            \
			.o. @\"filters/remove-MinusSpell-strings.$*\"                   \
			.o. @\"filters/remove-use_mt-strings.$*\"                       \
			.o. @\"$<\"                                                     \
			;\n\
		 twosided flag-diacritics\n\
		 $(INVERT_HFST)\
		 save stack $@\n\
		 quit\n" | $(XFST_TOOL)

analyser-gt-norm.xfst: analyser-gt-norm.tmp.xfst \
					filters/remove-norm-comp-tags.xfst             \
					filters/remove-derivation-position-tags.xfst   \
					filters/remove-grammatical-tags.xfst           \
					filters/remove-illegal-derivation-strings.xfst \
					filters/remove-use_mt-strings.xfst             \
					filters/remove-DNorm-tags.xfst \
					filters/remove-usage-tags.xfst
	$(AM_V_XFST)$(PRINTF) "read regex \
			    @\"filters/remove-usage-tags.xfst\"                 \
			.o. @\"filters/remove-derivation-position-tags.xfst\"   \
			.o. @\"filters/remove-grammatical-tags.xfst\"           \
			.o. @\"filters/remove-norm-comp-tags.xfst\"             \
			.o. @\"filters/remove-DNorm-tags.xfst\"                 \
			.o. @\"filters/remove-use_mt-strings.xfst\"             \
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
					filters/remove-grammatical-tags.%         \
					filters/remove-norm-comp-tags.%           \
					filters/remove-use_mt-strings.%           \
					filters/remove-DNorm-tags.% \
					filters/remove-usage-tags.%
	$(AM_V_XFST_TOOL)$(PRINTF) "read regex \
			    @\"filters/remove-usage-tags.$*\"               \
			.o. @\"filters/remove-derivation-position-tags.$*\" \
			.o. @\"filters/remove-grammatical-tags.$*\"         \
			.o. @\"filters/remove-norm-comp-tags.$*\"           \
			.o. @\"filters/remove-DNorm-tags.$*\"               \
			.o. @\"filters/remove-use_mt-strings.$*\"           \
			.o. @\"$<\"                                         \
			;\n\
		 twosided flag-diacritics\n\
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
				filters/remove-use_mt-strings.hfst             \
				filters/rename-POS_before_Der-tags.hfst \
				filters/remove-usage-tags.hfst
	$(AM_V_HXFST)$(PRINTF) "read regex \
		    @\"filters/remove-usage-tags.hfst\"               \
		.o. @\"filters/remove-derivation-position-tags.hfst\" \
		.o. @\"filters/remove-dialect-tags.hfst\"             \
		.o. @\"filters/remove-area-tags.hfst\"                \
		.o. @\"filters/remove-norm-comp-tags.hfst\"           \
		.o. @\"filters/remove-orig_lang-tags.hfst\"           \
		.o. @\"filters/rename-POS_before_Der-tags.hfst\"      \
		.o. @\"filters/remove-use_mt-strings.hfst\"           \
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
					filters/remove-use_mt-strings.%           \
					filters/remove-DNorm-tags.% \
					filters/remove-usage-tags.%
	$(AM_V_XFST_TOOL)$(PRINTF) "read regex \
				@\"filters/remove-usage-tags.$*\"               \
			.o. @\"filters/remove-derivation-position-tags.$*\" \
			.o. @\"filters/remove-homonymy-tags.$*\"            \
	  		.o. @\"filters/remove-dialect-tags.$*\"             \
	  		.o. @\"filters/remove-area-tags.$*\"                \
			.o. @\"filters/remove-norm-comp-tags.$*\"           \
			.o. @\"filters/remove-orig_lang-tags.$*\"           \
			.o. @\"filters/rename-POS_before_Der-tags.$*\"      \
			.o. @\"filters/remove-DNorm-tags.$*\"               \
			.o. @\"filters/remove-use_mt-strings.$*\"           \
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
				filters/remove-word-boundary.hfst            \
				filters/convert-æae-to-both.hfst             \
				filters/remove-use_mt-strings.hfst           \
				filters/remove-usage-tags.hfst               \
				orthography/spellrelax-with-flagtags.compose.hfst
	$(AM_V_HXFST)$(PRINTF) "\
	set encode-weights ON\n\
	read regex \
			@\"filters/remove-usage-tags.hfst\"               \
		.o. @\"filters/remove-dialect-tags.hfst\"             \
		.o. @\"filters/remove-norm-comp-tags.hfst\"           \
		.o. @\"filters/remove-derivation-position-tags.hfst\" \
		.o. @\"filters/rename-POS_before_Der-tags.hfst\"      \
		.o. @\"filters/remove-use_mt-strings.hfst\"           \
		.o. @\"$<\"                                           \
		.o. @\"filters/convert-æae-to-both.hfst\"             \
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
					 filters/remove-MinusSpell-strings.xfst       \
					 filters/remove-use_mt-strings.xfst           \
					 filters/make-optional-lang_hom-tags.xfst     \
					 filters/make-optional-grammatical-tags.xfst  \
					filters/remove-usage-tags.xfst
	$(AM_V_XFST)$(PRINTF) "read regex \
				@\"filters/remove-usage-tags.xfst\"               \
			.o. @\"filters/make-optional-grammatical-tags.xfst\"  \
			.o. @\"filters/make-optional-lang_hom-tags.xfst\"     \
			.o. @\"filters/remove-derivation-position-tags.xfst\" \
			.o. @\"filters/remove-norm-comp-tags.xfst\"           \
			.o. @\"filters/remove-DNorm-tags.xfst\"               \
			.o. @\"filters/remove-MinusSpell-strings.xfst\"       \
			.o. @\"filters/remove-use_mt-strings.xfst\"           \
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
					 filters/remove-MinusSpell-strings.%       \
					 filters/remove-use_mt-strings.%           \
					 filters/make-optional-grammatical-tags.%  \
					 filters/make-optional-lang_hom-tags.%     \
					 filters/remove-illegal-derivation-strings-flagbased.% \
					 filters/insert-default-compounding-tags.%             \
					 filters/insert-default_left_compounding-tags.%        \
					 filters/block-illegal_compound-strings.%              \
					 filters/split-CmpN-tags.%                             \
					 filters/convert_to_flags-CmpNP-tags.%                 \
					 filters/split-CmpNP-tags.%                            \
					filters/remove-usage-tags.%
	$(AM_V_XFST_TOOL)$(PRINTF) "read regex \
				@\"filters/remove-usage-tags.$*\"               \
			.o. @\"filters/make-optional-grammatical-tags.$*\"  \
			.o. @\"filters/make-optional-lang_hom-tags.$*\"     \
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
			.o. @\"filters/remove-MinusSpell-strings.$*\"                   \
			.o. @\"filters/remove-use_mt-strings.$*\"                       \
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
					 filters/remove-use_mt-strings.%           \
					 filters/make-optional-lang_hom-tags.%     \
					 filters/make-optional-grammatical-tags.%  \
					filters/remove-usage-tags.%
	$(AM_V_XFST_TOOL)$(PRINTF) "read regex \
				@\"filters/remove-usage-tags.$*\"               \
			.o. @\"filters/make-optional-grammatical-tags.$*\"  \
			.o. @\"filters/make-optional-lang_hom-tags.$*\"     \
			.o. @\"filters/remove-derivation-position-tags.$*\" \
			.o. @\"filters/remove-norm-comp-tags.$*\"           \
			.o. @\"filters/remove-DNorm-tags.$*\"               \
			.o. @\"filters/remove-use_mt-strings.$*\"           \
			.o. @\"$<\"                                         \
			;\n\
		 $(INVERT_XFST)$(INVERT_FOMA)\
		 save stack $@\n\
		 quit\n" | $(XFST_TOOL)

# Special treatment of the HFST Grammar Checker generator:
generator-gramcheck-gt-nor%.hfst: generator-gramcheck-gt-nor%.tmp.hfst \
				filters/remove-norm-comp-tags.hfst           \
				filters/remove-derivation-position-tags.hfst \
				filters/make-optional-grammatical-tags.hfst  \
				filters/rename-POS_before_Der-tags.hfst      \
				filters/insert-default-compounding-tags.hfst \
				filters/insert-default_left_compounding-tags.hfst \
				filters/block-illegal_compound-strings.hfst  \
				filters/split-CmpN-tags.hfst                 \
				filters/convert_to_flags-CmpNP-tags.hfst     \
				filters/remove-use_mt-strings.hfst           \
				filters/split-CmpNP-tags.hfst                \
				filters/remove-usage-tags.hfst
	$(AM_V_HXFST)$(PRINTF) "\
	set encode-weights ON\n\
	read regex \
			@\"filters/remove-usage-tags.hfst\"               \
		.o. @\"filters/remove-norm-comp-tags.hfst\"           \
		.o. @\"filters/remove-derivation-position-tags.hfst\" \
		.o. @\"filters/make-optional-grammatical-tags.hfst\"  \
		.o. @\"filters/rename-POS_before_Der-tags.hfst\"      \
		.o. @\"filters/block-illegal_compound-strings.hfst\"         \
		.o. @\"filters/split-CmpN-tags.hfst\"                        \
		.o. @\"filters/insert-default_left_compounding-tags.hfst\"   \
		.o. @\"filters/insert-default-compounding-tags.hfst\"        \
		.o. @\"filters/remove-illegal-derivation-strings-flagbased.hfst\" \
		.o. @\"filters/convert_to_flags-CmpNP-tags.hfst\"            \
		.o. @\"filters/split-CmpNP-tags.hfst\"                       \
		.o. @\"filters/remove-use_mt-strings.hfst\"                  \
		.o. @\"$<\"                                           \
		;\n\
	twosided flag-diacritics\n\
	save stack $@\n\
	quit\n" | $(HFST_XFST) -p $(MORE_VERBOSITY)

# processing of AREA fst's - only Foma and Hfst because of twosided flag-diacritics:
define area_fsts
analyser-gt-norm_%.$(1): analyser-gt-norm_%.tmp.$(1)                         \
					filters/remove-derivation-position-tags.$(1)             \
					filters/remove-DNorm-tags.$(1)                           \
					filters/remove-grammatical-tags.$(1)                     \
					filters/remove-illegal-derivation-strings-flagbased.$(1) \
					filters/remove-MinusSpell-strings.$(1)                   \
					filters/remove-use_mt-strings.$(1)                       \
					filters/insert-default-compounding-tags.$(1)             \
					filters/insert-default_left_compounding-tags.$(1)        \
					filters/block-illegal_compound-strings.$(1)              \
					filters/split-CmpN-tags.$(1)                             \
					filters/convert_to_flags-CmpNP-tags.$(1)                 \
					filters/split-CmpNP-tags.$(1) \
					filters/remove-usage-tags.$(1)
	$$(AM_V_XFST_TOOL)$$(PRINTF) "read regex \
			    @\"filters/remove-usage-tags.$(1)\"                           \
			.o. @\"filters/remove-derivation-position-tags.$(1)\"             \
			.o. @\"filters/remove-DNorm-tags.$(1)\"                           \
			.o. @\"filters/remove-grammatical-tags.$(1)\"                     \
			.o. @\"filters/block-illegal_compound-strings.$(1)\"              \
			.o. @\"filters/split-CmpN-tags.$(1)\"                             \
			.o. @\"filters/insert-default_left_compounding-tags.$(1)\"        \
			.o. @\"filters/insert-default-compounding-tags.$(1)\"             \
			.o. @\"filters/remove-illegal-derivation-strings-flagbased.$(1)\" \
			.o. @\"filters/convert_to_flags-CmpNP-tags.$(1)\"                 \
			.o. @\"filters/split-CmpNP-tags.$(1)\"                            \
			.o. @\"filters/remove-MinusSpell-strings.$(1)\"                   \
			.o. @\"filters/remove-use_mt-strings.$(1)\"                       \
			.o. @\"$$<\"                                                      \
			;\n\
		 twosided flag-diacritics\n\
		 $$(INVERT_XFST)$$(INVERT_FOMA)\
		 save stack $$@\n\
		 quit\n" | $$(XFST_TOOL)

generator-gt-norm_%.$(1): generator-gt-norm_%.tmp.$(1) \
					 filters/remove-derivation-position-tags.$(1) \
					 filters/remove-norm-comp-tags.$(1)           \
					 filters/remove-DNorm-tags.$(1)               \
					 filters/remove-MinusSpell-strings.$(1)       \
					 filters/remove-use_mt-strings.$(1)           \
					 filters/make-optional-grammatical-tags.$(1)  \
					 filters/make-optional-lang_hom-tags.$(1)     \
					 filters/remove-illegal-derivation-strings-flagbased.$(1) \
					 filters/insert-default-compounding-tags.$(1)             \
					 filters/insert-default_left_compounding-tags.$(1)        \
					 filters/block-illegal_compound-strings.$(1)              \
					 filters/split-CmpN-tags.$(1)                             \
					 filters/convert_to_flags-CmpNP-tags.$(1)                 \
					 filters/split-CmpNP-tags.$(1)                            \
					filters/remove-usage-tags.$(1)
	$$(AM_V_XFST_TOOL)$$(PRINTF) "read regex \
				@\"filters/remove-usage-tags.$(1)\"               \
			.o. @\"filters/make-optional-grammatical-tags.$(1)\"  \
			.o. @\"filters/make-optional-lang_hom-tags.$(1)\"     \
			.o. @\"filters/remove-derivation-position-tags.$(1)\" \
			.o. @\"filters/remove-norm-comp-tags.$(1)\"           \
			.o. @\"filters/remove-DNorm-tags.$(1)\"               \
			.o. @\"filters/block-illegal_compound-strings.$(1)\"              \
			.o. @\"filters/split-CmpN-tags.$(1)\"                             \
			.o. @\"filters/insert-default_left_compounding-tags.$(1)\"        \
			.o. @\"filters/insert-default-compounding-tags.$(1)\"             \
			.o. @\"filters/remove-illegal-derivation-strings-flagbased.$(1)\" \
			.o. @\"filters/convert_to_flags-CmpNP-tags.$(1)\"                 \
			.o. @\"filters/split-CmpNP-tags.$(1)\"                            \
			.o. @\"filters/remove-MinusSpell-strings.$(1)\"                   \
			.o. @\"filters/remove-use_mt-strings.$(1)\"                       \
			.o. @\"$$<\"                                              \
			;\n\
		 twosided flag-diacritics\n\
		 $$(INVERT_XFST)$$(INVERT_FOMA)\
		 save stack $$@\n\
		 quit\n" | $$(XFST_TOOL)
endef
$(foreach fst,hfst foma,$(eval $(call area_fsts,$(fst))))

# Include the scripts file in the distro to ensure we can convert the smi
# propernouns file:
EXTRA_DIST=scripts/smi-smj-conversion.pl

##################################################################
#### END: Add local processing instructions ABOVE this line ######
##################################################################

include $(top_srcdir)/../giella-core/am-shared/src-dir-include.am
