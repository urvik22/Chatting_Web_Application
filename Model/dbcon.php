<?php
$conn = mysqli_connect('localhost','root','','csvtask');
	if(!$conn){
		die('Connection Error'.mysqli_connect_error());
	}
?>