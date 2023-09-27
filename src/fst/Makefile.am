## Process this file with automake to produce Makefile.in

## Copyright (C) 2011 Samediggi

## This program is free software: you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.

## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.

## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <http://www.gnu.org/licenses/>.

# Add language-specific flags for hfst-lexc compilation here:
if HAVE_SHARED_COMMON
HFST_LEXC_LOCAL_FLAGS=--Werror # uncomment if lexc is good enough
else
HFST_LEXC_LOCAL_FLAGS=  # No --Werror if deps are missing !
endif


####### Morphology source file defs: ########

# Set this to name of lexc file containing Multichar_Symbols and LEXICON Root
GT_LEXC_ROOT=$(srcdir)/root.lexc

# Set this to the names of all regular lexc source files:
GT_LEXC_SRCS_L1_L2=\
				clitics.lexc                 \
				compounding.lexc             \
				prefixes.lexc                \
				affixes/acronyms.lexc        \
				affixes/abbreviations.lexc   \
				affixes/adjectives.lexc      \
				affixes/nouns.lexc           \
				affixes/numerals.lexc        \
				affixes/possessives.lexc     \
				affixes/pronouns.lexc        \
				affixes/propernouns.lexc     \
				affixes/symbols.lexc         \
				affixes/verbs.lexc           \
				stems/adjectives.lexc        \
				stems/adpositions.lexc       \
				stems/adverbs.lexc           \
				stems/conjunctions.lexc      \
				stems/interjections.lexc     \
				stems/nouns.lexc             \
				stems/numerals.lexc          \
				stems/particles.lexc         \
				stems/pronouns.lexc          \
				stems/subjunctions.lexc      \
				stems/verbs.lexc

# If you are building an error-detecting L2 analyser, specify the lexc files
# that differ between the regular L1 and the L2 analysers below, in L1 and
# L2 respectively. L2 files must end in "*-L2.lexc". See SME for an example.
L1=

L2=

GT_LEXC_SRCS=\
			$(GT_LEXC_SRCS_L1_L2) \
			$(L1)

GT_LEXC_L2_SRCS=\
			$(GT_LEXC_SRCS_L1_L2) \
			$(L2)

# Set this to the names of all generated lexc files, if any
GENERATED_LEXC_SRCS=generated_files/smi-$(GTLANG)-propernouns.lexc   \
					generated_files/smi-$(GTLANG)-abbreviations.lexc \
					generated_files/smi-$(GTLANG)-acronyms.lexc      \
					generated_files/smi-$(GLANG)-arabic_roman_digits.lexc \
					generated_files/smi-$(GLANG)-digits.lexc          \
					generated_files/mul-$(GLANG)-punctuation.lexc         \
					generated_files/mul-$(GLANG)-symbols.lexc

#					generated_files/sme-$(GTLANG)-propernouns.lexc   
#					generated_files/sma-$(GTLANG)-propernouns.lexc   


# change handling of shared lexical data here:
if HAVE_SHARED_COMMON
url.tmp.lexc: $(gt_SHARED_common)/src/fst/url.lexc
	$(AM_V_CP)cp -f $< $@

generated_files/mul-$(GLANG)-%.lexc: $(gt_SHARED_common)/src/fst/stems/%.lexc
	$(AM_V_at)$(MKDIR_P) generated_files
	$(AM_V_CP)cp -f $< $@
else
# this is "safe" fallback (compiles but you miss everything)
url.tmp.lexc:
	echo "LEXICON Root" > $@
	echo "< h t t p (s) %: %/ %/ ?*> # ;" >> $@

generated_files/mul-$(GLANG)-%.lexc:
	$(AM_V_at)$(MKDIR_P) generated_files
	echo "! Missing shared common data" > $@
endif
# add other lexical shared data handling here


# Set this to the names of all source xml files, if any
GT_XML_SRCS=

# Define any additional lexc sources here (compiled on their own):
GT_LOCAL_SRCS=

# Define local xfscripts here:
GT_LOCAL_XFSCRIPT_SRCS=

# Define here any additional sources just included in the distro:
GT_DISTRO_SRCS=$(top_srcdir)/src/scripts/smi-$(GTLANG)-conversion.pl \
				$(srcdir)/stems/$(GTLANG)-propernouns.lexc   \
				$(srcdir)/stems/$(GTLANG)-abbreviations.lexc \
				$(srcdir)/stems/$(GTLANG)-acronyms.lexc

### BEGIN: Local processing: ###

### List additional targets in the following variable, for build targets not
### covered by other means. This comes ***in addition to*** what you can do by
### just targeting lexicon.*: lexicon.tmp.*, and is useful if you want to build
### separate fst's that need further treatment in the src/ dir. See the language
### gle/ for an example of how this is used.

GIELLA_LOCAL_TARGETS=

if HAVE_SHARED_SMI
generated_files/smi-$(GTLANG)-propernouns.lexc: \
		$(gt_SHARED_smi)/src/fst/stems/smi-propernouns.lexc \
		$(srcdir)/stems/$(GTLANG)-propernouns.lexc
	$(AM_V_at)$(MKDIR_P) generated_files
	$(AM_V_GEN)cp -f $(srcdir)/stems/$(GTLANG)-propernouns.lexc $@
	$(AM_V_at)echo "! <--- Dump from SMI starting here: -->" >> $@ 
	$(AM_V_GEN)$(top_srcdir)/src/scripts/smi-$(GTLANG)-conversion.pl $< >> $@

