<div style="width:600px;padding:10px;margin-top:100px;margin-left:340px;background-color:#FFFFFF;position:fixed;">
<?php
$resultHeader = "<span style='line-height:0px;'><p class='header4' style=''>Results here:";
$doubleDIV = "<p><hr style='width:95%'></p></span></div>";

//set whether to use HU-Berlin or local server (should be scripted to know automatically later)
    $surfer = "me" ; // either "me" or "hu" or "service"

    $noSurfer = "<span style='font-size:20pt;color:red;'>No surfer indicated! </span><br/>Please contact<br/><span style='color:red;font-family:".$dq."Courier".$dq."'>mavsulasj (at) gmx.net</span><br/>for support<br/>";
// connect to server
    if ($surfer == "hu") $connect = mysql_connect("mysql.cms.hu-berlin.de:3309","updp","0tM2tbUqnb");
    else if ($surfer == "me") $connect = mysql_connect("localhost","root","root");
    else if ($surfer == "service") echo "<h1>The Mávsulasj dictionary is currently off-line for servicing!</h1><p>please check back again later.</p>";
    else die($noSurfer);

if($_GET){
    $searchMode = $_GET['searchMode'];
    $dq = '"'; //double quotes
//set search specific variables for HU MySQL-server (replace apostrophe with backslash-apostrophe in search):
    if ($surfer == "hu") {
    $smj = str_replace("'","\'",$_GET['smj']);
    $smjExact = str_replace("'","\'",$_GET['smjExact']);
    $PoS = str_replace("'","\'",$_GET['PoS']);
    $nob = str_replace("'","\'",$_GET['nob']);
    $sve = str_replace("'","\'",$_GET['sve']);
    $eng = str_replace("'","\'",$_GET['eng']);
    if ($searchMode == "advanced"){
        $root = str_replace("'","\'",$_GET['root']);
        $lemma = str_replace("'","\'",$_GET['lemma']);
        $conCenter = str_replace("'","\'",$_GET['conCenter']);
        $gradeChange = str_replace("'","\'",$_GET['gradeChange']);
        };
    }
//set search specific variables for me MySQL-server (NOT replace apostrophe with backslash-apostrophe in search):
    else {
    $smj = $_GET['smj'];
    $smjExact = $_GET['smjExact'];
    $PoS = $_GET['PoS'];
    $nob = $_GET['nob'];
    $sve = $_GET['sve'];
    $eng = $_GET['eng'];
    if ($searchMode == "advanced"){
        $root = $_GET['root'];
        $lemma = $_GET['lemma'];
        $conCenter = $_GET['conCenter'];
        $gradeChange = $_GET['gradeChange'];
        };
    };
//set emptyRequest variable for output of warning that all records are being shown
    if ($smj==""&&$PoS==""&&$nob==""&&$sve==""&&$eng==""&&$root==""&&$lemma==""&&$conCenter==""&&$gradeChange=="") $emptyRequest = 1; else $emptyRequest = 0;

// connect to database
    if($connect){
        if ($surfer=="hu") $toDB = mysql_select_db("updp",$connect);
        else if ($surfer=="me") $toDB = mysql_select_db("smjDATA",$connect);
        else die($noSurfer);

        if($toDB){
            mysql_set_charset('utf8',$connect);
// to include NULL data in the search, IF necessary as follows; smj search for EXACT hits also defined:
            if ($smj=="") $querySMJ = "(smj IS NULL OR smj LIKE '%')";
                else if ($searchMode == "advanced" && $smjExact=="y") $querySMJ = "smj LIKE '" . $smj . "'";
                else $querySMJ = "smj LIKE '" . $smj . "%'";
            if ($PoS!="") $querySMJPoS = "smj_pos LIKE '" . $PoS . "%'"; else $querySMJPoS = "(smj_pos IS NULL OR smj_pos LIKE '%')";
            if ($PoS!="") $queryPoS = "pos LIKE '" . $PoS . "%'"; else $queryPoS = "(pos IS NULL OR pos LIKE '%')";
            if ($nob!="") $queryNOB = "nob1 LIKE '" . $nob . "%'"; else $queryNOB = "(nob1 IS NULL OR nob1 LIKE '%')";
            if ($sve!="") $querySVE = "sve1 LIKE '" . $sve . "%'"; else $querySVE = "(sve1 IS NULL OR sve1 LIKE '%')";
            if ($eng!="") $queryENG = "eng1 LIKE '" . $eng . "%'"; else $queryENG = "(eng1 IS NULL OR eng1 LIKE '%')";
                if ($searchMode == "advanced"){
            if ($root!="") $queryRoot = "root LIKE '" . $root . "%'"; else $queryRoot = "(root IS NULL OR root LIKE '%')";
            if ($lemma!="") $queryLemma = "lemma LIKE '" . $lemma . "%'"; else $queryLemma = "(lemma IS NULL OR lemma LIKE '%')";
            if ($conCenter!="") $queryConCenter = "con_center LIKE '" . $conCenter . "%'"; else $queryConCenter = "(con_center IS NULL OR con_center LIKE '%')";
            if ($gradeChange!="") $queryGradeChange = "grade_change LIKE '" . $gradeChange . "%'"; else $queryGradeChange = "(grade_change IS NULL OR grade_change LIKE '%')";

// the actual query here for ADVANCED search:
$query = "SELECT * 
FROM table_SIMPLE WHERE " . $querySMJ . " AND " . $queryPoS . " AND " . $queryNOB . " AND " . $querySVE . " AND " . $queryENG . " AND " . $queryRoot . " AND " . $queryLemma . " AND " . $queryConCenter . " AND " . $queryGradeChange ;}
            //the actual query here for BASIC:
                else
$query = "SELECT * FROM table_SIMPLE WHERE " . $querySMJ . " AND " . $queryPoS . " AND " . $queryNOB . " AND " . $querySVE . " AND " . $queryENG
            ;
// set array of results from query:
            $results = mysql_query($query);
            $qtyHits = mysql_num_rows($results);
// set headers for results <DIV/> after query:
if ($emptyRequest==0) $doubleDIV = "<p><hr style='width:95%'></p></span></div>
<div style='width:600px;padding:10px;margin-left:340px;background-color:#FFFFFF;height:100px'></div>
<div style='width:600px;padding:10px;margin-left:340px;background-color:#FFFFFF;margin-top:40px'>
";
else if ($emptyRequest==1) $doubleDIV = "<p><hr style='width:95%'></p><p class='menu1' style='text-align:left;color:red;'>No search criteria entered - showing all ".$qtyHits." records</p></span></div>
<div style='width:600px;padding:10px;margin-left:340px;background-color:#FFFFFF;height:100px'></div>
<div style='width:600px;padding:10px;margin-left:340px;background-color:#FFFFFF;margin-top:40px'>
";
//$clickHint = "<span class='menu1' style='font-style:italic'>click anywhere on an entry to see more details</span>";
            $searchString = "<span class='menu1' style=''>".$query."</span>";
            $clickHint = "";
// if no hits for search:
              if( $qtyHits == 0 ) echo $resultHeader."</p>".$doubleDIV."<p>Sorry, no hits.</p>" ;
// warning for all records being shown:
                else {
                    if ($emptyRequest==1) echo $resultHeader."</p>".$doubleDIV.$clickHint; 
// actual output of search results:
                    else if ($qtyHits==1)
                    echo $resultHeader."<span style='font-size:12pt;'> (".$qtyHits." hit)</span></br>".$clickHint."</p>".$doubleDIV."<p class='menu1' style='text-align:left;'>";
                    else echo $resultHeader."<span style='font-size:12pt;'> (".$qtyHits." hits)</span></br>".$clickHint."</p>".$doubleDIV."<p class='menu1' style='text-align:left;'>";
                    while($row = mysql_fetch_array($results)){
                        $rowENC = mb_detect_encoding($row['smj']);
// replace apostrophes in results with backslash-apostrophe so that javascript works:
    $smjNoApos = str_replace("'","\'",$row['smj']); 
    $nobNoApos = str_replace("'","\'",$row['nob1']); 
    $sveNoApos = str_replace("'","\'",$row['sve1']); 
    $engNoApos = str_replace("'","\'",$row['eng1']); 
    $conCenterNoApos = str_replace("'","\'",$row['con_center']); 
    $rootNoApos = str_replace("'","\'",$row['root']); 
    $lemmaNoApos = str_replace("'","\'",$row['lemma']); 
    $gradeChangeNoApos = str_replace("'","\'",$row['grade_change']); 
// actual html/javascript for lines of results:
                        echo "
                        <p class='menu1' style='text-align:left;font-size:16px;line-height:15px;' 
                        onmouseover=".$dq."this.style.color='#FF0000'".$dq." 
                        onmouseout=".$dq."this.style.color='#333333'".$dq." 
                            onclick=".$dq."
extractSMJ('".$smjNoApos."');
extractPoS('".$row['pos']."');
extractNOB('".$nobNoApos."');
extractSVE('".$sveNoApos."');
extractENG('".$engNoApos."');
extractSMJ_ID('no. ".$row['uniqueSMJ_ID']."');";
// the order of execution is important; failed scripts will keep following scripts from being executed, thus the following line
if ($searchMode != "advanced" && $row['audioLink'] != "")
    echo "jwplayer().load('buildingBlocks/audioFiles/".$row['audioLink'].".mp3');";
if ($searchMode == "advanced")
    echo "extractRoot('".$rootNoApos."');
    extractConCenter('".$conCenterNoApos."');
    extractLemma('".$lemmaNoApos."');
    extractGradeChange('".$gradeChangeNoApos."');";
if ($searchMode == "advanced" && $row['audioLink'] != "")
    echo "jwplayer().load('buildingBlocks/audioFiles/".$row['audioLink'].".mp3');";
if ($row['audioLink'] == "") // this loads an empty file into jwplayer if no file exists for an entry
    echo "jwplayer().load('buildingBlocks/audioFiles/.mp3');extractAudioStatus('no audio available for ');";
    else echo "extractAudioStatus('listen to ');";
echo $dq." value='choose'><span style='font-size:12px;'>";
                        if ($row['audioLink']!="") echo "<span style='color:#FF3333;'>▸</span> "; else echo "• ";
                        echo "</span>".$row['smj'] ;
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
