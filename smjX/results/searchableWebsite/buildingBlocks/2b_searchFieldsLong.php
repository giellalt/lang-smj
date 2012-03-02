<div style="width:320px;padding:10px;margin-top:100px;float:left;position:fixed;background-color:#FFFFFF;">
<span style="line-height:0px;">
    <p class="header4" style="">Search here:</p>
    <p><hr style="width: 95%;" ></p>
</span>
<table border="0" width="315px">
<form name="criteria" action="" method="GET" accept-charset="utf-8">
<tr><td colspan="2" class="searchCrits" style="height:20px;text-align:left;color:#800000;">
<?php if ($_GET['regExps']=="y") echo "in regular expression mode" ?>
</td>
<td colspan="2" class='searchCrits' style="height:20px;text-align:right;">
<?php if (strlen($_GET['smj'])==0 && strlen($_GET['PoS'])==0 && strlen($_GET['nob'])==0 && strlen($_GET['sve'])==0 && strlen($_GET['eng'])==0 && strlen($_GET['conCenter'])==0 && strlen($_GET['lemma'])==0 && strlen($_GET['root'])==0 && strlen($_GET['gradeChange'])==0) echo ""; else echo "search criteria";   ?>
</td></tr>
<!--<form name="criteria" action="" method="GET" accept-charset="utf-8">-->

<tr><td colspan="1" title='enter search criteria for a Lule Saami word here'>Lule Saami: </td>
<td colspan="2" style="text-align:center;width:60px;">
<?php if ($_GET['regExps']=="y") echo ""; else echo "<span title='select this button to restrict Lule Saami results to the exact search criterium entered' class='menu1' style='font-size:12px;font-style:italic;'>
<input type='radio' value='y' name='smjExact'></input>only exact hits</span>"; ?>
</td>
<?php if ($_GET['smjExact'] == "y") echo "<td colspan='1' align='center'  class='searchCrits' style='width:60px;text-align:left;'>✗</td>"; else echo "<td colspan='1' style='width:60px;'></td>"; ?>
</tr>

<tr><td colspan="2" ><?php echo "<input title='enter search criteria for a Lule Saami word here' type='text' name='smj' value='".$_GET['smj']."'></input></td><td colspan='2' align='center'  class='searchCrits' style='width:60px;'>".$_GET['smj']; ?></td></tr>

<tr><td colspan="4" title='enter search criteria here to limit results to a specific part of speech'>part of speech:</td></tr>
<tr><td colspan="2"><?php echo "<input title='enter search criteria here to limit results to a specific part of speech' type='text' name='PoS' value='".$_GET['PoS']."'></input></td><td colspan='2' align='center' class='searchCrits'> ".$_GET['PoS']; ?></td></tr>

<tr><td colspan="4" title='search for a specific Norwegian translation here'>Norwegian translation:</td></tr>
<tr><td colspan="2"><?php echo "<input title='search for a specific Norwegian translation here' type='text' name='nob' value='".$_GET['nob']."'></input></td><td colspan='2' align='center' class='searchCrits' > ".$_GET['nob']; ?></td></tr>

<tr><td colspan="4" title='search for a specific Swedish translation here'>Swedish translation:</td></tr>
<tr><td colspan="2"><?php echo "<input title='search for a specific Swedish translation here' type='text' name='sve' value='".$_GET['sve']."'></input></td><td colspan='2' align='center' class='searchCrits' > ".$_GET['sve']; ?></td></tr>

<tr><td colspan="4" title='search for a specific English translation here'>English translation:</td></tr>
<tr><td colspan="2"><?php echo "<input title='search for a specific English translation here' type='text' name='eng' value='".$_GET['eng']."'></input></td><td colspan='2' align='center' class='searchCrits' > ".$_GET['eng']; ?></td></tr>
<!--</table>

<table border="0" width="315px">-->
<tr><td class='cellSmall' title='enter search criteria here to limit results to a specific consonant center pattern'>cons. center:</td><td title='enter search criteria here to limit results to a specific root' class='cellSmall'>root:</td><td/><td/></tr>
<tr><td><?php echo "<input title='enter search criteria here to limit results to a specific consonant center pattern' type='text' class='inputSmall' name='conCenter' value='".$_GET['conCenter']."'></input></td>
<td><input title='enter search criteria here to limit results to a specific root' type='text' class='inputSmall' name='root' value='".$_GET['root']."'></input></td>
<td align='center' class='searchCritsSmall'> ".$_GET['conCenter']."</td><td align='center' class='searchCritsSmall'> ".$_GET['root']; ?>
</td></tr>


<tr><td class='cellSmall' title='enter search criteria here to limit results to a specific lemma'>lemma:</td><td class='cellSmall' title='enter search criteria here to limit results to a specific grade change pattern'>grade change:</td><td/><td/></tr>
<tr><td><?php echo "<input title='enter search criteria here to limit results to a specific lemma' type='text' class='inputSmall' name='lemma' value='".$_GET['lemma']."'></input></td>
<td><input title='enter search criteria here to limit results to a specific grade change pattern' type='text' class='inputSmall' name='gradeChange' value='".$_GET['gradeChange']."'></input></td>
<td align='center' class='searchCritsSmall'> ".$_GET['lemma']."</td><td align='center' class='searchCritsSmall'> ".$_GET['gradeChange']; ?>
</td></tr>


<tr><td colspan='4'>
<input type="hidden" name="searchMode" value="advanced"></input>
<button type='submit' value='submit query'>submit query</button>
<?php if ($_GET['regExps']=="y") echo "<a href='searchSMJ_SQL_longReg.php?regExps=y' target='_self'>"; else echo "<a href='searchSMJ_SQL_long.php' target='_self'>";?>
<button type='button' value='reset'>reset fields</button></a>
<?php echo "
<a href='searchSMJ_SQL_short.php?smj=".$_GET['smj']."&Pos=".$_GET['PoS']."&nob=".$_GET['nob']."&sve=".$_GET['sve']."&eng=".$_GET['eng']."&searchMode=basic' target='_self'><button type='button'>basic search</button></a>
"; ?>
</td>
</tr>

<!-- start wildcard vs. regExps here: -->
