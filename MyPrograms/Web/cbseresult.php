<?php 
$ch = curl_init();
curl_setopt($ch, CURLOPT_HEADER, 0);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
	curl_setopt($ch, CURLOPT_POST, true);
	curl_setopt($ch,CURLOPT_URL,"http://cbseresults.nic.in/class12/cbse122013.asp");

$str='';

for($i=4648750;$i<=4648767;$i+=1)
{	
curl_setopt($ch, CURLOPT_POSTFIELDS,"regno=$i");
		$page=curl_exec($ch);

		echo $page;
}
		
curl_close($ch);

?>