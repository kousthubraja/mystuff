
<html>
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

?>
<h3>Online Nodepad</h3>
<form method='POST'>
Filename  :<input type="text" name="fname" style="width:400"><br>
<textarea name="content" rows="20" cols="100"></textarea>
<input type="submit">
</form>
<br><a href="/">Go back</a>
</html>