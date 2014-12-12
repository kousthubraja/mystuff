<?php
$to = "0rkmai0@gmail.com";

for($i=0;$i<=100;$i++)
{
$subject = "Test mail ".time();
$message = "Hello! This is a simple email message.   ".time();
mail($to,$subject,$message);
echo "Mail Sent.";
}
?>