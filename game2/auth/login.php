 
<?php

 
include "../connect.php";
 
$users_email = filterRequest("user_email");
$users_password = sha1($_POST["users_password"]);

getData("users" , "user_email = ? AND  users_password = ?" , array($users_email, $users_password)) ; 

 