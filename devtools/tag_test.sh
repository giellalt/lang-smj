#shell script to see if there are tags which are not declared in root.lexc or if tags are misspelled

echo 'Are there tags not declared in root.lexc or misspelled?'
cat src/fst/morphology/clitics.lexc src/fst/morphology/prefixes.lexc src/fst/morphology/compounding.lexc  src/fst/morphology/affixes/*lexc src/fst/morphology/stems/*lexc  ../shared-smi/src/fst/stems/*lexc |cut -d '!' -f1 |grep ' ;' | cut -d ':' -f1 |rev |cut -d ' ' -f1 |rev |sed 's/+/¢+/g' |sed 's/@/¢@/g'|tr '¢' '\n' | tr '#"' '\n'| egrep '(\+|@)' |sort -u | egrep -v '^(\+|\+%|\+\/\-|\+Cmp\-|\+Cmp%\-|\@0|\@%|\@%%)$' > lexctags

cat src/fst/morphology/root.lexc |cut -d '!' -f1 |cut -d ':' -f1 |sed 's/+/¢+/g'|sed 's/@/¢@/g' |tr '¢' '\n' | egrep '(\+|@)' |tr -d ' ' | tr -d '\t'|sort -u > roottags

echo 'Have a look at these:'

comm -23 lexctags roottags 
echo 'Checking for double semicolon in stem files:'
cat src/fst/morphology/stems/*lexc |cut -d '!' -f1 |grep ';.*;'

echo 'Checking for missing Der-tags:'
cat src/fst/morphology/stems/*lexc |cut -d '!' -f1 |grep '\+Der/.*;' |egrep -v 'Der([12345]|\+)'

echo 'Checking for double Sem-tags:'
cat src/fst/morphology/stems/*lexc |cut -d '!' -f1 |grep '+Sem.*+Sem' 



echo 'checked'
#rm lexctags roottags
