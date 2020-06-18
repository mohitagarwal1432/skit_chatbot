<?php
    include "../include/connect.php";
    date_default_timezone_set('Asia/Kolkata');

    if(isset($_COOKIE["botAdmin"]))
    {
        $ID=$_COOKIE["botAdmin"];
        $sql="select * from adminlogin where Cookie='$ID'";
        $result=$conn->query($sql);
        $row = $result->fetch_assoc();
        $name=$row["Name"];
        $mobile=$row["Mobile"];
        $timestamp=$row["Timestamp"];
        $loginstate=$row["Loginstate"];
        $time=time();
        if(($time-$timestamp<=3600&&$loginstate==1)||($mobile==7742811429&&$loginstate==1))
        {
            
        }
        else
        {
            setcookie("botAdmin","",time()-7200,"/");
            echo "<script type='text/javascript'>alert('Your session expired. Please login again.');</script>";
            echo "<script type='text/javascript'>open('login','_self');</script>";
        }
    }
    else
    {
        echo "<script type='text/javascript'>alert('Please login first.');</script>";
        echo "<script type='text/javascript'>open('login','_self');</script>";
    }
?>