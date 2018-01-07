<?php

  function redirect_to($location){
    if($location != NULL){
      header("Location: {$location}");
      exit;
    }
  }

  function submitMessage($name, $email, $subject, $message, $direct) {
    $to = "barbara@bombachini.com";
    $subj = $subject;
    $extra = "Reply-To: ".$email;
    $msg =  "Name: ".$name."\n\nEmail: ".$email."\n\nComments: ".$message;
    mail($to,$subj,$msg,$extra);
    $direct = $direct."?name={$name}";
    redirect_to($direct);
  }




 ?>
