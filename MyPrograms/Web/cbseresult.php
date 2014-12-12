<?php 
$ch = curl_init();curl_setopt($ch,CURLOPT_USERAGENT,'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.13) Gecko/20080311 Firefox/2.0.0.13');
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