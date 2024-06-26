#!/usr/bin/perl -w
#
# smi-smj-conversion.pl
# Convert names in the SMI propernoun lexicon to smj.
# $Id$

use strict;
use utf8;
use feature 'unicode_strings';
BEGIN {
       $| = 1;
       binmode(STDIN, ':encoding(UTF-8)');
       binmode(STDOUT, ':encoding(UTF-8)');
}
use open qw( :encoding(UTF-8) :std );

while(<>) {
	# Continuation lexicon substitutions:
	s/ C-FI-NEN/nen LONDON/g ;
	s/SUND/BERN/g ;
	s/HEIM/BERN/g ;
	s/NIKOSIIJA/ACCRA/g ;
	s/SIJTE/ACCRA/g ;
	s/BALAK/ANAR/g ;
	s/HAWAII/ACCRA/g ;
	s/SKANIK/SULLOT/g ;
	s/Jerusalem/!Jerusalem/g ;

	# SME escape char deletion:
	s/j9/j/g ;
	s/7 / /g ;
	s/8 / /g ;
	s/([a-z])9 /$1 /g ;
	s/d9-/d-/g ;
	s/7#/#/g ;
	s/8#/#/g ;
	s/([^jktsp])9#/$1#/g ; # Some X9 letters need to be simplified, others not, cf the twol alphabet
	s/7-/-/g ;
	s/8-/-/g ;
	s/([^jktsp])9-/$1-/g ; # Some X9 letters need to be simplified, others not, cf the twol alphabet

	# SMJ escape char insertion:
	s/ss ([^;])/ss9 $1/g ; # not in front of ; - then it is a contlex name
	s/st ([^;])/st9 $1/g ;
	s/ss#/ss9#/g ;
	s/st#/st9#/g ;

	# Substitutions due to orthographic differences between SMJ and SME:
	s/t:(.*)h /t:$1d9 /g ;
	s/t:(.*)h#/t:$1d9#/g ;
#	s/čč/ttj/g ;
#	s/Č/Tj/g ;
#	 Andreevič -> Andreevitj:
#	s/^(.*)č /$1tj:$1t9j /g ;
#	s/^(.*)č#/$1tj:$1t9j#/g ;
#	s/č /tj9 /g ;
#	s/č/tj/g ;
#	s/šž/sjtj/g ;
#	s/Šž/Sjtj/g ;
#	s/šš/ssj/g ;
#	s/žž/dtj/g ;
#	s/Š/Sj/g ;
#	s/š/sj/g ;
#	s/ž/dj/g ;
#	 j->i || Vow i .* : .* Vow _ ; Heaika:Heajka -> Heaika:Heaika. But Majken 	
#	s/([ÁAEIOUaáeiou])i(.*):(.*)([ÁAEIOUaáeiou])j/$1i$2:$3$4i/g ;
    s/([ÁAEIOUaáeiou])i([^j].*):(.*)([ÁAEIOUaáeiou])j([^ÁAEIOUaáeiou])/$1i$2:$3$4i$5/g ;

	my $line = $_;

	# Special treatment of æ in SMJ:
	if ($line =~ /[æä]/ && $line !~ /^!/) {
			# Replace space in multipart names temporarily with $.
		$line =~ s/% /\$/g;
		
		$line =~ s/^\s+//;
		
		my ($word, $rest) = split (/\s+/, $line, 2);
		$word =~ s/\$/% /g;
		if ($line !~ /\:/) {
			( my $int_word = $word )     =~ s/æ/æ9/g;
			$int_word =~ s/ä/ä9/g;
			$line = $word . ":" . $int_word . " " . $rest;
		}
		else {
			my ($upper, $lower) = split(/\:/, $word);
			( my $int_word = $lower )     =~ s/æ/æ9/g;
			$int_word =~ s/ä/ä9/g;
			$line = $upper . ":" . $int_word . " " . $rest;
		}
	}
	print $line;
}

