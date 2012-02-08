<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta name='keywords' content='Lule Saami, Mávsulasj'/>
  <link href='searchable_PHP_SQL.css' rel='stylesheet' type='text/css'/>
  <link rel='shortcut icon' href='farben4.gif'/>
  <title>search Mávsulasj</title>
</head>
<body>

<div style="width:230px;padding:10px;margin:0px;float:left;position:fixed;">
<table border="0">
<tr><td style="font-style:italic;">Search here:</td><td class='searchCrits' >
<?php if (strlen($_GET['smj'])==0 && strlen($_GET['PoS'])==0 && strlen($_GET['nob'])==0 && strlen($_GET['sve'])==0 && strlen($_GET['eng'])==0) echo ""; else echo "search criteria";   ?>
</td></tr>
<form action="" method="GET" accept-charset="utf-8">
<tr><td colspan="2">Lule Saami entry:</td></tr>
<tr><td><input type='text' name='smj' value=''></input></td><td align='center'><?php echo "<span class='searchCrits' > ".$_GET['smj']."</span>"; ?></td></tr>
<tr><td colspan="2">part of speech:</td></tr>
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

<div style="width:300px;padding:10px;margin-left:810px;float:right;position:fixed;background-color:#FFFFA3;">
<p>detailed information about a chosen entry will hopefully go here.</p>
</div>


<div style="width:560px;padding:10px;margin-left:230px;background-color:#F0E8CA;">
<?php
$resultHeader = "<p class='header4'>results";
if($_GET){
    $smj = $_GET['smj'];
    $PoS = $_GET['PoS'];
    $nob = $_GET['nob'];
    $sve = $_GET['sve'];
    $eng = $_GET['eng'];
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
              if( $qtyHits == 0 ) echo $resultHeader."</p><p>Sorry, no hits.</p>" ;
                else {
//                    echo $resultHeader."</p><p class='menu1' style='text-align:left;'>";
                    if ($emptyRequest==1) echo $resultHeader."</p><p class='menu1' style='text-align:left;'><span style='color:red;'>No search criteria entered - showing all ".$qtyHits." records</span><br/>"; 
                    else echo $resultHeader."<span style='font-size:12pt;'> (".$qtyHits." hits)</span></p><p class='menu1' style='text-align:left;'><br/>";
                    while($row = mysql_fetch_array($results)){
                        $rowENC = mb_detect_encoding($row['smj']);
                        echo "• <span style='font-size:16px;'>" . $row['smj'] . "</span> (" . $row['pos'] . "); Norw.: " . $row['nob1'] . "<br/>" ;
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
else echo $resultHeader."</p>";
?>
</div>





</body>
</html>
