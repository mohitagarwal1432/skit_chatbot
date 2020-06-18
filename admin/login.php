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
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ChatBot Admin Panel</title>

    <!-- css file link -->

    <link rel="stylesheet" href="css/login.css">

    <!-- CSS only -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

    <!-- JS, Popper.js, and jQuery -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</head>


<body>
    <section id="section-1">

        <nav class="navbar navbar-inverse menubar">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand new">SKIT ChatBot Admin Panel</a>
                </div>
                <a href="https://www.skit.ac.in/"><button class="btn btn-danger navbar-btn">Go to official website</button></a>

            </div>
        </nav>

    </section>

    <section id="form">
        <div class="container">
            <section id="content">
                <form accept-charset="utf-8" action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']);?>" method="post" name="login">
                    <h1>Login Form</h1>
                    <div>
                        <input type="text" pattern="[0-9]{10}" name="Mobile" id="mobile" placeholder="Enter the Mobile" required />
                    </div>
                    <div>
                        <input type="password" id="password" name="Password" placeholder="Enter the Password" required />
                    </div>
                    <div>
                        <input type="submit" value="Log in" />

                    </div>
                </form>
            </section>
        </div>
    </section>

</html>