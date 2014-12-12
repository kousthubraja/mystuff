<?php 
$ch = curl_init();
curl_setopt($ch, CURLOPT_HEADER, 0);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
	curl_setopt($ch, CURLOPT_POST, true);
	curl_setopt($ch,CURLOPT_URL,"http://cbseresults.nic.in/cbse122013.asp");

$str='';

for($i=23030;$i<=23040;$i+=1)
{	
curl_setopt($ch, CURLOPT_POSTFIELDS,"rollno=$i");
		$page=curl_exec($ch);

		echo $page;
}
		
curl_close($ch);

?>