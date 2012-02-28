<div style="width:320px;padding:10px;margin-top:100px;float:left;position:fixed;background-color:#FFFFFF;">
<span style="line-height:0px;">
    <p class="header4" style="">Search here:</p>
    <p><hr style="width: 95%;" ></p>
</span>
<table border="0" width="315px">
<tr><td colspan="4" class='searchCrits' style="height:20px;text-align:right;">
<?php if (strlen($_GET['smj'])==0 && strlen($_GET['PoS'])==0 && strlen($_GET['nob'])==0 && strlen($_GET['sve'])==0 && strlen($_GET['eng'])==0 && strlen($_GET['conCenter'])==0 && strlen($_GET['lemma'])==0 && strlen($_GET['root'])==0 && strlen($_GET['gradeChange'])==0) echo ""; else echo "search criteria";   ?>
</td></tr>
<form name="criteria" action="" method="GET" accept-charset="utf-8">

<tr><td colspan="1">Lule Saami: </td><td colspan="2" style="text-align:center;width:60px;"><span class="menu1" style="font-size:12px;font-style:italic;">
<input type='radio' value="y" name="smjExact"></input>only exact hits
<!--input type='radio' value="n" name="smjExact">all hits</input-->
</span></td>
<?php if ($_GET['smjExact'] == "y") echo "<td colspan='1' align='center'  class='searchCrits' style='width:60px;text-align:left;'>✗</td>"; else echo "<td colspan='1' style='width:60px;'></td>"; ?>
</tr>

<tr><td colspan="2" ><?php echo "<input type='text' name='smj' value='".$_GET['smj']."'></input></td><td colspan='2' align='center'  class='searchCrits' style='width:60px;'>".$_GET['smj']; ?></td></tr>

<tr><td colspan="4">part of speech:</td></tr>
<tr><td colspan="2"><?php echo "<input type='text' name='PoS' value='".$_GET['PoS']."'></input></td><td colspan='2' align='center' class='searchCrits'> ".$_GET['PoS']; ?></td></tr>

<tr><td colspan="4">Norwegian translation:</td></tr>
<tr><td colspan="2"><?php echo "<input type='text' name='nob' value='".$_GET['nob']."'></input></td><td colspan='2' align='center' class='searchCrits' > ".$_GET['nob']; ?></td></tr>

<tr><td colspan="4">Swedish translation:</td></tr>
<tr><td colspan="2"><?php echo "<input type='text' name='sve' value='".$_GET['sve']."'></input></td><td colspan='2' align='center' class='searchCrits' > ".$_GET['sve']; ?></td></tr>

<tr><td colspan="4">English translation:</td></tr>
<tr><td colspan="2"><?php echo "<input type='text' name='eng' value='".$_GET['eng']."'></input></td><td colspan='2' align='center' class='searchCrits' > ".$_GET['eng']; ?></td></tr>
<!--</table>

<table border="0" width="315px">-->
<tr><td class='cellSmall'>cons. center:</td><td class='cellSmall'>root:</td><td/><td/></tr>
<tr><td><?php echo "<input type='text' class='inputSmall' name='conCenter' value='".$_GET['conCenter']."'></input></td>
<td><input type='text' class='inputSmall' name='root' value='".$_GET['root']."'></input></td>
<td align='center' class='searchCritsSmall'> ".$_GET['conCenter']."</td><td align='center' class='searchCritsSmall'> ".$_GET['root']; ?>
</td></tr>


<tr><td class='cellSmall'>lemma:</td><td class='cellSmall'>grade change:</td><td/><td/></tr>
<tr><td><?php echo "<input type='text' class='inputSmall' name='lemma' value='".$_GET['lemma']."'></input></td>
<td><input type='text' class='inputSmall' name='gradeChange' value='".$_GET['gradeChange']."'></input></td>
<td align='center' class='searchCritsSmall'> ".$_GET['lemma']."</td><td align='center' class='searchCritsSmall'> ".$_GET['gradeChange']; ?>
</td></tr>


<tr><td colspan='4'>
<input type="hidden" name="searchMode" value="advanced"></input>
<button type='submit' value='submit query'>submit query</button>
<a href="searchSMJ_SQL_long.php" target="_self"><button type='button' value='reset'>reset fields</button></a>
<?php echo "
<a href='searchSMJ_SQL_short.php?smj=".$_GET['smj']."&Pos=".$_GET['PoS']."&nob=".$_GET['nob']."&sve=".$_GET['sve']."&eng=".$_GET['eng']."&searchMode=basic' target='_self'><button type='button'>basic search</button></a>
"; ?>
</td>
</tr>
</form>
<tr><td colspan='4'>
<table border="0" class='searchCrits' style='text-align:left;width:290px;'>
<tr><td colspan='3' >wildcards:</td></tr>
<tr style='font-style:normal;'><td>%</td><td>=</td><td>zero or more characters</td></tr>
<tr style='font-style:normal;'><td>_</td><td>=</td><td>any single character</td></tr>
</table>
</td></tr>
</table>
</div>
