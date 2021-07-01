## Include this file to lexc directory to build lexical automata

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

SUBDIRS = filters .

##################################################################
#### BEGIN: Add local processing instructions BELOW this line ####
##################################################################

# Set this variable to point to generated lexc source files, if any:
GENRSRCS:=

########################################################
#### Add language-specific transducer targets here: ####

if CAN_HFST
# Only build the pmatch/hfst-proc2 fst if analysers are enabled.
if WANT_MORPHOLOGY
if WANT_TOKENISERS
GIELLA_CUSTOM_PMHFSTS=tokeniser-tts-cggt-desc.pmhfst
endif # WANT_TOKENISERS
endif # WANT_MORPHOLOGY
endif # CAN_HFST

#################################################
#### Add language-specific build rules here: ####

analyser-tts-cggt-output.hfst: $(top_builddir)/src/analyser-tts-gt-output.hfst \
						 filters/make-disamb-CG-tags.hfst
	$(AM_V_HXFST)$(PRINTF) "read regex \
				@\"$<\" \
			.o. @\"filters/make-disamb-CG-tags.hfst\".i   \
			;\n\
		 save stack $@\n\
		 quit\n" | $(HFST_XFST) -p $(MORE_VERBOSITY)

analyser-tts-cggt-input.hfst: $(top_builddir)/src/analyser-tts-gt-input.hfst
	$(AM_V_CP)cp -f $< $@

# Prepare analysers used for building the tokenisers:
analyser_relabelled-tts-cggt-%.hfst: analyser-tts-cggt-%.hfst \
						 btrelabeller.hfst \
						 relabeller.hfst
	$(AM_V_HSUBST)$(HFST_SUBSTITUTE) \
		-f '@P.Pmatch.Backtrack@' -T btrelabeller.hfst $< \
		| $(HFST_SUBSTITUTE) \
		-f '@P.Pmatch.Loc@'       -T   relabeller.hfst \
		-o $@

# This is the real tokeniser build target:
tokeniser-tts-cggt-desc.pmhfst: tokeniser-tts-cggt-desc.pmscript \
					analyser_relabelled-tts-cggt-input.hfst \
					analyser_relabelled-tts-cggt-output.hfst \
					analyser-url-gt-desc.hfst
	$(AM_V_PM2FST)$(HFST_PMATCH2FST) < $< > $@.tmp
	$(AM_V_at)mv -f $@.tmp $@

##################################################################
#### END: Add local processing instructions ABOVE this line ######
##################################################################

####### Other targets: ###########
clean-local:
	-rm -f *.hfst *.xfst *.pmhfst

include $(top_srcdir)/../giella-core/am-shared/tools-tokenisers-dir-include.am
