<?php
 
include "../connect.php";

$users_name = filterRequest("user_name");  
$users_password = sha1($_POST['users_password']);
$users_email = filterRequest("user_email");
 
 
 
$stmt = $con->prepare("SELECT * FROM users WHERE user_email = ?  ");
$stmt->execute(array($users_email));
$count = $stmt->rowCount();
if ($count > 0) {
    printFailure("EMAIL");
} else {

    $data = array(
        "user_name" => $users_name,
        "users_password" => $users_password,
         "user_email"=>$users_email,
  
    );
         
      insertData("users" , $data) ; 

}

 