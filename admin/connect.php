<?php
 $user = "root";
 $pass = "root";
 $url = "localhost";
 $db = "db_portfolio";

 $link = mysqli_connect($url, $user, $pass, $db, "8889");

 //Check connection error
 if(mysqli_connect_errno()){
 	printf("Connect Failed: %s\n", mysqli_connect_error());
 	exit();
}

?>
