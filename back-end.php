<?php
date_default_timezone_set('Asia/Kolkata');
class Chatbot
{
    //public $questionId;
    public $timestamp;
    public $conn;
    
    function __construct()
    {
        $this->timestamp = time();
        //$this->questionId = $qid;
        $this->conn=mysqli_connect("localhost","root","","bot");
    }
    
    public function loadQuestion($qid,$spanData)
    {
        $sql="SELECT * FROM question WHERE Displayon=$qid";
        $result=$this->conn->query($sql);
        echo "<span class='caret' onclick='loadQuestion(this)'>$spanData</span><ul class='nested'>" ;
        if($result->num_rows==0)
        {
            echo "<li style='color:red'>No question found!</li>";
        }
        else
        {
            while($row=$result->fetch_assoc())
            {
                $type=$row["Type"];
                $qid=$row["Qid"];
                $content = $row["Content"];
                if($type=='button')
                {
                    echo "<li data-expend='no' data-qid='$qid'><span class='caret' onclick='loadQuestion(this)'>$content</span>";
                }
                else
                    echo "<li>$content</li>" ;
            }
        }
        echo "</ul>";
    }
    public function addQuestion($type,$content,$qid)
    {
        $sql="INSERT INTO question(Displayon,Type,Content)
        values($qid,'$type','$content')";
        $result=$this->conn->query($sql);        
    }
    
}

$bot=new Chatbot();
$function = $_POST["function"];
$function = utf8_encode($function);

switch($function)
{
    case "load_question": 
        $qid = $_POST["qid"];
        $qid = utf8_encode($qid);
        $span = $_POST["span"];
        $span = utf8_encode($span);
        $bot->loadQuestion($qid,$span);        
        break;
    case "add_question": 
        $type = $_POST["type"];
        $content = $_POST["content"];
        $qid = $_POST["qid"];
        $type = utf8_encode($type);
        $content = utf8_encode($content);
        $qid = utf8_encode($qid);
        $bot->addQuestion($type,$content,$qid);        
        break;
   
}
?>