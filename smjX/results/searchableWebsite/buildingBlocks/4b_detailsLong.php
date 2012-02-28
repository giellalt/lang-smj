<div style="width:300px;padding:10px;margin-top:100px;float:right;position:fixed;margin-left:960px;background-color:#FFFFFF;">
<span style="line-height:0px;">
    <p class="header4" style="">Details here:</p>
    <p><hr style="width: 95%;" ></p>
    <p class='menu1' style='font-style:italic;font-size:11px;text-align:left;'>click any results to see details</p>
</span>
<table width="300px" border="0" cellspacing="5px">
<tr style="height:20px;font-size:9px;text-align:right;font-style:italic;"><td width="120px"></td><td id="uniqID"></td></tr>
<tr><td valign="top" style="font-style:italic;" id="smjTitle"></td><td id="smjWord" class="detailCell"></td></tr>
<tr><td valign="top" style="font-style:italic;" id="PoSTitle"></td><td id="smjPoS" class="detailCell"></td></tr>
<tr><td valign="top" style="font-style:italic;" id="nobTitle"></td><td id="nobTransl" class="detailCell"></td></tr>
<tr><td valign="top" style="font-style:italic;" id="sveTitle"></td><td id="sveTransl" class="detailCell"></td></tr>
<tr><td valign="top" style="font-style:italic;" id="engTitle"></td><td id="engTransl" class="detailCell"></td></tr>
</table>
<table width="300px" border="0" cellspacking="5px">
<tr style="text-align:left;"><td valign="top" style="font-style:italic;" id="cCenterTitle"></td><td valign="top" style="font-style:italic;" id="rootTitle"></td></tr>
<tr style="text-align:left;"><td id="conCenter" class="detailCell"></td><td id="root" class="detailCell"></td></tr>
<tr style="text-align:left;"><td valign="top" style="font-style:italic;" id="lemmaTitle"></td><td valign="top" style="font-style:italic;" id="gradeChangeTitle"></td></tr>
<tr style="text-align:left;"><td id="lemma" class="detailCell"></td><td id="gradeChange" class="detailCell"></td></tr>
</table>

<?php include("buildingBlocks/6_audioDiv.php"); ?>     

</div>


<!-- scripts to update details -->
<script type="text/javascript">
function extractSMJ(txt){
document.getElementById("smjWord").innerHTML = (txt);
document.getElementById("smjTitle").innerHTML="Lule Saami";
document.getElementById("nowPlaying").innerHTML = (txt);
}
function extractPoS(txt){
document.getElementById("smjPoS").innerHTML = (txt);
document.getElementById("PoSTitle").innerHTML="part of speech";
}
function extractNOB(txt){
document.getElementById("nobTransl").innerHTML = (txt);
document.getElementById("nobTitle").innerHTML="Norwegian";
}
function extractSVE(txt){
document.getElementById("sveTransl").innerHTML = (txt);
document.getElementById("sveTitle").innerHTML="Swedish";
}
function extractENG(txt){
document.getElementById("engTransl").innerHTML = (txt);
document.getElementById("engTitle").innerHTML="English";
}
function extractSMJ_ID(txt){
document.getElementById("uniqID").innerHTML = (txt);
}
function extractRoot(txt){
document.getElementById("root").innerHTML = (txt);
document.getElementById("rootTitle").innerHTML="root";
}
function extractLemma(txt){
document.getElementById("lemma").innerHTML = (txt);
document.getElementById("lemmaTitle").innerHTML="lemma";
}
function extractConCenter(txt){
document.getElementById("conCenter").innerHTML = (txt);
document.getElementById("cCenterTitle").innerHTML="cons. center";
}
function extractGradeChange(txt){
document.getElementById("gradeChange").innerHTML = (txt);
document.getElementById("gradeChangeTitle").innerHTML="grade change";
}
function extractAudioStatus(txt){
document.getElementById("audioStatus").innerHTML = (txt);
}
</script>
