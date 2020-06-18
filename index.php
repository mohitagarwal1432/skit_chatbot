<html>
<head>
    <title>SKIT bot</title>
    <link rel="stylesheet" href="css/user.css">
    <link rel="stylesheet" href="css/reply-wait.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
</head>
<body>
    <div class="chat-message-text" id="bot-main-div">
        <div class="chat-message-text-tab">
            <img class="chat-message-text-tab-profile" src="photos/skitlogo.webp">
            <p>ASK ASHOK</p>
            <h3 onclick="closeBot();" class="bot-window-close"><i class="fas fa-times"></i></h3>
        </div>
        <div class="chat-message-text-tab2" id="msg">
            <div class="login-box" id="details-form">
                <h2>Fill your details</h2>
                <form accept-charset="utf-8" onsubmit="return submitUserInformation()">
                    <div class="user-box">
                        <input id="bot-user-name" type="text" required>
                        <label>Name</label>
                    </div>
                    <div class="user-box">
                        <input id="bot-user-email" type="email" required>
                        <label>E-mail</label>
                    </div>
                    <div class="user-box">
                        <input id="bot-user-mobile" pattern="[0-9]{10}" type="tel" required>
                        <label>Phone Number</label>
                    </div>
                    <input id="submitButton" type="submit" value="Submit">
                </form>
          </div>
             
        </div>
    </div>
    <div id="bot-circle-button">
        <div class="bot-circle" style="background-color:Orange" onclick="toggleBot()" title="Chat Bot"><i class="fas fa-comment-alt"></i></div>
    </div>
    <script src="js/user.js"></script>
<?php
    date_default_timezone_set('Asia/Kolkata');
    include "include/connect.php";
    if(isset($_COOKIE["botUser"]))
    {
        $ID=$_COOKIE["botUser"];
        $sql="select * from users where Cookie='$ID'";
        $result=$conn->query($sql);
        $row = $result->fetch_assoc();
        $name=$row["Name"];
        $timestamp=$row["Timestamp"];
        $time=time();
        if($time-$timestamp<=3600)
        {
?>
            <script>
                document.getElementById('details-form').style.display="none";
                document.getElementById('msg').innerHTML+="<div class='chat-message-text-tab2-received chat-count'>Welcome back, <?php echo $name; ?></div>";
                botResponse(1);
            </script>
<?php
        }
        
    }
?>
</html>
