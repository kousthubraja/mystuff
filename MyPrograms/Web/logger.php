<?php
$fil=fopen("accesslog2.html",'r');
$txt=fread($fil,10);
$count=intval($txt);
fclose($fil);
$count+=1;
$fil=fopen("accesslog2.html",'w');
fwrite($fil,strval($count));
fclose($fil);
?>