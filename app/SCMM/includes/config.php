<?php
$host = 'mysql';
$user = 'root';
$pass = 'rootpassword';
$db   = 'sourcecodester_scm_new';
$conn = new mysqli($host, $user, $pass);

// Check connection
if (mysqli_connect_errno()){
	echo "Failed to connect to MySQL: " . mysqli_connect_error();
}
	
?>
