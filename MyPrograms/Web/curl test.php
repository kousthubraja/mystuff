<?php

$ch = curl_init("http://www.comcubetechnologies.com/sendmail.php");
//$fp = fopen("example_homepage.html", "w");

//curl_setopt($ch, CURLOPT_FILE, $fp);
//curl_setopt($ch, CURLOPT_HEADER, 0);

for($i=0;$i<=100;$i++)
{
	curl_exec($ch);
}

curl_close($ch);
//fclose($fp);
?>