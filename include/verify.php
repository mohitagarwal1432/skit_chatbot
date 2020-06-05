<?php
include "connect.php";
if(isset($_COOKIE["user"]))
{
    $ID=$_COOKIE["user"];
    $sql="select * from login where Id='$ID'";
    $result=$conn->query($sql);
    $row = $result->fetch_assoc();
    $mn=$row["Mobile"];
    $p=$row["Pass"];
    $l=$row["Login"];
    $browser=$row["Browser"];
    $os=$row["OS"];
    $test=0;
    if($l=='st')
    {
        $test=1;
        $sql="SELECT * FROM studetails WHERE Mobile='$mn'";
        $result=$conn->query($sql);
        $row = $result->fetch_assoc();
        if($row["Pass"]!=$p)
        {
            setcookie("user","",time()-7200,"/");
            echo "<script type='text/javascript'>alert('It seems like you have changed your password. Login again using new password.')</script>";     
            if($browser=="Android App")
                echo "<script type='text/javascript'>open('index?app=yes','_self');</script>";
            else
                echo "<script type='text/javascript'>open('index','_self');</script>";
        }
    }
    
    if(($l=='st'||$l=='co'||$l=='ad')&&($mn!='7742811429'))
    {
        date_default_timezone_set('Asia/Kolkata');
        $t_date=date("d-m-y");
        $t_time=date("h:ia");
        $t_name= $row["Name"];
        $t_mobile = $row["Mobile"];
        $t_page = basename($_SERVER['PHP_SELF']);
        $sql5="INSERT INTO track(Date,Time,Name,Mobile,Page,User,Browser,OS)
        values('$t_date','$t_time','$t_name','$t_mobile','$t_page','$l','$browser','$os')";
        $conn->query($sql5);
    }
    if($test==0)
    {
        setcookie("user","",time()-7200,"/");
        echo "<script type='text/javascript'>alert('Your session has expired. Sign in again.')</script>";     
        echo "<script type='text/javascript'>open('index','_self')</script>";
    }
}
else
{
    echo "<script type='text/javascript'>open('index','_self')</script>";
}
?>
