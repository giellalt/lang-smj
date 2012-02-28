<!-- audio player: -->
<div style="width:300px;padding:0px;margin-top:10px;float:right;position:relative;margin-left:0px;background-color:#FFFFFF;">
<span style="line-height:0px;">
    <p class="header4" style="">Listen here:</p>
    <p><hr style="width: 95%;" ></p>
    <p class='menu1' style='font-style:italic;font-size:11px;text-align:left;' id="playHint">click a result marked by <span style='font-size:16px;color:#FF3333;'>▸</span> for audio</p>

<div id="mediaplayer"></div>
<script type="text/javascript">
    jwplayer('mediaplayer').setup({
    'flashplayer': 'buildingBlocks/audioFiles/jwplayer/player.swf',
    'id': 'playerID',
    'width': '300',
    'height': '24',
    'backcolor': 'FFFFFF',
    'frontcolor': '333333',
    'lightcolor': '0032B0',
    'controlbar': 'bottom',
//    'file': 'buildingBlocks/audioFiles/203074.mp3'
  });
</script>
<!--p class='menu1' style='font-style:italic;font-size:11px;' id="nowPlaying">nothing selected!</p-->
</span>
<p class='menu1' style='font-style:normal;font-size:11px;'><span id="audioStatus"></span>
<span style='font-style:italic;' id="nowPlaying"></span></p>
</div>
