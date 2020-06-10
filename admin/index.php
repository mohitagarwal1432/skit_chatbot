<?php
    include "include/verify.php";
    $sql="SELECT * FROM question";
    $result=$conn->query($sql);
    if($result->num_rows==0)
    {
        $sql = "TRUNCATE TABLE question";
        $conn->query($sql);
        $sql = "INSERT INTO question(Displayon,Type,Content)
                values(0,'button','Welcome Message')";
        $conn->query($sql);
    }
?>
<html>
<head>
    <title>SKIT bot - Admin pannel</title>
    <link rel="stylesheet" href="css/admin.css">
    <link rel="stylesheet" href="css/nav.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
    <script src="js/admin.js"></script>
</head>
<body>
    <?php include "include/nav.php"; ?>
    <ul id="myUL">
        <?php
            $sql="select * from question where Displayon=0";
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
            <!--<div class="add-circle" style="background-color:#99004d;transform: rotate(-45deg);" onclick="moveDiagonallyDown()" title="Move question diagonally down"><i class="fas fa-arrow-down"></i></div>-->
            
            <div class="add-circle" style="background-color:#009e73" onclick="moveDown()" title="Move question down"><i class="fas fa-arrow-down"></i></div>
            
            <div class="add-circle" style="background-color:red" onclick="deleteQuestion()" title="Delete Question"><i class="fas fa-trash-alt"></i></div>
            
            <div class="add-circle" style="background-color:#0066ff" onclick="takeInput()" title="Add Question"><i class="fas fa-plus"></i></div>
            
            <div class="add-circle" style="background-color:orange" onclick="takeUpdate()" title="Update Question"><i class="fas fa-pencil-alt"></i></div>
            
            <div class="add-circle" style="background-color:#009e73" onclick="moveUp()" title="Move question up"><i class="fas fa-arrow-up"></i></div>
            
            <!--<div class="add-circle" style="background-color:#99004d;transform: rotate(-45deg);" onclick="moveDiagonallyUp()" title="Move question diagonally up"><i class="fas fa-arrow-up"></i></div>-->
        </div>
    </div>
    
    
    

</html>