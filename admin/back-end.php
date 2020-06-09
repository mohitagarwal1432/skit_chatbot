<?php
include "verify.php";
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
    
    public function loadQuestion($qid,$spanData)
    {
        $sql="SELECT * FROM question WHERE Displayon=$qid ORDER BY Displayorder";
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
                $remark = $row["Remark"];
                if($type=='button')
                {
                    echo "<li data-expend='no' data-type='$type' data-qid='$qid' data-remark='$remark' data-content='$content'><span class='caret' onclick='loadQuestion(this)'>$content</span>";
                }
                else
                    echo "<li data-type='$type' data-qid='$qid' data-remark='$remark' data-content='$content' onclick='changeSelectionForNormalList(this)'>$content</li>" ;
            }
        }
        echo "</ul>";
    }
    public function refereshQuestion($qid)
    {
        
        $sql="SELECT * FROM question WHERE Qid=$qid";
        $result=$this->conn->query($sql);
        $row=$result->fetch_assoc();
        $spanData = $row["Content"];
        
        $sql="SELECT * FROM question WHERE Displayon=$qid ORDER BY Displayorder";
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
                    echo "<li data-expend='no' data-type='$type' data-qid='$qid' data-content='$content'><span class='caret' onclick='loadQuestion(this)'>$content</span>";
                }
                else
                    echo "<li data-type='$type' data-qid='$qid' data-content='$content' onclick='changeSelectionForNormalList(this)'>$content</li>" ;
            }
        }
        echo "</ul>";
    }
    public function addQuestion($type,$content,$remark,$qid)
    {
        $sql="SELECT Displayon as num FROM question WHERE Displayon=$qid";
        $result=$this->conn->query($sql);
        $count = $result->num_rows;
        $count++;
        $sql="INSERT INTO question(Displayon,Type,Content,Remark,Displayorder)
        values($qid,'$type','$content','$remark',$count)";
        $result=$this->conn->query($sql);        
    }
    public function updateQuestion($type,$content,$remark,$qid)
    {
        $sql="UPDATE question set Type='$type', Content = '$content', Remark = '$remark' WHERE Qid=$qid";
        $result=$this->conn->query($sql);        
    }
    public function deleteQuestion($qid)
    {
        if($qid!=1)
        {
            $sql="DELETE FROM question WHERE Qid=$qid";
            $result=$this->conn->query($sql); 

            $sql="DELETE FROM question WHERE Displayon=$qid";
            $result=$this->conn->query($sql);

            $this->deleteComplete();   
        }
    }
    public function deleteComplete()
    {
        $sql="SELECT * FROM question";
        $result=$this->conn->query($sql); 
        while($row=$result->fetch_assoc())
        {
            $on=$row["Displayon"];
            if($on!=0)
            {
                $sql1="SELECT * FROM question WHERE Qid=$on";
                $result1=$this->conn->query($sql1); 
                if($result1->num_rows==0)
                {
                    $sql2="DELETE FROM question WHERE Displayon=$on";
                    $result2=$this->conn->query($sql2);                
                }   
            }
            
        } 
    }
    public function moveUp($qid)
    {
        if($qid!=1)
        {
            $sql="SELECT * FROM question WHERE Qid=$qid";
            $result=$this->conn->query($sql);
            $row=$result->fetch_assoc();
            
            $order=$row["Displayorder"];
            $on=$row["Displayon"];
            
            if($order!=1)
            {
                $less=$order-1;
                
                $sql="UPDATE question set Displayorder=$order WHERE Displayon=$on AND Displayorder=$less";
                $result=$this->conn->query($sql); 
                
                $sql="UPDATE question set Displayorder=$less WHERE Qid=$qid";
                $result=$this->conn->query($sql); 
            }
        }
    }
    public function moveDown($qid)
    {
        if($qid!=1)
        {
            $sql="SELECT * FROM question WHERE Qid=$qid";
            $result=$this->conn->query($sql);
            $row=$result->fetch_assoc();
            
            $order=$row["Displayorder"];
            $on=$row["Displayon"];
            
            if($order!=$result->num_rows)
            {
                $more=$order+1;
                
                $sql="UPDATE question set Displayorder=$order WHERE Displayon=$on AND Displayorder=$more";
                $result=$this->conn->query($sql); 
                
                $sql="UPDATE question set Displayorder=$more WHERE Qid=$qid";
                $result=$this->conn->query($sql); 
            }
        }
    }
    public function moveDiagonallyUp($qid)
    {
        if($qid!=1)
        {
            $sql="SELECT * FROM question WHERE Qid=$qid";
            $result=$this->conn->query($sql);
            $row=$result->fetch_assoc();
            
            $order=$row["Displayorder"];
            $on=$row["Displayon"];
            
            $sql="SELECT * FROM question WHERE Displayon=$on";
            $result=$this->conn->query($sql);
            $count=$result->num_rows;
            if($count>1)
            {
                for($i=$order+1;$i<=$count;$i++)
                {
                    $min=$i-1;
                    $sql="UPDATE question set Displayorder=$min WHERE Displayon=$on AND Displayorder=$i";
                    $result=$this->conn->query($sql);
                }


                $sql="UPDATE question set Displayon=$qid WHERE Displayon=$on AND Qid<>$qid";
                $result=$this->conn->query($sql); 

                $sql="UPDATE question set Displayorder=1 WHERE Qid=$qid";
                $result=$this->conn->query($sql); 
            }
        }
    }
    public function moveDiagonallyDown($qid)
    {
        if($qid!=1)
        {
            $sql="SELECT * FROM question WHERE Qid=$qid";
            $result=$this->conn->query($sql);
            $row=$result->fetch_assoc();
            $order=$row["Displayorder"];
            $on=$row["Displayon"];
            
            //number of elemnts on key level
            $sql="SELECT * FROM question WHERE Displayon=$on";
            $result=$this->conn->query($sql);
            $count=$result->num_rows;
                
            //number of child eelements 
            $sql="SELECT * FROM question WHERE Displayon=$qid";
            $result=$this->conn->query($sql);
            $countchild=$result->num_rows;
            
            if($countchild)
            {
            //updationg display order of key and other elements which are with key
                for($i=1;$i<=$count;$i++)
                {
                    $countchild++;
                    $sql="UPDATE question set Displayorder=$countchild WHERE Displayon=$on AND Displayorder=$i";
                    $result=$this->conn->query($sql);
                }

                //bringing chlid to same level
                $sql="UPDATE question set Displayon=$on WHERE Displayon=$qid";
                $result=$this->conn->query($sql); 
            }

        }
    }
   
    
    
}

