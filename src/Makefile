# This is a makefile that builds the Lule Sami morphological parser
# *****************************************************************


# Here we build the final generator , an inverted transducer of the analyzer.
# It is dependent upon smj.save

ismj.fst: ../bin/ismj.fst
../bin/ismj.fst: ../bin/smj.fst
	@echo
	@echo "*** Building the inverse ismj.fst ***"
	@echo
	@printf "load ../bin/smj.save \n\
	invert net \n\
	save stack ../bin/ismj.fst \n\
	quit \n" > ../../tmp/ismj-fst-script
	@xfst < ../../tmp/ismj-fst-script
	@rm -f ../../tmp/ismj-fst-script


# This goal is to build the final analyser. It depends on all the files.

smj.fst: ../bin/smj.fst
../bin/smj.fst: ../bin/smj.save ../bin/caseconv.fst ../bin/spellrelax.fst \
	../bin/tok.fst
	@echo
	@echo "*** Building smj.fst ***" ;
	@echo
	@printf "read regex @\"../bin/smj.save\" .o. @\"../bin/caseconv.fst\" \
	.o. @\"../bin/spellrelax.fst\" ; \n\
	save stack ../bin/smj.fst \n\
	quit \n" > ../../tmp/smj-fst-script
	@xfst < ../../tmp/smj-fst-script
	@rm -f ../../tmp/smj-fst-script


# This goal is to allow for ä/æ and ö/ø mix

spellrelax.fst: ../bin/spellrelax.fst
../bin/spellrelax.fst: spellrelax.regex
	@echo
	@echo "*** Building spellrelax.fst ***" ;
	@echo
	@printf "read regex < spellrelax.regex \n\
	save stack ../bin/spellrelax.fst \n\
	quit \n" > ../../tmp/spellrelax-smj-script
	@xfst < ../../tmp/spellrelax-smj-script
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
	@xfst < ../../tmp/caseconv-smj-script
	@rm -f ../../tmp/caseconv-smj-script


# Another goal is to build a preprocessor.This goal depends on tok.txt

tok.fst: ../bin/tok.fst
../bin/tok.fst: tok.txt
	@echo
	@echo "*** Building the tokenizer tok.fst ***" ;
	@echo
	@printf "source tok.txt \n\
	save stack ../bin/tok.fst \n\
	quit \n" > ../../tmp/tok-smj-script
	@xfst < ../../tmp/tok-smj-script
	@rm -f ../../tmp/tok-smj-script


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
	@lexc < ../../tmp/smj-save-script
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
	@twolc < ../../tmp/twol-smj-script
	@rm -f ../../tmp/twol-smj-script


# Then an option to remove all the binary files

clean:
	@rm -f ../bin/*.fst ../bin/*.save ../bin/*.bin



