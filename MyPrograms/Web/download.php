<?php
$url=$_GET['url'];
$fname=$_GET['fname'];

if($url!="" && $fname!="")
{
	$fp = fopen($fname, "w");
	$con = curl_init($url);
	curl_setopt($con, CURLOPT_FILE, $fp);
	curl_setopt($con, CURLOPT_HEADER, 0);
}
curl_exec($con);
curl_close($con);
fclose($fp);
?>
<html>
<body>
	<form method="GET">
	Filename  :<input type="text" name="fname" style="width:400"><br>
	Url  :<input type="text" name="url" style="width:400"><br>

	</form>
</body>
</html>