<?php
include "include/verify.php";
?>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">

    <link rel="stylesheet" href="css/nav.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.6.2/css/buttons.dataTables.min.css">
    
    <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
    <script src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.6.2/js/dataTables.buttons.min.js" ></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js" ></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js" ></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js" ></script>
    <script src="https://cdn.datatables.net/buttons/1.6.2/js/buttons.html5.min.js" ></script>
    
    <title>Track Admins</title>
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
</head>
<body>  
    <?php include "include/nav.php"; ?>
    <div>
        <h1 style='text-align:center;padding-top:80px;'>Track Admin</h1>
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
        <table id='table' class="display" style="width:100%">
            <thead>
            <tr>
                <th>Sno</th>
                <th>Date</th>
                <th>Time</th>
                <th>Name</th>
                <th>Mobile</th>
            </tr>
            </thead>
            <tbody>
            <?php 
                $sql="SELECT * FROM adminlogin ORDER BY Sno DESC";
                $result=$conn->query($sql);
                $Sno=$result->num_rows;
                while($row=$result->fetch_assoc())
                {
                    $timestamp=$row["Timestamp"];
                    $date = date("d-m-y",$timestamp);
                    $time = date("h:i A",$timestamp);
                    $name=$row["Name"];
                    $mobile=$row["Mobile"];
                    echo "<tr>
                        <td>$Sno</td>
                        <td>$date</td>
                        <td>$time</td>
                        <td>$name</td>
                        <td>$mobile</td>
                    </tr>";
                    $Sno--;
                }
            ?>
            </tbody>
        </table>
        </div>  
    </div>
    <script>
        $(document).ready(function() {
            $('#table').DataTable( {
                dom: 'Bfrtip',
                buttons: [
                    'copyHtml5',
                    'excelHtml5',
                    'csvHtml5',
                    'pdfHtml5'
                ]
            } );
        } );
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
</html>
