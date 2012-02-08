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

<div style="width:230px;padding:0px;margin:0px;float:left;">
<table border="0">
<tr><td style="font-style:italic;">Search here:</td><td class='searchCrits' >
<?php if (strlen($_GET['smj'])==0 && strlen($_GET['PoS'])==0 && strlen($_GET['nob'])==0 && strlen($_GET['sve'])==0 && strlen($_GET['eng'])==0) echo ""; else echo "criteria";   ?>
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

<div style="width:960px;padding:30px;margin-left:210px;">
<p class='header4'>results:</p>
<?php
if($_GET){
    $smj = $_GET['smj'];
    $PoS = $_GET['PoS'];
    $nob = $_GET['nob'];
    $sve = $_GET['sve'];
    $eng = $_GET['eng'];
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
              if( mysql_num_rows($results) == 0 ) echo "Sorry, no hits.";
                else {
                    echo "<p class='menu1' style='text-align:left;'>";
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
?>
</div>
</body>
</html>
