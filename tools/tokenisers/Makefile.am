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

SUBDIRS = filters . tests

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
GIELLA_CUSTOM_PMHFSTS=
endif # WANT_TOKENISERS
endif # WANT_MORPHOLOGY
endif # CAN_HFST

#################################################
#### Add language-specific build rules here: ####

##################################################################
#### END: Add local processing instructions ABOVE this line ######
##################################################################

####### Other targets: ###########
clean-local:
	-rm -f *.hfst *.xfst *.pmhfst

include $(top_srcdir)/../giella-core/am-shared/tools-tokenisers-dir-include.am
include $(top_srcdir)/../giella-core/am-shared/devtest-include.am
