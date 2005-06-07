# This is a makefile that builds the Lule Sami morphological parser
# *****************************************************************



# =============================== #
# Variable definitions		  #
# =============================== #

# Tools used when compiling the transducers
XFST = xfst -utf8
TWOLC = twolc -utf8
LEXC =  lexc -utf8


BINDIR := $(shell pwd | sed -e s/src/bin/)
INTDIR := $(shell pwd | sed -e s/src/int/)


# Here we build the final generator , an inverted transducer of the analyzer.
# It is dependent upon smj.save

ismj.fst: ../bin/ismj.fst
../bin/ismj.fst: ../bin/smj.fst ../bin/foreign.fst
	@echo
	@echo "*** Building the inverse ismj.fst ***"
	@echo
	@printf "load ../bin/smj.save \n\
	invert net \n\
	save stack ../bin/ismj.fst \n\
	quit \n" > ../../tmp/ismj-fst-script
	$(XFST) < ../../tmp/ismj-fst-script
	@rm -f ../../tmp/ismj-fst-script


# This goal is to build the final analyser. It depends on all the files.

smj.fst: ../bin/smj.fst
../bin/smj.fst: ../bin/smj.save ../bin/caseconv.fst ../bin/spellrelax.fst \
#	../bin/tok.fst
	@echo
	@echo "*** Building smj.fst ***" ;
	@echo
	@printf "read regex @\"../bin/smj.save\" .o. @\"../bin/caseconv.fst\" \
	.o. @\"../bin/spellrelax.fst\" ; \n\
	save stack ../bin/smj.fst \n\
	quit \n" > ../../tmp/smj-fst-script
	$(XFST) < ../../tmp/smj-fst-script
	@rm -f ../../tmp/smj-fst-script


# This goal is to allow for ï¿½/ï¿½ and ï¿½/ï¿½ mix

spellrelax.fst: ../bin/spellrelax.fst
../bin/spellrelax.fst: spellrelax.regex
	@echo
	@echo "*** Building spellrelax.fst ***" ;
	@echo
	@printf "read regex < spellrelax.regex \n\
	save stack ../bin/spellrelax.fst \n\
	quit \n" > ../../tmp/spellrelax-smj-script
	$(XFST) < ../../tmp/spellrelax-smj-script
	@rm -f ../../tmp/spellrelax-smj-script

# The second goal is to build the caseconv.fst file
# This goal depends on case.regex

caseconv.fst: caseconv.fst
../bin/caseconv.fst: case.regex
	@echo
	@echo "*** Building caseconv.fst ***" ;
	@echo
	@printf "read regex < case.regex \n\
	save stack ../bin/caseconv.fst \n\
	quit \n" > ../../tmp/caseconv-smj-script
	$(XFST) < ../../tmp/caseconv-smj-script
	@rm -f ../../tmp/caseconv-smj-script


# Another goal is to build a preprocessor.This goal depends on tok.txt
# Do not use unless we decide to go back to tokenize!
#tok.fst: ../bin/tok.fst
#../bin/tok.fst: tok.txt
#	@echo
#	@echo "*** Building the tokenizer tok.fst ***" ;
#	@echo
#	@printf "source tok.txt \n\
#	save stack ../bin/tok.fst \n\
#	quit \n" > ../../tmp/tok-smj-script
#	$(XFST) < ../../tmp/tok-smj-script
#	@rm -f ../../tmp/tok-smj-script


# The first goal is to build smj.save
# This goal depends on twol-smj.bin and a bunch of lexicon files

smj.save: ../bin/smj.save
../bin/smj.save: ../bin/twol-smj.bin smj-lex.txt noun-smj-lex.txt \
	adj-smj-lex.txt adv-smj-lex.txt verb-smj-lex.txt closed-smj-lex.txt \
	punct-smj-lex.txt pp-smj-lex.txt
	@echo
	@echo
	@echo
	@echo "*** Building smj.save ***" ;
	@echo
	@echo
	@echo
	printf "compile-source smj-lex.txt noun-smj-lex.txt \
	adj-smj-lex.txt verb-smj-lex.txt closed-smj-lex.txt \
	adv-smj-lex.txt pp-smj-lex.txt punct-smj-lex.txt \n\
	read-rules ../bin/twol-smj.bin \n\
	compose-result \n\
	save-result ../bin/smj.save \n\
	quit \n" > ../../tmp/smj-save-script
	$(LEXC) < ../../tmp/smj-save-script
	rm -f ../../tmp/smj-save-script


