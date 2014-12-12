<?php

$con=curl_init("http://api.wolframalpha.com/v2/query?appid=84PL49-2GHGJU3PLJ&input=convert%208g%20of%20gold%20to%20rupee&format=plaintext");
curl_setopt($con, CURLOPT_RETURNTRANSFER, 1);

$str=curl_exec($con);
$pos=strpos($str,'Result');
$pos=strpos($str,'rupee',$pos);
$price=substr($str,$pos+5,6);

echo $price;
curl_close($con);
?>