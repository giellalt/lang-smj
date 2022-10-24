Collecting developer texts
==========================

In order to test precision, we need texts for development. The procedure for generating sentences with error alarms is described [here](https://giellalt.github.io/proof/gramcheck/GrammarCheckerDocumentation.html).

The Lule Saami development sentences should be taken from corpus texts not in use for gold corpus:

```
ccat -l smj 
~/freecorpus/converted/smj/admin/depts/other_files   
~/freecorpus/converted/smj/admin/depts/udir.no   
~/freecorpus/converted/smj/admin/folkhalsomyndigheten.se   
~/freecorpus/converted/smj/admin/giellagaldu   
~/freecorpus/converted/smj/admin/jll.se   
~/freecorpus/converted/smj/admin/lansstyrelsen.se   
~/freecorpus/converted/smj/admin/netsam   
~/freecorpus/converted/smj/admin/nordlandfk   
~/freecorpus/converted/smj/admin/nsr   
~/freecorpus/converted/smj/admin/other_files   
~/freecorpus/converted/smj/admin/sd/other_files   
~/freecorpus/converted/smj/admin/sd/reports   
~/freecorpus/converted/smj/admin/sd/white_papers   
~/freecorpus/converted/smj/admin/sou    
~/freecorpus/converted/smj/bible   
~/freecorpus/converted/smj/blogs   
~/freecorpus/converted/smj/facta/1177.se   
~/freecorpus/converted/smj/facta/L97S   
~/freecorpus/converted/smj/facta/arran.no   
~/freecorpus/converted/smj/facta/duodje_tysfjordasvo   
~/freecorpus/converted/smj/facta/folkhalsomyndigheten   
~/freecorpus/converted/smj/facta/other_files   
~/freecorpus/converted/smj/facta/samernas.se   
~/freecorpus/converted/smj/facta/skuvlahistorja3   
~/freecorpus/converted/smj/facta/skuvlahistorja6   
~/freecorpus/converted/smj/facta/umo.se   
~/freecorpus/converted/smj/facta/unginordland   
~/freecorpus/converted/smj/facta/visitstetind.no   
~/freecorpus/converted/smj/news/other_files   
~/freecorpus/converted/smj/news/samefolket.se   
~/freecorpus/converted/smj/laws   
~/freecorpus/converted/smj/news/NRK/2014   
~/freecorpus/converted/smj/news/NRK/2015   
~/freecorpus/converted/smj/news/other_files   
~/freecorpus/converted/smj/news/samefolket.se   
~/freecorpus/converted/smj/science 
~/boundcorpus/converted/smj/bible
~/boundcorpus/converted/smj/ficti
~/boundcorpus/converted/smj/news
~/boundcorpus/converted/smj/science

```


Available for goldcorpus

```
converted/admin/depts/regjeringen.no
convertd/admin/kirken.no
converted/sd/samediggi.no
converted/sd/sametinget.se
converted/admin/tysfjord
converted/facta/ajtte.com
converted/facta/calliidlagadus.org
converted/facta/fhi
converted/facta/gruvehistorie.no
converted/facta/skuvlahistorja2
converted/facta/skuvlahistorja5
converted/facta/tysfjordasvo.no
converted/facta/valg
converted/ficti/
converted/news/NRK/2007
converted/news/NRK/2012
converted/news/NRK/2013
concverted/news/lokalavisa_nordsalten/


```

