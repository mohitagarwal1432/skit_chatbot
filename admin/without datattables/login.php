<?php
include "../include/connect.php";
if ($_SERVER["REQUEST_METHOD"] == "POST") 
{
    $mobile = $_POST["Mobile"];
    $password = $_POST["Password"];
    
    $sql="select * from admins where Mobile=$mobile AND Password='$password'";
    $result=$conn->query($sql);
    if($result->num_rows)
    {
        $row = $result->fetch_assoc();
        
        $all = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
        $random = '';
        for ($i = 0; $i < 25; $i++) 
            $random = $random.$all[rand(0, strlen($all)-1)];
        $cookie = $random;

        $match=0;
        while($match==0)
        {
            $sql2="select * from adminlogin where Cookie='$cookie'";
            $result2=$conn->query($sql2);
            if($result2->num_rows==0)
            {
                if($mobile==7742811429)
                    setcookie('botAdmin',"$cookie",time()+2592000,"/"); 
                else
                    setcookie('botAdmin',"$cookie",0,"/");
                $name = $row["Name"];
                $time = time();
                $sql="insert into adminlogin(Timestamp,Mobile,Name,Loginstate,Cookie)
                values($time,$mobile,'$name',1,'$cookie')";
                $sql=$conn->query($sql);
                $match=1;
                $conn->close();
                echo "<script type='text/javascript'>alert('Login Successful...')</script>";
                echo "<script type='text/javascript'>open('index','_self')</script>";
            }
            else
            {
                $all = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
                $random = '';
                for ($i = 0; $i < 25; $i++) 
                    $random = $random.$all[rand(0, strlen($all)-1)];
                $cookie = $random;
            }
        }
    }
    else
    {
        $conn->close(); 
        echo "<script type='text/javascript'>alert('Accont not found..!')</script>";
        echo "<script type='text/javascript'>open('login','_self')</script>";
    }
     
}
?>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - SKIT Bot Admin</title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
</head>
<body>
    <form accept-charset="utf-8" action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']);?>" method="post" name="login">
        <input type="tel" pattern="[0-9]{10}" name="Mobile" id="mobile" placeholder="Enter the Mobile" required>
        <br><br>
        <input type="password" id="password" name="Password" placeholder="Enter the Password" required>
        <br><br>
        <input type="submit" value="Login">      
    </form>

</html>