# The second goal is to build twol-smj.bin
# This goal depends on twol-smj.txt

twol-smj.bin: ../bin/twol-smj.bin
../bin/twol-smj.bin: twol-smj.txt
	@echo
	@echo
	@echo
	@echo "*** Building twol-smj.bin ***" ;
	@echo
	@echo
	@echo
	@printf "read-grammar twol-smj.txt \n\
	compile \n\
	save-binary ../bin/twol-smj.bin \n\
	quit \n" > ../../tmp/twol-smj-script
	$(TWOLC) < ../../tmp/twol-smj-script
	@rm -f ../../tmp/twol-smj-script


# Here we build a transducer that gives us only the SÃ¡mi wordforms missing from
# our transducers. Non-SÃ¡mi words from Norwegian, Finnish, English, etc. are filtered
# out by this script, as are registered typos.

missing: ../bin/missing
../bin/missing:
	@echo
	@echo "*** Generating missing ***";
	@echo
	@printf "analyzer ${BINDIR}/smj.fst\n\
	foreign ${BINDIR}/foreign.fst\n\
	typos ${BINDIR}/typos.fst\n\n\
	analyzer\n\
	foreign\n\
	typos\n" > $@


foreign.fst: ../bin/foreign.fst 
../bin/foreign.fst: ../int/old-foreign.fst ../int/new-foreign.fst
	@echo
	@echo "*** Building a transducer for foreign words ***" ;
	@echo
	@printf "load stack ../int/old-foreign.fst \n\
	load stack ../int/new-foreign.fst  \n\
	union net \n\
	save stack ../bin/foreign.fst \n\
	quit \n" > ../../tmp/foreign-smj-script
	$(XFST) < ../../tmp/foreign-smj-script
	@rm -f ../../tmp/foreign-smj-script

foreign.fst: ../int/new-foreign.fst 
../int/new-foreign.fst: ../../script/new-foreign.txt
	@echo
	@echo "*** Our transducer for new foreign words ***" ;
	@echo
	@printf "read text < ../../script/new-foreign.txt \n\
	save stack ../int/new-foreign.fst \n\
	quit \n" > ../../tmp/new-foreign-smj-script
	$(XFST) < ../../tmp/new-foreign-smj-script
	@rm -f ../../tmp/new-foreign-smj-script

foreign.fst: ../int/old-foreign.fst 
../int/old-foreign.fst: ../../script/old-foreign.txt
	@echo
	@echo "*** Our ready-built transducer for foreign words ***" ;
	@echo
	@printf "read text < ../../script/old-foreign.txt \n\
	save stack ../int/old-foreign.fst \n\
	quit \n" > ../../tmp/old-foreign-smj-script
	$(XFST) < ../../tmp/old-foreign-smj-script
	@rm -f ../../tmp/old-foreign-smj-script


typos.fst: ../bin/typos.fst 
../bin/typos.fst: ../int/typoslist.txt
	@echo
	@echo "*** Our transducer for typographical errors ***" ;
	@echo
	@printf "read text < ../int/typoslist.txt \n\
	save stack ../bin/typos.fst \n\
	quit \n" > ../../tmp/typos-smj-script
	$(XFST) < ../../tmp/typos-smj-script
	@rm -f ../../tmp/typos-smj-script

typoslist.txt: ../int/typoslist.txt
../int/typoslist.txt: typos.txt
	@echo
	@echo "*** Our list of common typographical errors ***" ;
	@echo
	@cut -f1 typos.txt > ../int/typoslist.txt


# Then an option to remove all the binary files

clean:
	@rm -f ../bin/*.fst ../bin/*.save ../bin/*.bin
	@rm -f ../int/*.fst



