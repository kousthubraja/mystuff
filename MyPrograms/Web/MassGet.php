<html>
<?php
$url=$_POST['url'];
$content=$_POST['content'];
$count=$_POST['count'];

$content=stripslashes($content);


if(strlen($url)!=0)
{
	post($url,$content,$count);
}

function post($url,$content,$count)
{
	$ch = curl_init();
	curl_setopt($ch, CURLOPT_URL, $url);
	//curl_setopt($ch, CURLOPT_POST, true);
	curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
	//curl_setopt($ch, CURLOPT_POSTFIELDS, $odata);
	
	$data=explode(PHP_EOL,$content);
	$odata=array();
	foreach($data as $line)
	{
		$sline=explode("|",$line);
		$odata[$sline[0]]=$sline[1];
	}

	//curl_setopt($ch, CURLOPT_POSTFIELDS, $odata);/

	for($i=1;$i<=$count;$i++)
	{
		curl_exec($ch);
	}
	
	$output = curl_exec($ch);
	echo $output.'<br>--------END---------';
	curl_close($ch);
}


?>

<h3>MassPost</h3>
<form method='POST'>
Filename  :<input type="text" name="url" style="width:400"><br>
<textarea name="content" rows="20" cols="100"></textarea><br>
Count	  :<input type="text" name="count">
<input type="submit">
</form>
<br><a href="/">Go back</a>
</html>