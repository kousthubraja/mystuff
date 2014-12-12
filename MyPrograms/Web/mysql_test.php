<?php

$con=mysqli_connect("mysql6.000webhost.com","a8505110_kr","iamkr01");
/*
if (!$con)
  {
  die('Could not connect: ' . mysql_error());
  }
else
{
echo 'connected';
}
$sql = "insert into STUDENTS values(10,'web');";
echo mysql_query($sql,$con);

mysql_close($con);*/

if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }

// Create database
$sql="INSERT INTO STUDENTS VALUES(10,'DFD');";
if (mysqli_query($con,$sql))
  {
  echo "Database my_db created successfully";
  }
else
  {
  echo "Error creating database: " ;
  }
?>