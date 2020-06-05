<?php
    include "include/connect.php";
?>
<html>
<head>
    <title>SKIT bot - Admin pannel</title>
    <link rel="stylesheet" href="css/style.css">
    <script>
        var selected=0;
        var selectedPrev=0;
        function loadQuestion(ele) 
        {
            selected=ele.parentElement;
            if(selectedPrev)
            {
                console.log("selected");
                selectedPrev.style.color="black";
                selected.style.color="blue";
                selectedPrev=ele.parentElement;
            }
            else
            {
                console.log("not selected");
                selected.style.color="blue";
                selectedPrev=ele.parentElement; 
            }
            if(ele.parentElement.dataset.expend=="no")
            {
                var qid=ele.parentElement.dataset.qid;
                var spanData=ele.innerHTML;
                var xhttp;
                xhttp = new XMLHttpRequest();
                xhttp.onreadystatechange = function() 
                {
                    if (this.readyState == 4 && this.status == 200) 
                    {
                        ele.parentElement.dataset.expend="yes";
                        
                        ele.parentElement.innerHTML=this.responseText;
                        ele.classList.toggle("caret-down");                        
                    }
                    else
                    {                        
                    }
                };
                xhttp.open("POST", "back-end.php", true);
                xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
                xhttp.send("function=load_question&qid="+qid+"&span="+spanData);
            
            }
            else
            {
                ele.parentElement.dataset.expend="no";
                
            }
        }
        function takeInput()
        {
            if(selected)
            {
                document.getElementById("form").classList.toggle("active");
                document.getElementById("bottom-div").classList.toggle("align-botton-background");
            }
            else
            {
                alert("Please select a stage to add question in.");
            }
        }
        function addQuestion()
        {
            if(selected)
            {
                var content=document.getElementById("content").value;
                var type=document.getElementById("type").value;
                var qid=selected.dataset.qid;
                
                var xhttp;
                xhttp = new XMLHttpRequest();
                xhttp.onreadystatechange = function() 
                {
                    if (this.readyState == 4 && this.status == 200) 
                    {
                        alert("successful");
                        
                    }
                    else
                    {
                        
                    }
                };
                xhttp.open("POST", "back-end.php", true);
                xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
                xhttp.send("function=add_question&type="+type+"&content="+content+"&qid="+qid);
                
            }
            document.getElementById("content").value="";
            return false;
        }
        
    </script>
</head>
<body>
    <ul id="myUL">
        <?php
            $sql="select * from question where Displayon='start'";
            $result=$conn->query($sql);
            while($row=$result->fetch_assoc())
            {
                $type=$row["Type"];
                $qid=$row["Qid"];
                $content = $row["Content"];
                echo "<li data-expend='no' data-qid='$qid'>
                    <span class='caret' onclick='loadQuestion(this)'>$content</span>
                    </li>" ;
            }
        ?>
    </ul>
    <div class="align-bottom" id="bottom-div">
        <div class="form-div" id="form">
            <h3 style="color:white;text-align:center">Add Question</h3>
            <form onsubmit="return addQuestion()">
                <select id="type" required>
                    <option value="button">Button</option>
                    <option value="text">Text</option>
                    <option value="img">Image</option>
                    <option value="link">Link</option>
                    <option value="download">Download</option>
                </select>
                <br><br>
                <input type="text" id="content" placeholder="Enter the content" required>
                <br><br>
                <input type="submit" value="Add">
            </form>
        </div>
        <div class="add-dom" onclick="takeInput()"></div>
    </div>
    
    
</body>

</html>