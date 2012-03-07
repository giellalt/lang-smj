<script>
<!--
document.write("<div style='width:320px;padding:10px;margin-top:"+topOffset+"px;float:left;position:fixed;background-color:#FFFFFF;'>");
//-->
</script>

<!--div style="width:320px;padding:10px;margin-top:90px;float:left;position:fixed;background-color:#FFFFFF;"-->
<span style="line-height:0px;">
    <p class="header4" style="">Search here:</p>
    <p><hr style="width: 95%;" ></p>
</span>
<table border="0" width="315px">
<tr><td colspan="4" class='searchCrits' style="height:20px;text-align:right;">
<?php if (strlen($_GET['smj'])==0 && strlen($_GET['PoS'])==0 && strlen($_GET['nob'])==0 && strlen($_GET['sve'])==0 && strlen($_GET['eng'])==0) echo ""; else echo "search criteria";   ?>
</td></tr>
<form name="criteria" action="" method="GET" accept-charset="utf-8">
<tr><td colspan="4" title='enter search criteria for a Lule Saami word here'>Lule Saami:</td></tr>
<tr><td><?php echo "<input  title='enter search criteria for a Lule Saami word here' type='text' name='smj' value='".$_GET['smj']."'></input></td><td align='center' class='searchCrits' > ".$_GET['smj']; ?></td></tr>

<tr><td colspan="2" title='enter search criteria here to limit results to a specific part of speech'>part of speech:</td></tr>
<tr><td><?php echo "<input title='enter search criteria here to limit results to a specific part of speech' type='text' name='PoS' value='".$_GET['PoS']."'></input></td><td align='center' class='searchCrits' > ".$_GET['PoS']; ?></td></tr>

<tr><td colspan="2" title='search for a specific Norwegian translation here'>Norwegian translation:</td></tr>
<tr><td><?php echo "<input title='search for a specific Norwegian translation here' type='text' name='nob' value='".$_GET['nob']."'></input></td><td align='center' class='searchCrits' > ".$_GET['nob']; ?></td></tr>

<tr><td colspan="2" title='search for a specific Swedish translation here'>Swedish translation:</td></tr>
<tr><td><?php echo "<input title='search for a specific Swedish translation here' type='text' name='sve' value='".$_GET['sve']."'></input></td><td align='center' class='searchCrits' > ".$_GET['sve']; ?></td></tr>

<tr><td colspan="2" title='search for a specific English translation here'>English translation:</td></tr>
<tr><td><?php echo "<input title='search for a specific English translation here' type='text' name='eng' value='".$_GET['eng']."'></input></td><td align='center' class='searchCrits' > ".$_GET['eng']; ?></td></tr>

<tr><td colspan='2'>
<input type="hidden" name="searchMode" value="basic"></input>
<button type='submit' value='submit query'>submit query</button>
<a href="searchSMJ_SQL_short.php" target="_self"><button type='button' value='reset'>reset fields</button></a>
<?php echo "
<a href='searchSMJ_SQL_long.php?smj=".$_GET['smj']."&Pos=".$_GET['PoS']."&nob=".$_GET['nob']."&sve=".$_GET['sve']."&eng=".$_GET['eng']."&searchMode=advanced' target='_self'><button type='button'>advanced search</button></a>
"; ?>
</td>
</tr>
</form>
<tr><td colspan='2'>
<table border="0" class='searchCrits' style='text-align:left;width:290px;'>
<tr><td colspan='3' >wildcards:</td></tr>
<tr style='font-style:normal;'><td>%</td><td>=</td><td>zero or more characters</td></tr>
<tr style='font-style:normal;'><td>_</td><td>=</td><td>any single character</td></tr>
</table>
</td></tr>
</table>

</div>
