<?php
    include "../include/connect.php";
    date_default_timezone_set('Asia/Kolkata');

    if(isset($_COOKIE["botAdmin"]))
    {
        $ID=$_COOKIE["botAdmin"];
        $sql="update adminlogin set Loginstate=0 where Cookie='$ID'";
        $result=$conn->query($sql);
        setcookie('botAdmin',"",time()-7200,"/"); 
        
    }
    echo "<script type='text/javascript'>open('login','_self');</script>";
  /*
  INSERT INTO admins(Mobile,Password,Name)
VALUES(7568533320,'12345678','Harsh Gupta');
  */
?>