$bot=new Chatbot($conn);
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
    case "referesh_question": 
        $qid = $_POST["qid"];
        $qid = utf8_encode($qid);
        $bot->refereshQuestion($qid);        
        break;
    case "add_question": 
        $type = $_POST["type"];
        $content = $_POST["content"];
        $remark = $_POST["remark"];
        $qid = $_POST["qid"];
        $type = utf8_encode($type);
        $content = utf8_encode($content);
        $remark = utf8_encode($remark);
        $qid = utf8_encode($qid);
        $bot->addQuestion($type,$content,$remark,$qid);        
        break;
    case "update_question": 
        $type = $_POST["type"];
        $content = $_POST["content"];
        $remark = $_POST["remark"];
        $qid = $_POST["qid"];
        $type = utf8_encode($type);
        $content = utf8_encode($content);
        $remark = utf8_encode($remark);
        $qid = utf8_encode($qid);
        $bot->updateQuestion($type,$content,$remark,$qid);        
        break;
    case "delete_question": 
        $qid = $_POST["qid"];
        $qid = utf8_encode($qid);
        $bot->deleteQuestion($qid);        
        //$bot->deleteComplete();        
        break;
    case "move_up": 
        $qid = $_POST["qid"];
        $qid = utf8_encode($qid);
        $bot->moveUp($qid);        
        //$bot->deleteComplete();        
        break;
    case "move_down": 
        $qid = $_POST["qid"];
        $qid = utf8_encode($qid);
        $bot->moveDown($qid);        
        //$bot->deleteComplete();        
        break;
    case "move_diagonally_up": 
        $qid = $_POST["qid"];
        $qid = utf8_encode($qid);
        $bot->moveDiagonallyUp($qid);        
        break;
    case "move_diagonally_down": 
        $qid = $_POST["qid"];
        $qid = utf8_encode($qid);
        $bot->moveDiagonallyDown($qid);        
        break;
   
}
?>