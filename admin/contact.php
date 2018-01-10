<?php

  require_once("mail.php");

  if(isset($_POST['name'])){
    $name = $_POST['name'];
    $email = $_POST['email'];
    $subject = $_POST['subject'];
    $message = $_POST['message'];
    $address = $_POST['address'];
    $direct = "../thankyou.php";

    // echo $name;
    // echo $email;
    // echo $message;
    // echo $street;

    if($address === ""){
      $sendMail = submitMessage($name, $email, $subject, $message, $direct);
      // echo "Street is empty";

    }
    // TO TEST THE LOGIC
    // else {
    //   echo "Street is filled";
    // }

  }

 ?>
