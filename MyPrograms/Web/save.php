<?php
$fname=$_POST['fname'];
$content=$_POST['content'];
$content=stripslashes($content);

if(strlen($fname)!=0)
{
	save($fname,$content);
}

function save($fn,$cont)
{
	$file=fopen($fn,'w+b');
	fwrite($file,$cont);
}

header("Location : OnlineNotepad.html");
?>
