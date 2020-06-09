<?php
    include "../include/connect.php";
?>
<html>
<head>
    <title>SKIT bot - Admin pannel</title>
    <link rel="stylesheet" href="css/admin.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
    <script>
        var selected=0;
        var update=0;
        function loadQuestion(ele) 
        {
            if(selected)
            {
                console.log("selected");
                selected.style.color="black";
            }
            if(update)
            {
                console.log("update");
                update.style.color="black";
                update=0;
            }
            selected=ele.parentElement;
            update=selected;
            document.getElementById("update-content").value=update.dataset.content;
            document.getElementById("update-type").value=update.dataset.type;
            document.getElementById("update-remark").value=update.dataset.remark;
            selected.style.color="blue";
            if(ele.parentElement.dataset.expend=="no")
            {
                var qid=ele.parentElement.dataset.qid;
                var spanData=ele.innerHTML;
                //Outside becouse error this waws throwing error inside the if and else
                selected.dataset.expend="yes";
                
                var xhttp;
                xhttp = new XMLHttpRequest();
                xhttp.onreadystatechange = function() 
                {
                    if (this.readyState == 4 && this.status == 200) 
                    {
                        selected.innerHTML=this.responseText;                       
                    }
                    else
                    {    
                        selected.innerHTML="<span class='caret'>"+spanData+"</span><ul class='nested'><li><img src='photos/load.gif'></li></ul>";                   
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
                document.getElementById("circle-button").style.display="none";
                document.getElementById("update-form").style.display="none";
                document.getElementById("form").style.display="block";
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
                var remark=document.getElementById("remark").value;
                var type=document.getElementById("type").value;
                var qid=selected.dataset.qid;
                
                var xhttp;
                xhttp = new XMLHttpRequest();
                xhttp.onreadystatechange = function() 
                {
                    if (this.readyState == 4 && this.status == 200) 
                    {
                        alert("Successful, Referesh page to see change.");
                        document.getElementById("form").style.display="block";
                        document.getElementById("form-loader").style.display="none";
                    }
                    else
                    {
                        document.getElementById("form").style.display="none";
                        document.getElementById("form-loader").style.display="block";
                    }
                };
                xhttp.open("POST", "back-end.php", true);
                xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
                xhttp.send("function=add_question&type="+type+"&content="+content+"&remark="+remark+"&qid="+qid);
                
            }
            document.getElementById("content").value="";
            document.getElementById("remark").value="";
            return false;
        }
        function takeUpdate()
        {
            if(update)
            {
                document.getElementById("circle-button").style.display="none";
                document.getElementById("form").style.display="none";
                document.getElementById("update-form").style.display="block";
                document.getElementById("update-form").classList.toggle("active");
                document.getElementById("bottom-div").classList.toggle("align-botton-background");
            }
            else
            {
                alert("Please select a stage to update question.");
            }
        }
        function updateQuestion()
        {
            if(update)
            {
                var content=document.getElementById("update-content").value;
                var remark=document.getElementById("update-remark").value;
                var type=document.getElementById("update-type").value;
                var qid=update.dataset.qid;
                
                var xhttp;
                xhttp = new XMLHttpRequest();
                xhttp.onreadystatechange = function() 
                {
                    if (this.readyState == 4 && this.status == 200) 
                    {
                        alert("Successful, Referesh page to see change.");
                        document.getElementById("update-form").style.display="block";
                        document.getElementById("form-loader").style.display="none";
                    }
                    else
                    {
                        document.getElementById("update-form").style.display="none";
                        document.getElementById("form-loader").style.display="block";
                    }
                };
                xhttp.open("POST", "back-end.php", true);
                xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
                xhttp.send("function=update_question&type="+type+"&content="+content+"&remark="+remark+"&qid="+qid);
                
            }
            document.getElementById("content").value="";
            return false;
        }
        function closeForm()
        {
            document.getElementById("form").style.display="none";
            document.getElementById("update-form").style.display="none";
            document.getElementById("circle-button").style.display="block";
            document.getElementById("form").classList.toggle("active");
            document.getElementById("bottom-div").classList.toggle("align-botton-background");
        }
        function deleteQuestion()
        {
            if(update)
            {
                areYouSure = confirm("Are you sure you want to delete - \""+update.dataset.content+"\" and the questions inside this.");
                if(areYouSure)
                {
                    var qid=update.dataset.qid;

                    var xhttp;
                    xhttp = new XMLHttpRequest();
                    xhttp.onreadystatechange = function() 
                    {
                        if (this.readyState == 4 && this.status == 200) 
                        {
                            alert("Successful, Referesh page to see change.");
                            document.getElementById("circle-button").style.display="block";
                            document.getElementById("form-loader").style.display="none";
                        }
                        else
                        {
                            document.getElementById("circle-button").style.display="none";
                            document.getElementById("form-loader").style.display="block";
                        }
                    };
                    xhttp.open("POST", "back-end.php", true);
                    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
                    xhttp.send("function=delete_question&qid="+qid);
                }
                
            }
            else
            {
                alert("Please select a stage to delete question.");
            }
        }
        function moveUp()
        {
            if(update)
            {
                var qid=update.dataset.qid;
                
                var xhttp;
                xhttp = new XMLHttpRequest();
                xhttp.onreadystatechange = function() 
                {
                    if (this.readyState == 4 && this.status == 200) 
                    {
                        alert("Successful, Referesh page to see change.");
                        document.getElementById("circle-button").style.display="block";
                        document.getElementById("form-loader").style.display="none";
                    }
                    else
                    {
                        document.getElementById("circle-button").style.display="none";
                        document.getElementById("form-loader").style.display="block";
                    }
                };
                xhttp.open("POST", "back-end.php", true);
                xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
                xhttp.send("function=move_up&qid="+qid);
                
            }
            else
            {
                alert("Please select a stage to move question up.");
            }
        }
        function moveDown()
        {
            if(update)
            {
                var qid=update.dataset.qid;
                
                var xhttp;
                xhttp = new XMLHttpRequest();
                xhttp.onreadystatechange = function() 
                {
                    if (this.readyState == 4 && this.status == 200) 
                    {
                        alert("Successful, Referesh page to see change.");
                        document.getElementById("circle-button").style.display="block";
                        document.getElementById("form-loader").style.display="none";
                    }
                    else
                    {
                        document.getElementById("circle-button").style.display="none";
                        document.getElementById("form-loader").style.display="block";
                    }
                };
                xhttp.open("POST", "back-end.php", true);
                xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
                xhttp.send("function=move_down&qid="+qid);
                
            }
            else
            {
                alert("Please select a stage to move question down.");
            }
        }
        function moveDiagonallyUp()
        {
            //selected bcz only buttons can move up and down diagonaly.
            if(selected)
            {
                var qid=update.dataset.qid;
                
                var xhttp;
                xhttp = new XMLHttpRequest();
                xhttp.onreadystatechange = function() 
                {
                    if (this.readyState == 4 && this.status == 200) 
                    {
                        alert("Successful, Referesh page to see change.");
                        document.getElementById("circle-button").style.display="block";
                        document.getElementById("form-loader").style.display="none";
                    }
                    else
                    {
                        document.getElementById("circle-button").style.display="none";
                        document.getElementById("form-loader").style.display="block";
                    }
                };
                xhttp.open("POST", "back-end.php", true);
                xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
                xhttp.send("function=move_diagonally_up&qid="+qid);
                
            }
            else
            {
                alert("Please select a stage to move question up.");
            }
        }
        function moveDiagonallyDown()
        {
            if(selected)
            {
                var qid=update.dataset.qid;
                
                var xhttp;
                xhttp = new XMLHttpRequest();
                xhttp.onreadystatechange = function() 
                {
                    if (this.readyState == 4 && this.status == 200) 
                    {
                        alert("Successful, Referesh page to see change.");
                        document.getElementById("circle-button").style.display="block";
                        document.getElementById("form-loader").style.display="none";
                    }
                    else
                    {
                        document.getElementById("circle-button").style.display="none";
                        document.getElementById("form-loader").style.display="block";
                    }
                };
                xhttp.open("POST", "back-end.php", true);
                xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
                xhttp.send("function=move_diagonally_down&qid="+qid);
                
            }
            else
            {
                alert("Please select a stage to move question down.");
            }
        }
        function changeSelectionForNormalList(ele)
        {
            if(update)
            {
                console.log("update");
                update.style.color="black";
            }
            if(selected)
            {
                console.log("selected");
                selected.style.color="black";
                selected=0;
            }
            update=ele;
            document.getElementById("update-content").value=ele.dataset.content;
            document.getElementById("update-type").value=ele.dataset.type;
            document.getElementById("update-remark").value=ele.dataset.remark;
            
            update.style.color="orange";
            
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
                echo "<li data-expend='no' data-qid='$qid' data-content='$content' data-type='$type'>
                    <span class='caret' onclick='loadQuestion(this)'>$content</span>
                    </li>" ;
            }
        ?>
    </ul>
    <div class="align-bottom" id="bottom-div">
        <div style="text-align:center;display:none" id="form-loader">
            <img src="photos/load.gif">
        </div>
        <div class="form-div" id="form">
            <h3 class='close-form' onclick="closeForm();">&#10060;</h3>
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
                <input type="text" id="remark" value="" placeholder="Link header[Only for link and download]">
                <br><br>
                <input type="submit" value="Add">
            </form>
        </div>
        <div class="form-div" id="update-form">
            <h3 style="color:white;text-align:center">Update Question</h3>
            <h3 class='close-form' onclick="closeForm();">&#10060;</h3>
            <form onsubmit="return updateQuestion()">
                <select id="update-type" required>
                    <option value="button">Button</option>
                    <option value="text">Text</option>
                    <option value="img">Image</option>
                    <option value="link">Link</option>
                    <option value="download">Download</option>
                </select>
                <br><br>
                <input type="text" id="update-content" placeholder="Enter the content" required>
                <br><br>
                <input type="text" id="update-remark" placeholder="Link header[Only for link and download]">
                <br><br>
                <input type="submit" value="Add">
            </form>
        </div>
        <div id="circle-button">
            <div class="add-circle" style="background-color:#99004d;transform: rotate(-45deg);" onclick="moveDiagonallyDown()" title="Move question diagonally down"><i class="fas fa-arrow-down"></i></div>
            
            <div class="add-circle" style="background-color:#009e73" onclick="moveDown()" title="Move question down"><i class="fas fa-arrow-down"></i></div>
            
            <div class="add-circle" style="background-color:red" onclick="deleteQuestion()" title="Delete Question"><i class="fas fa-trash-alt"></i></div>
            
            <div class="add-circle" style="background-color:#0066ff" onclick="takeInput()" title="Add Question"><i class="fas fa-plus"></i></div>
            
            <div class="add-circle" style="background-color:orange" onclick="takeUpdate()" title="Update Question"><i class="fas fa-pencil-alt"></i></div>
            
            <div class="add-circle" style="background-color:#009e73" onclick="moveUp()" title="Move question up"><i class="fas fa-arrow-up"></i></div>
            
            <div class="add-circle" style="background-color:#99004d;transform: rotate(-45deg);" onclick="moveDiagonallyUp()" title="Move question diagonally up"><i class="fas fa-arrow-up"></i></div>
        </div>
    </div>
    
    
    

</html>