<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta name='keywords' content='Lule Saami, Mávsulasj'/>
  <link href='searchable_PHP_SQL.css' rel='stylesheet' type='text/css'/>
  <link rel='shortcut icon' href='farben4.gif'/>
  <title>search Mávsulasj</title>
</head>
<body bgcolor="#FFFFFF">


<div style="height:80px;width:1220px;padding:10px;margin-left:0px;background-color:#FFFFFF;position:fixed;">
<h1 style="font-style:italic;">Mávsulasj - <span style="color:red">Lule Saami dictionary</span></h1>
</div>


<div style="width:280px;padding:10px;margin-top:100px;float:left;position:fixed;background-color:#FFFFFF;">
<p class="header4" style="">Search here:<br/><hr style="width: 95%" >
<table border="0" width="260px">
<tr><td class="header4" style=""></td><td class='searchCrits' style="height:20px;">
<?php if (strlen($_GET['smj'])==0 && strlen($_GET['PoS'])==0 && strlen($_GET['nob'])==0 && strlen($_GET['sve'])==0 && strlen($_GET['eng'])==0) echo ""; else echo "search criteria";   ?>
</td></tr>
<form action="" method="GET" accept-charset="utf-8">
<tr><td colspan="2">Lule Saami entry:</td></tr>
<tr><td><input type='text' name='smj' value=''></input></td><td align='center'><?php echo "<span class='searchCrits' > ".$_GET['smj']."</span>"; ?></td></tr>
<tr><td colspan="2">Part of speech:</td></tr>
<tr><td><input type="text" name="PoS" value=""></input></td><td align='center'><?php echo "<span class='searchCrits' > ".$_GET['PoS']."</span>" ?></td></tr>
<tr><td colspan="2">Norwegian translation:</td></tr>
<tr><td><input type="text" name="nob" value=""></input></td><td align='center'><?php echo "<span class='searchCrits' > ".$_GET['nob']."</span>" ?></td></tr>
<tr><td colspan="2">Swedish translation:</td></tr>
<tr><td><input type="text" name="sve" value=""></input></td><td align='center'><?php echo "<span class='searchCrits' > ".$_GET['sve']."</span>" ?></td></tr>
<tr><td colspan="2">English translation:</td></tr>
<tr><td><input type="text" name="eng" value=""></input></td><td align='center'><?php echo "<span class='searchCrits' > ".$_GET['eng']."</span>" ?></td></tr>
<tr><td colspan="2"><input type="submit" value="submit query"/></td></tr>
<!--tr><td colspan="2"><button type="reset" value="Reset">Reset</button></td></tr-->
<tr><td colspan="2">
<table border="0" class='searchCrits' style="text-align:left;">
<tr><td colspan="3" >wildcards:</td></tr>
<tr style="font-style:normal;"><td>%</td><td>=</td><td>zero or more characters</td></tr>
<tr style="font-style:normal;"><td>_</td><td>=</td><td>any single character</td></tr>
</table>
</td></tr>
</form>
</table>
</div>

<div style="width:300px;padding:10px;margin-top:100px;float:right;position:fixed;margin-left:920px;background-color:#FFFFFF;">
<p class="header4" style="">Details here:<br/><hr style="width: 95%" >
<span class='menu1' style='font-style:italic;font-size:11px;'>click any results to see details</span></p>
<table width="300px" border="0" cellspacing="5px">
<tr style="height:20px;font-size:9px;text-align:right;font-style:italic;"><td width="120px"></td><td id="uniqID"></td></tr>
<tr><td valign="top" style="font-style:italic;">Lule Saami</td><td id="smjWord"></td></tr>
<tr><td valign="top" style="font-style:italic;">part of speech</td><td id="smjPoS"></td></tr>
<tr><td valign="top" style="font-style:italic;">Norwegian</td><td id="nobTransl"></td></tr>
<tr><td valign="top" style="font-style:italic;">Swedish</td><td id="sveTransl"></td></tr>
<tr><td valign="top" style="font-style:italic;">English</td><td id="engTransl"></td></tr>
</table>
</div>
<script type="text/javascript">
function extractSMJ(txt){document.getElementById("smjWord").innerHTML = (txt);}
function extractPoS(txt){document.getElementById("smjPoS").innerHTML = (txt);}
function extractNOB(txt){document.getElementById("nobTransl").innerHTML = (txt);}
function extractSVE(txt){document.getElementById("sveTransl").innerHTML = (txt);}
function extractENG(txt){document.getElementById("engTransl").innerHTML = (txt);}
function extractSMJ_ID(txt){document.getElementById("uniqID").innerHTML = (txt);}
</script>

