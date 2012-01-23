<?php
$xmlDoc=new DOMDocument();
$xmlDoc->load("serachableSMJ_ALLES_G.xml");

$x=$xmlDoc->getElementsByTagName('headword');

//get the q parameter from URL
$q=$_GET["q"];

//lookup all links from the xml file if length of q>0
if (strlen($q)>0)
{
$hint="";
for($i=0; $i<($x->length); $i++)
  {
  $y=$x->item($i)->getElementsByTagName('smj');
  $pos=$x->item($i)->getElementsByTagName('pos');
  $nob=$x->item($i)->getElementsByTagName('nob');
  $sve=$x->item($i)->getElementsByTagName('sve');
  $eng=$x->item($i)->getElementsByTagName('eng');
  $z=$x->item($i)->getElementsByTagName('url');
  if ($y->item(0)->nodeType==1)
    {
    //find a link matching the search text
    if (stristr($y->item(0)->childNodes->item(0)->nodeValue,$q))
      {
      if ($hint=="")
        {
        $hint="<a href='" .
        $z->item(0)->childNodes->item(0)->nodeValue .
        "' target='_blank'>" .
        $y->item(0)->childNodes->item(0)->nodeValue .
        "</a><span class='text' style='font-size:15px'> (" . 
        $pos->item(0)->childNodes->item(0)->nodeValue . 
        "</span> <span class='smallText' style='color:red'>NOB: " .
        $nob->item(0)->childNodes->item(0)->nodeValue .
        "; SVE: " .        
        $sve->item(0)->childNodes->item(0)->nodeValue .
        "; ENG: " .        
        $eng->item(0)->childNodes->item(0)->nodeValue .
        "</span>)";
        }
      else
        {
        $hint=$hint . "<br /><a href='" .
        $z->item(0)->childNodes->item(0)->nodeValue .
        "' target='_blank'>" .
        $y->item(0)->childNodes->item(0)->nodeValue .
        "</a><span class='text' style='font-size:15px'> (" . 
        $pos->item(0)->childNodes->item(0)->nodeValue . 
        "</span> <span class='smallText' style='color:red'>NOB: " .
        $nob->item(0)->childNodes->item(0)->nodeValue .
        "; SVE: " .        
        $sve->item(0)->childNodes->item(0)->nodeValue .
        "; ENG: " .        
        $eng->item(0)->childNodes->item(0)->nodeValue .
        "</span>)";
        }
      }
    }
  }
}

// Set output to "no suggestion" if no hints were found
// or to the correct values
if ($hint=="")
  {
  $response="no suggestion";
  }
else
  {
  $response=$hint;
  }

//output the response
echo $response;
?> 