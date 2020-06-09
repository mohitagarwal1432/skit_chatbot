<?php
include "include/connect.php";
date_default_timezone_set('Asia/Kolkata');
class Chatbot
{
    //public $questionId;
    public $timestamp;
    public $conn;
    
    function __construct($connect)
    {
        $this->timestamp = time();
        //$this->questionId = $qid;
        $this->conn=$connect;
    }
    
    public function loadResponse($qid)
    {
        $sql="SELECT * FROM question WHERE Displayon=$qid ORDER BY Displayorder";
        $result=$this->conn->query($sql);
        
        if($result->num_rows==0)
        {
            echo "<div class='chat-message-text-tab2-received chat-count'>No question found!<br><span class='time-received'></span></div>";
        }
        else
        {
            $sendButtons=0;
            $button='';
            while($row=$result->fetch_assoc())
            {
                $type=$row["Type"];
                $qid=$row["Qid"];
                $content = $row["Content"];
                if($type=='button')
                {
                    $sendButtons=1;
                    $button.="<div class='bot-button-div' onclick=\"choiceButton('$content','$qid')\" >
                                <div class='bot-button-effect'></div>
                                <button class='bot-button'> $content </button>
                            </div>";
                }
                else
                {
                    if($sendButtons)
                    {
                        echo "<div class='chat-message-text-tab2-received chat-count'>$button<br><span class='time-received'></span></div>";
                        $sendButtons=0;
                        $button='';
                    }
                    if($type=='img')
                    {
                        $content = "<img src='$content' width='100%'>";
                    }
                    if($type=='link')
                    {
                        $remark=$row["Remark"];
                        $content = "Click on the link to visit <a href='$content' style='text-decoration:none;color:black;font-weight:bolder' target='_blank'>$remark</a>";
                    }
                    if($type=='download')
                    {
                        $remark=$row["Remark"];
                        $content = "Click on the link to download <a href='$content' style='text-decoration:none;color:black;font-weight:bolder' target='_blank' download>$remark</a>";
                    }
                    echo "<div class='chat-message-text-tab2-received chat-count'>$content<br><span class='time-received'></span></div>";
                }
            }
            if($sendButtons)
            {
                echo "<div class='chat-message-text-tab2-received chat-count'>$button<br><span class='time-received'></span></div>";
                $sendButtons=0;
                $button='';
            }
            
        }
    }
    public function saveUserInfo($name,$email,$mobile)
    {
        $all = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
        $random = '';
        for ($i = 0; $i < 25; $i++) 
            $random = $random.$all[rand(0, strlen($all)-1)];
        $cookie = $random;

        $match=0;
        while($match==0)
        {
            $sql2="select * from users where Cookie='$cookie'";
            $result2=$this->conn->query($sql2);
            if($result2->num_rows==0)
            {
                setcookie('botUser',$cookie,0,"/"); 
        
                echo "Welcome, ".$name;
                $sql="INSERT INTO users(Timestamp,Name,Email,Mobile,Cookie)
                values($this->timestamp,'$name','$email','$mobile','$cookie')";
                $sql=$this->conn->query($sql);
                $match=1;
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
}

$bot=new Chatbot($conn);
$function = $_POST["function"];
$function = utf8_encode($function);

switch($function)
{
    case "load_response": 
        $qid = $_POST["qid"];
        $qid = utf8_encode($qid);
        $bot->loadResponse($qid);        
        break;
    case "user_info": 
        $name = $_POST["name"];
        $email = $_POST["email"];
        $mobile = $_POST["mobile"];
        $name = utf8_encode($name);
        $email = utf8_encode($email);
        $mobile = utf8_encode($mobile);
        $bot->saveUserInfo($name,$email,$mobile);        
        break;
    
}
?>