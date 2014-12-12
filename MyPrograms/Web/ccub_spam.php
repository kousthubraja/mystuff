<?php

$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, "http://www.comcubetechnologies.com/sendmail.php");
curl_setopt($ch, CURLOPT_POST, true);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);

$data = array(	
'name'=>'0rkmai0',
'phone'=>'100',
'mobile'=>'000',
'district'=>'CLT',
'state'=>'hell',
'email'=>'0rkmai0@gmail.com',
'comments'=>'fu*k u b1tChs!!!'
);

curl_setopt($ch, CURLOPT_POSTFIELDS, $data);

for($i=0;$i<=10;$i++)
{
curl_exec($ch);
}
$output = curl_exec($ch);
//echo $output.'end';
curl_close($ch);

?>