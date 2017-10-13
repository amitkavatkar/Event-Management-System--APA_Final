<?php
	$con = mysqli_connect('localhost', 'root', 'amit1997', 'eventdb');
	// Check connection
	if (!$con) {
		die("Connection failed: " . mysqli_connect_error());
	}
?>