generated_files/smi-$(GTLANG)-abbreviations.lexc: \
		$(gt_SHARED_smi)/src/fst/stems/smi-abbreviations.lexc \
		$(srcdir)/stems/$(GTLANG)-abbreviations.lexc
	$(AM_V_at)$(MKDIR_P) generated_files
	$(AM_V_GEN)cp -f $(srcdir)/stems/$(GTLANG)-abbreviations.lexc $@
	$(AM_V_at)echo "! <--- Dump from SMI starting here: -->" >> $@ 
	$(AM_V_GEN)$(top_srcdir)/src/scripts/smi-$(GTLANG)-conversion.pl $< >> $@

generated_files/smi-$(GTLANG)-acronyms.lexc: \
		$(gt_SHARED_smi)/src/fst/stems/smi-acronyms.lexc \
		$(srcdir)/stems/$(GTLANG)-acronyms.lexc
	$(AM_V_at)$(MKDIR_P) generated_files
	$(AM_V_GEN)cp -f $(srcdir)/stems/$(GTLANG)-acronyms.lexc $@
	$(AM_V_at)echo "! <--- Dump from SMI starting here: -->" >> $@ 
	$(AM_V_GEN)$(top_srcdir)/src/scripts/smi-$(GTLANG)-conversion.pl $< >> $@

generated_files/smi-$(GLANG)-digits.lexc: \
		$(gt_SHARED_smi)/src/fst/stems/smi-digits.lexc
	$(AM_V_at)$(MKDIR_P) generated_files
	$(AM_V_GEN)cp -f $< $@

generated_files/smi-$(GLANG)-arabic_roman_digits.lexc: \
		$(gt_SHARED_smi)/src/fst/stems/arabic_roman_digits.lexc
	$(AM_V_at)$(MKDIR_P) generated_files
	$(AM_V_GEN)cp -f $< $@
else
generated_files/smi-$(GTLANG)-propernouns.lexc:
	$(AM_V_at)$(MKDIR_P) generated_files
	$(AM_V_GEN)echo "! Missing shared smi data" > $@ 

generated_files/smi-$(GTLANG)-abbreviations.lexc:
	$(AM_V_at)$(MKDIR_P) generated_files
	$(AM_V_GEN)echo "! Missing shared smi data" > $@ 

generated_files/smi-$(GTLANG)-acronyms.lexc:
	$(AM_V_at)$(MKDIR_P) generated_files
	$(AM_V_GEN)echo "! Missing shared smi data" > $@ 

generated_files/arabic_roman_digits.lexc:
	$(AM_V_at)$(MKDIR_P) generated_files
	$(AM_V_GEN)echo "! Missing shared smi data" > $@ 

generated_files/smi-digits.lexc:
	$(AM_V_at)$(MKDIR_P) generated_files
	$(AM_V_GEN)echo "! Missing shared smi data" > $@ 

endif

if HAVE_SHARED_SME
generated_files/sme-$(GTLANG)-propernouns.lexc: \
			$(gt_SHARED_sme)/src/fst/stems/sme-propernouns.lexc
	$(AM_V_at)$(MKDIR_P) generated_files
	$(AM_V_GEN)$(top_srcdir)/src/scripts/sme-$(GTLANG)-conversion.py $< > $@
else
generated_files/sme-$(GTLANG)-propernouns.lexc:
	echo "Shared North Sami disabled: $(gt_SHARED_sme), words may be missing"
	$(AM_V_GEN)echo \
		"! MISSING $(gt_SHARED_sme)/src/fst/stems/sme-propernouns.lexc" > $@
endif

if HAVE_SHARED_SMA
generated_files/sma-$(GTLANG)-propernouns.lexc: \
			$(gt_SHARED_sma)/src/fst/stems/sma-propernouns.lexc
	$(AM_V_at)$(MKDIR_P) generated_files
	$(AM_V_GEN)$(top_srcdir)/src/scripts/sma-$(GTLANG)-conversion.py $< > $@
else
generated_files/sma-$(GTLANG)-propernouns.lexc:
	$(AM_V_at)echo "Shared South Sami disabled: $(gt_SHARED_sma), words may be missing"
	$(AM_V_GEN)echo \
		"! MISSING $(gt_SHARED_sma)/src/fst/stems/sma-propernouns.lexc" > $@
endif
### END: Local processing: ###

####### Other targets: ###########
# Clean: add local clean targets on separate lines, so that the first line can
# easily get updates from the template dir through svn merge.
clean-local:
	-rm -f *.all.* *fst *.foma *.script generated_files/*.lexc lexicon.*
	-rm -f url.lexc *.tmp*
	-rm -f *.relabel lexicon-tags.* lexicon-sigma.*

include $(srcdir)/Makefile.modifications-phon.am
include $(top_srcdir)/../giella-core/am-shared/src-morphology-dir-include.am

# vim: set ft=automake:
