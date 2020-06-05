<?php
include "include/verify.php";
echo "<script>var ID = '$ID';</script>";
?>
<html>
<head>
    <title>Chat - SKITClub</title>
    <link rel="stylesheet" href="css/fontawesome.css">  
    <script src="js/fontawesome.js"></script>
    <meta name="description" content="SKITclub.tk is college based ERP system designed for marking the atttendance of all students joining the clubs running in college. This platefrom is for the students of the Swami Keshvanand Institute of Technology, Jaipur and developed and maintained by the student of same college." />
    <meta name="keywords" content="skitclub,skit,club,SKIT club,skit club,skitclub.tk,skit jaipur,best college in jaipur">
    <meta name="author" content="Mohit Agarwal - mohitagarwal1432@gmail.com">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Roboto&display=swap');
        body
        {
            font-family: 'Roboto', sans-serif;
            margin: 0px;
        }
        .chat-navbar
        {
            height: 60px;
            width: 100%;    
            box-shadow: 0px 0px 5px 0px rgba(0,0,0,0.2);
            position: fixed;
            bottom:0px;
            display: flex;
            flex-wrap: nowrap;
            justify-content: center;
            align-items: center;
            overflow: hidden;
            background-color: white;
        }
        .chat-navbar-section
        {
            flex: 25%;
            max-width: 25%;
            height: 100%;
            display:flex;
            align-items: center;
            justify-content: center;
            flex-flow: column;
            color: rgba(0,0,0,0.5);
        }
        .chat-navbar-section:hover
        {
            cursor: pointer;
            color: black;
            background-color: #e6e6e6;
        }
        .chat-navbar-section span
        {
            font-size: 12px;
            margin-top: 5px;
        }
        .chat-navbar-section-active
        {
            color: #4267B2;
            border-top: 5px solid #4267B2;
        }
        .chat-navbar-section-active:hover
        {
            color: #4267B2;
        }
    </style>
    <!-- Message section -style -->
    <style>
        .chat-message
        {
            width: 100%;
            height: calc(100vh - 60px);
        }   
        .chat-message-friends
        {
            width: calc(24% - 01px);
            border-right: 1px solid rgba(0,0,0,0.2);
            height: calc(100% - 0px);
            float: left;
            overflow: scroll;
            
            background-color: rgba(213,218,233,0.1);
        }
        .chat-message-friends-tab
        {
            width: 100%;
            margin: 0px auto;
            height: 60px;
            display: flex;
            align-items: center;
            cursor: pointer; 
            border: none;
            outline: none;
        }
        .chat-message-friends-tab:hover
        {
                background-color: #e6e6e6;
        }
        .chat-message-friends-tab-profile
        {
            width: 50px;
            height: 50px;
            border-radius: 50%;
            background-color: #4267B2;
            margin: auto 20px;
        }
        
        
        .chat-message-text
        {
            width: 75%;
            height: 100%;
            float:right;
            position: relative;
        }
        .chat-message-text-tab
        {
            width: 100%;
            margin: 0px auto;
            position: fixed;
            height: 60px;
            display: flex;
            align-items: center;
            background-color: #f1f1f1;
            box-shadow: 2px 0px 5px 0px rgba(0,0,0,0.3);
        }
        .chat-message-text-tab-profile
        {
            width: 50px;
            height: 50px;
            border-radius: 50%;
            background-color: white;
            margin: auto 20px;
        }
        .chat-message-text-tab2
        {
            width: 100%;
            height: calc(100% - 120px);
            overflow-y: scroll;
            padding-top:60px;
            padding-bottom: 10px;
            border-bottom: 1px solid rgba(0,0,0,0.3);
        }
        .chat-message-text-tab2-sent
        {
            max-width: 80%;
            padding: 10px 10px 5px 10px;
            margin: 10px 10px 0px 0px;   
            background-color: #0084FF;
            color: white;
            clear: both;
            float: right;
            clear: both;
            border-radius: 7px 0px 10px 7px;
        }
        .chat-message-text-tab2-received
        {
            max-width: 80%;
            padding:10px 10px 5px 10px;
            margin: 10px 0px 0px 10px;
            background-color: #f1f1f1;
            clear: both;
            float: left;
            clear: both;
            border-radius: 0px 7px 7px 10px;
        }
        .time-received
        {
            color:rgba(0,0,0,0.8);
            font-size: 11px;
        }
        .time-sent
        {
            font-size: 11px;
            color:rgba(255,255,255,0.8);
            float:right
        }
        .chat-message-text-tab2-input
        {
            clear: both;
            width: calc(100% - 30px);
            height: 50px;
            bottom: 70px;
            padding: 0px 10px;
            display: flex;
            justify-content: center;
            align-items: center;
            
        }
        .chat-message-text-tab2-input input
        {
            width: calc(100% - 40px);
            height: 30px;
            padding: 0px 15px; 
            border-radius: 15px;
            outline: none;
            border:none;
            background-color: rgba(0,0,0,0.1);
        }
        #mobile
        {
            display: none;
            cursor: pointer;
        }
        @media screen and (max-width: 900px)
        {
            .chat-message-friends
            {
                width: calc(100% - 0px);
                border-right: none;
                height: calc(100% - 0px);
                float: none;
            }  
            .chat-message-text
            {
                width: 100%;
                float:none;
                position: absolute;
                top:0px;
                left: 0px;
                z-index: 100%;
                background-color: white;
                display: none;
            }
            #mobile
            {
                display: block;
            }
        }
    </style>
    <script>
        function autoscroll()
        {   
            var el=document.getElementById('msg');
            el.scrollTo(0, el.scrollHeight);
            
        }
        function hidemobilechat()
        {
            document.getElementById('mobile-message-tab').style.display='none';
            selectedChat=0;
        }
    </script>
    <script>
        var conn = new WebSocket('ws://localhost:8080');
        conn.onopen = function(e) 
        {
            var t=1;
            var obj = '{ "set":'+t+',"ID":"'+ID+'"}';
            conn.send(obj);
            console.log("Connection established!");
        };
        conn.onclose = function(e)
        {
            var xhttp;
            xhttp = new XMLHttpRequest();
            xhttp.onreadystatechange = function() 
            {
                if (this.readyState == 4 && this.status == 200) 
                {
                    //nothing to do here
                }
            };
            xhttp.open("POST", "back-end.php", true);
            xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
            xhttp.send("function=clear_socket");
            console.log("WebSocket is closed now.");
        };
        conn.onmessage = function(e) 
        {
            var obj = JSON.parse(e.data);
            console.log(e.data);
            if(obj.sender==selectedChat)
            {
                autoRefresh(obj.msg);
                console.log("YEs");
                console.log(obj.msg);
            }
            else
            {
                console.log("no");
            }
        };
        var selectedChat=0;
        function getMessage(mno)
        {
            document.getElementById("send-button").value=mno;
            document.getElementById("input-tab").style.display="flex";
            document.getElementById("mobile-message-tab").style.display="block";
            var xhttp;
            xhttp = new XMLHttpRequest();
            xhttp.onreadystatechange = function() 
            {
                if (this.readyState == 4 && this.status == 200) 
                {
                    selectedChat=mno;
                    document.getElementById('chat-tab').innerHTML = this.responseText;
                    var str=document.getElementById('chat-tab').innerHTML;
                    var n1 = str.search("<script>")+8;
                    var n2 = str.search("</script");
                    str = str.slice(n1, n2);
                    eval(str);
                }
            };
            xhttp.open("POST", "back-end.php", true);
            xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
            xhttp.send("function=get_message&mobile="+mno);
            
        }
        function sendMsg(mno)
        {
            
            var msg = document.getElementById("message_text").value;
            document.getElementById("message_text").value="";
            var obj = '{"set":'+0+',"friend":'+mno+',"msg":"'+msg+'","ID":"'+ID+'"}';
            if(msg.length>0)
            {
                console.log(obj);
                var time = new Date();
                var msgTime=time.toLocaleString('en-US', { hour: 'numeric', minute: 'numeric', hour12: true });
                
                document.getElementById('msg').innerHTML+="<div class='chat-message-text-tab2-sent chat-count'>"+msg+"<br><span class='time-sent'>"+msgTime+" &#10003;</span></div>";
                
                //var hidden=document.getElementById('hidden-div');
                //hidden.innerHTML="<div class='chat-message-text-tab2-sent chat-count'>"+msg+"<br><span class='time-sent'>11:00 AM</span></div>";
                
                document.getElementById('msg').scrollBy(0,80);
                
                conn.send(obj);
            }
        }
        
        function autoRefresh(data)
        {
            var time = new Date();
            var msgTime=time.toLocaleString('en-US', { hour: 'numeric', minute: 'numeric', hour12: true });
            document.getElementById('msg').innerHTML+="<div class='chat-message-text-tab2-received chat-count'>"+data+"<br><span class='time-received'>"+msgTime+"</span></div>";
            
            //var hidden=document.getElementById('hidden-div');
            //hidden.innerHTML="<div class='chat-message-text-tab2-received chat-count'>"+data+"<br><span class='time-received'>11:00 AM</span></div>";
            
            document.getElementById('msg').scrollBy(0,80);
        }
        function isEnterPressed(event)
        {
            if(event.keyCode==13)
                sendMsg(selectedChat);
        }
    </script>
</head>
<body>
    <?php 
        include "nav.php";
    ?>
    <div class="chat-message">
        <div class="chat-message-friends">
            <h4 style="text-align:center;">Your Friend List</h4>
            <hr style="border:0.1px solid rgba(0,0,0,0.1);">
            <?php
                $sql="SELECT * FROM friends WHERE User=$mn";
                $result=$conn->query($sql);
                if($result->num_rows==0)
                {
                    echo "<div style='display:flex;justify-content: center;flex-flow:column;align-items: center;height:100%;color:rgba(0,0,0,.9);'>
                        <p style='text-align:center'>You donot have any friends, make friends and start chatting.</p>
                    </div>";
                }
                else
                {
                    while($row=$result->fetch_assoc())
                    {
                        $friend=$row["Friend"];
                        $sql1="SELECT Name,Profile,Gender from studetails where Mobile='$friend'";
                        $result1=$conn->query($sql1);
                        $row1=$result1->fetch_assoc();
                        $name=$row1["Name"];
                        $profile=$row1["Profile"];
                        $g=$row1["Gender"];
                        if($profile)
                        {
                            $image="./photos/profile/".$profile.".jpg";   
                        }
                        else
                        {
                            if($g=='Male')
                                $image="./photos/boy.png";  
                            else
                                $image="./photos/girl.png";
                        }
                        echo "<button class='chat-message-friends-tab' value='$friend' onclick='getMessage(this.value);'>
                            <img class='chat-message-friends-tab-profile' src='$image'>
                            <span>$name</span>
                        </button>";
                    }
                }
                    
            ?>
        </div>
        <div class="chat-message-text" id="mobile-message-tab">
            <div id="chat-tab">
                <div style="display:flex;justify-content: center;flex-flow:column;align-items: center;height:100%;color:rgba(0,0,0,.5);">
                    <i class='fas fa-paper-plane fa-5x'></i>
                    <h2 style="text-align:center;">Select someone from friend list to chat.</h2>
                </div>
            </div>
            <div class='chat-message-text-tab2-input' id="input-tab" style="display:none;">
                <input type='text' onkeydown="isEnterPressed(event)" id='message_text' placeholder='Write a message' class='chat-message-text-tab2-input'>
                <button value='' id="send-button" style='cursor:pointer;width:20px;outline:none;border:none;background-color:transparent' title='Send' onclick='sendMsg(this.value)'><i class='fas fa-paper-plane' ></i></button>
            </div>
        </div>
    </div>
    <div id="hidden-div" style="display:none;padding:20px;height:10px;overflow:scroll">
    </div>
</html>