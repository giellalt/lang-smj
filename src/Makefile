# This is a makefile that builds the Lule Sami morphological parser
# *****************************************************************


# The first goal is to build smj.save
# This goal depends on twol-smj.bin and a bunch of lexicon files

smj.save: twol-smj.bin smj-lex.txt noun-smj-lex.txt adj-smj-lex.txt \
	adv-smj-lex.txt verb-smj-lex.txt closed-smj-lex.txt
	@echo
	@echo
	@echo
	@echo "*** Building smj.save ***" ;
	@echo
	@echo
	@echo
	printf "compile-source smj-lex.txt noun-smj-lex.txt \
	adj-smj-lex.txt verb-smj-lex.txt closed-smj-lex.txt \
	adv-smj-lex.txt \n\
	read-rules twol-smj.bin \n\
	compose-result \n\
	save-result smj.save \n\
	quit \n" > /tmp/smj-save-script
	@lexc < /tmp/smj-save-script
	rm -f /tmp/smj-save-script

# The second goal is to build twol-smj.bin
# This goal depends on twol-smj.txt

twol-smj.bin: twol-smj.txt
	@echo
	@echo
	@echo
	@echo "*** Building twol-smj.bin ***" ;
	@echo
	@echo
	@echo
	@printf "read-grammar twol-smj.txt \n\
	compile \n\
	save-binary twol-smj.bin \n\
	quit \n" > /tmp/twol-smj-script
	@twolc < /tmp/twol-smj-script
	@rm -f /tmp/twol-smj-script



# ##############################################################


# What follows is copied from the sme makefile. It will be
# relevant as the Lule Sami project grows, but at this point
# it is just commented out.


# Then, the intermediate files will be cleaned up
# I leave twol-smj.bin because I need it for twolc, and tok.fst
# because that is used seperately on the command line.


#clean:
#	@rm -f caseconv.fst smj.save




# The first goal is to build smj.fst
# This goal depends on smj.save and caseconv.fst being up to date

#smj.fst: smj.save caseconv.fst
#	@echo
#	@echo "*** Building smj.fst ***" ;
#	@echo
#	@printf "read regex @\"smj.save\" .o. @\"caseconv.fst\" ; \n\
#	save stack smj.fst \n\
#	quit \n" > /tmp/smj-fst-script
#	@xfst < /tmp/smj-fst-script
#	@rm -f /tmp/smj-fst-script

# The second goal il to build the caseconv.fst file
# This goal depends on case.regex

#caseconv.fst: case.regex
#	@echo
#	@echo "*** Building caseconv.fst ***" ;
#	@echo
#	@printf "read regex < case.regex \n\
#	save stack caseconv.fst \n\
#	quit \n" > /tmp/caseconv-script
#	@xfst < /tmp/caseconv-script
#	@rm -f /tmp/caseconv-script


# If smj.fst had included the preprocessor, this part would have come in.
# Now, it does not, and this must wait for a new makefile.
# This goal depends on tok.txt

#tok.fst: tok.txt
#	@echo
#	@echo "*** Building the tokenizer tok.fst ***" ;
#	@echo
#	@printf "source tok.txt \n\
#	save stack tok.fst \n\
#	quit \n" > /tmp/tok-script
#	@xfst < /tmp/tok-script
#	@rm -f /tmp/tok-script

