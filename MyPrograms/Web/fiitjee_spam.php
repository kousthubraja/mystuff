<?php

$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, "http://www.fiitjee.com/default.aspx");
curl_setopt($ch, CURLOPT_POST, true);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);

$data = array(	
'txtName'=>'0rkmai0',
'txtCity'=>'AGRA',
'txtPhone'=>'10000000',
'txtEmail'=>'0rkmai0@gmail.com',
);

curl_setopt($ch, CURLOPT_POSTFIELDS, $data);

for($i=0;$i<=2;$i++)
{
curl_exec($ch);
}
$output = curl_exec($ch);
echo $output.'end';
curl_close($ch);

?>