<!--div style='width:600px;margin-left:300px;background-color:red;position:fixed;height:2000px'></div-->

<div style="width:600px;padding:10px;margin-top:100px;margin-left:300px;background-color:#FFFFFF;position:fixed;">
<?php
$resultHeader = "<p class='header4'>Results here";
$doubleDIV = "<hr style='width:95%'></div>
<div style='width:600px;padding:10px;margin-left:300px;background-color:;height:100px'></div>
<div style='width:600px;padding:10px;margin-left:300px;background-color:;margin-top:40px'>
";
if($_GET){
    $smj = $_GET['smj'];
    $PoS = $_GET['PoS'];
    $nob = $_GET['nob'];
    $sve = $_GET['sve'];
    $eng = $_GET['eng'];
    $dq = '"';
        if ($smj==""&&$PoS==""&&$nob==""&&$sve==""&&$eng=="") $emptyRequest = 1; else $emptyRequest = 0;
    $connect = mysql_connect("localhost","root","root");
    if($connect){    
        $toDB = mysql_select_db("smjDATA",$connect);
        if($toDB){
            mysql_set_charset('utf8',$connect);
            $querySMJ = "smj LIKE '" . $smj . "%'";
            $querySMJPoS = "smj_pos LIKE '" . $PoS . "%'";
            $queryPoS = "pos LIKE '" . $PoS . "%'";
            $queryNOB = "nob1 LIKE '" . $nob . "%'";
            $querySVE = "sve1 LIKE '" . $sve . "%'";
            $queryENG = "eng1 LIKE '" . $eng . "%'";
            //the actual query here:
$query = "SELECT * FROM table_SIMPLE WHERE " . $querySMJ . " AND " . $queryPoS . " AND " . $queryNOB . " AND " . $querySVE . " AND " . $queryENG 
            ;
            $results = mysql_query($query);
            $qtyHits = mysql_num_rows($results);
//            $clickHint = "<span class='menu1' style='font-style:italic'>click anywhere on an entry to see more details</span>";
            $clickHint = "";
              if( $qtyHits == 0 ) echo $resultHeader."</p>".$doubleDIV."<p>Sorry, no hits.</p>" ;
                else {
                    if ($emptyRequest==1) echo $resultHeader."</p>".$doubleDIV."<p class='menu1' style='text-align:left;'><span style='color:red;'>No search criteria entered - showing all ".$qtyHits." records</span><br/>".$clickHint; 
                    else echo $resultHeader."<span style='font-size:12pt;'> (".$qtyHits." hits)</span></br>".$clickHint."</p>".$doubleDIV."<p class='menu1' style='text-align:left;'>";
                    while($row = mysql_fetch_array($results)){
                        $rowENC = mb_detect_encoding($row['smj']);
                        echo "<p class='menu1' style='text-align:left;font-size:16px;line-height:15px;' 
                        onmouseover=".$dq."this.style.color='#FF0000'".$dq." 
                        onmouseout=".$dq."this.style.color='#333333'".$dq." 
                            onclick=".$dq."
extractSMJ('".$row['smj']."');
extractPoS('".$row['pos']."');
extractNOB('".$row['nob1']."');
extractSVE('".$row['sve1']."');
extractENG('".$row['eng1']."');
extractSMJ_ID('no. ".$row['uniqueSMJ_ID']."');
".$dq." value='choose'><span style='font-size:12px;'>• </span>".$row['smj'] ;
                        echo "<span style='font-size:12px;'> (" . $row['pos'] . "); Norw.: " . $row['nob1'] . " (no. ".$row['uniqueSMJ_ID'].")</p>" ;
                        }
                    }
            echo "</p><br/>";
            } 
        else {
            die("<span style='font-size:20pt;color:red;'>Failed to connect to database! </span><br/>" . mysql_error());
        }
    }
        else {
            die("<span style='font-size:20pt;color:red;'>Failed to connect to mysql! </span><br/>" . mysql_error());
        }

}
else echo $resultHeader."</p>".$doubleDIV;
?>
</div>





</body>
</html>
