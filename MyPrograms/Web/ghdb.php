<?php

for($i=1;$i<=14;$i++)
{
$url='http://www.exploit-db.com/google-dorks/?action=search&ghdb_search_cat_id=$i';
$con = curl_init($url);
$fp = fopen($i, "w");
curl_setopt($con, CURLOPT_FILE, $fp);
curl_setopt($con, CURLOPT_HEADER, 0);
curl_exec($con);
fclose($fp);

}
curl_close($con);
?>