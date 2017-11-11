<?php 
$db_server="localhost";
$db_name="test";
$db_id="test";
$db_pw="test";
$con=mysqli_connect($db_server,$db_id,$db_pw,$db_name);
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }
?>
