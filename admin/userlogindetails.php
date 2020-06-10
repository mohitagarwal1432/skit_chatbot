<?php
include "include/verify.php";
?>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
    <link rel="stylesheet" href="css/nav.css">
    <title>Track Users</title>
    <style>
        table 
        {
            font-family: arial, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }
        td, th 
        {
            min-width: 100px;
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }
        tr:nth-child(even) 
        {
            background-color: #dddddd;
        }
        .table-container
        {
            width:100vw;
            overflow-x:scroll;
        }
        .chart
        {
            width:auto;
            height:600px;
        }
        fieldset
        {
            width:40%;
            margin:10px auto;
        }
        @media screen and (max-width: 900px)
        {
            fieldset
            {
                width: calc(90% - 6px);
            }
        }
    </style>
    <script>
        /*function match()
        {
            var name=document.getElementById("name").value;
            var mobile=document.getElementById("mobile").value;
            var date=document.getElementById("date").value;
            var xhttp; 
            xhttp = new XMLHttpRequest();
            xhttp.onreadystatechange = function() 
            {
                if (this.readyState == 4 && this.status == 200) 
                {
                    document.getElementById('table').innerHTML = this.responseText;
                }
            };
          xhttp.open("GET", "ajax.php?page=trackusers&mobile="+mobile+"&name="+name+"&date="+date, true);
          xhttp.send();
        }*/
    </script>
</head>
<body>  
    <?php include "include/nav.php"; ?>
    <div>
        <h1 style='text-align:center;padding-top:80px;'>Track Users</h1>
        <p style='text-align:center;padding-top:10px;'><i class='fas fa-chart-line fa-5x'></i></p>    
        <br>
    
        <!--<form>
            <fieldset>
                <legend>Search by Name:</legend>
                <input id='name'class="inp" style='width:calc(100% - 20px);' type="text" name="Name" autocomplete="new-password" placeholder="Enter Name" oninput="match()">
            </fieldset>
            <fieldset>
                <legend>Search by Mobile no:</legend>
                <input id='mobile'class="inp" style='width:calc(100% - 20px);' type="number" name="Mobile" autocomplete="new-password" placeholder="Enter Mobile no." oninput="match()">
            </fieldset>
            <fieldset>
                <legend>Search by Date:</legend>
                <input id='date'class="inp" style='width:calc(100% - 20px);' type="text" name="Date" autocomplete="new-password" placeholder="Enter Date" oninput="match()">
            </fieldset>
        </form>-->
        <br>
        <div class="table-container">
        <table id='table'>
            <tr>
                <th>Sno</th>
                <th>Date</th>
                <th>Time</th>
                <th>Name</th>
                <th>Mobile</th>
                <th>Email</th>
            </tr>
            <?php 
                $sql="SELECT * FROM users ORDER BY Sno DESC";
                $result=$conn->query($sql);
                $Sno=$result->num_rows;
                while($row=$result->fetch_assoc())
                {
                    $timestamp=$row["Timestamp"];
                    $date = date("d-m-y",$timestamp);
                    $time = date("h:i A",$timestamp);
                    $name=$row["Name"];
                    $mobile=$row["Mobile"];
                    $email=$row["Email"];
                    echo "<tr>
                        <td>$Sno</td>
                        <td>$date</td>
                        <td>$time</td>
                        <td>$name</td>
                        <td>$mobile</td>
                        <td>$email</td>
                    </tr>";
                    $Sno--;
                }
            ?>
        </table>
        </div>  
    </div>

</html>
