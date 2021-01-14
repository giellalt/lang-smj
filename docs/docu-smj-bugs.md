Introduction
============

Just as for North Sámi, this bug file is obsolete. Now, we document the
Lule Saami bugs in [Bugzilla](http://giellatekno.uit.no/bugzilla/). This
short text is kept here until we are sure that these bugs are fixed. The
Px bug is treated elsewhere, but the treatment of diminutives must await
a fuller treatment of derivation in Lule Sámi.

Bug reports, errors
===================

The Px problem
--------------

Of all Px-case combinations, some are generated, others are not. The
smj-lex.txt file says "! ess & ill pl do not use Px that often, left
out". But there are more forms that are left out, and the coverage
differs from stem class to stem class.

These are not generated for muorra: Essive, and plural of Nom, Gen, Ill,
Com.

Diminutives of odd-syllable nouns
---------------------------------

They got the wrong stem input to DenominalNounsODD:

    gámas+N+Dim+N+Sg+Nom
    gámas+N+Dim+N+Sg+Nom    gábmassj

    gámas+N+Dim+N+Sg+Gen
    gámas+N+Dim+N+Sg+Gen    gábmasttja

An -a- was added before the Dim suffix. Check this!
