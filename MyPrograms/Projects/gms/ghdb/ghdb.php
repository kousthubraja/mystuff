<?php
	$ch = curl_init();
	curl_setopt($ch, CURLOPT_HEADER, 0);
	curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
	
	for($i=0;$i<5;$i++)
	{
		curl_setopt($ch,CURLOPT_URL,"http://www.exploit-db.com/ghdb/".$i);
		$page=curl_exec($ch);
		echo $page;
	}
	
?>