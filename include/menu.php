<?php
date_default_timezone_set('Asia/Kolkata');
$navimg="photos/profile/".$row['Profile'].".jpg";
if(!file_exists($navimg))
{
    $g=$row['Gender'];
    if($g=='Male')
        $navimg="ican/boy.png";  
    else
        $navimg="ican/girl.png";
}
?>
<script>
    function slideb()
    {
        document.getElementById('slide').style.left='0%';
        document.getElementById('arrow').style.display='block';
        navbardrop=0;
        navbardropdown();           
    }
    function hideslideb()
    {
        document.getElementById('slide').style.left='-100%';
        document.getElementById('arrow').style.display='none';
        document.getElementById('arrow').style.zIndex='4';
        navbardrop=0;
        navbardropdown();
    }
    function feedbackover()
    {
        document.getElementById('fbimg').src='ican/feedback1.png';
    }
    function feedbackout()
    {
        document.getElementById('fbimg').src='ican/feedback.png';
    }
    var navbardrop=1;
    function navbardropdown()
    {
        if(navbardrop)
        {
            document.getElementById("navdrop").style.display="block";
            navbardrop=0;
        }
        else
        {
            document.getElementById("navdrop").style.display="none";
            navbardrop=1;   
        }
    }
</script>
<?php
if($l=='st')
{

        $sql="select * from studetails where Email='$em'";
        $result=$conn->query($sql);
        $row=$result->fetch_assoc();
        $club=$row["Club1"];
        $is=$row["Isseen"];
        $sql="select * from message where Clubname='$club' order by Sno desc";
        $result=$conn->query($sql);
        $row=$result->fetch_assoc();
            $msgno=$row['Sno'];
    
    echo "<div class='fix' id='fixed'>
            <p  class='bar' onclick='slideb();'><i class='fas fa-bars'></i></p>
            <div class='nav-profile-image' onclick='navbardropdown();'>
                <img src='$navimg' style='width:40px;height:40px;border-radius: 20px;' alt='Your-Image'><span style='font-size:20px;position:absolute;top:13px;'>&nbsp;&blacktriangledown;</span>
            </div>
            <h2 class='fixtext' onclick=\"window.open('profile','_self');\">Skit Clubs</h2>
        </div>";
    ?>
    <div class="nav-dropdown" id="navdrop">
        <div class="nav-edit">
            <div class="nav-edit-profile" onclick="window.open('changepass','_self');">
                <i class="fas fa-user-edit"></i>
                <p>Edit Profile</p>
            </div>
            <div class="nav-contact-us" onclick="window.open('contact','_self');">
                <i class="fas fa-mobile"></i>
                <p>Contact Us</p>
            </div>
        </div>
        <div class="nav-logout" onclick="window.open('logout','_self');">
            <i class="fas fa-door-open"></i>
            <p>Logout</p>
        </div>
    </div>
    <?php
    echo "<div id='slide' class='slidebar'>
            <p style='color:white;display:none;margin-left:90%;font-size:25px;cursor:pointer;width:20px;' id='arrow' onclick='hideslideb()'><i class='fas fa-arrow-circle-left'></i></p>

            
            <span class='link'><a href='profile'><i class='fas fa-user-graduate'></i> Profile</a></span>
            
            <span class='link'><a href='clubs'><i class='fas fa-cubes'></i> SKIT Clubs</a></span>
            
            <span class='link'><a href='attendance'><i class='fas fa-file-signature'></i> Attendance</a></span>";
            
            if(strcmp($is, $msgno)!==0)
                echo "<span class='link'><a href='message' style='color:#ffa500'><i class='fas fa-envelope-open-text'></i> Club message</a></span>";
            else
                echo "<span class='link'><a href='message'><i class='fas fa-envelope-open-text'></i> Club message</a></span>";
            
            echo "<span class='link'><a href='certificate'><i class='fas fa-award'></i> Certificate</a></span>
            
            <span class='link'><a href='colleague'><i class='fas fa-users'></i> Colleague</a></span>
            
            <span class='link'><a href='feedback' onmouseover='feedbackover();' onmouseout='feedbackout();'><img id='fbimg' src='ican/feedback.png' style='height:25px;width:25px;'> Feedback</a></span>
            
            <span class='link'><a href='notiyapa' target='_blank'><i class='fas fa-book-reader'></i> Get Notes</a></span>
            
            <span class='link'><a href='faq'><i class='fab fa-foursquare'></i> FAQs</a></span>
            <br>
        </div> ";
}
if($l=='co')
{
    echo "<div class='fix' id='fixed'>
            <p  class='bar' onclick='slideb();'><i class='fas fa-bars'></i></p>
            <div class='nav-profile-image' onclick='navbardropdown();'>
                <img src='$navimg' style='width:40px;height:40px;border-radius: 20px;' alt='Your-Image'><span style='font-size:20px;position:absolute;top:13px;'>&nbsp;&blacktriangledown;</span>
            </div>
            <h2 class='fixtext' onclick=\"window.open('profile','_self');\">Skit Clubs</h2>
        </div>";
    ?>
    <div class="nav-dropdown" id="navdrop">
        <div class="nav-edit">
            <div class="nav-edit-profile" onclick="window.open('changepass','_self');">
                <i class="fas fa-user-edit"></i>
                <p>Edit Profile</p>
            </div>
            <div class="nav-contact-us" onclick="window.open('contact','_self');">
                <i class="fas fa-mobile"></i>
                <p>Contact Us</p>
            </div>
        </div>
        <div class="nav-logout" onclick="window.open('logout','_self');">
            <i class="fas fa-door-open"></i>
            <p>Logout</p>
        </div>
    </div>
    <?php
    echo "<div id='slide' class='slidebar'>
            <p style='color:white;display:none;margin-left:90%;font-size:25px;cursor:pointer;width:20px;' id='arrow' onclick='hideslideb()'><i class='fas fa-arrow-circle-left'></i></p>

            
            <span class='link'><a href='profile'><i class='fas fa-user-graduate'></i> Profile</a></span>
            
            <span class='link'><a href='clubs'><i class='fas fa-cubes'></i> Your Club</a></span>
            
            <span class='link'><a href='attendance'><i class='fas fa-file-signature'></i> Attendance</a></span>
            
            <span class='link'><a href='message'><i class='fas fa-envelope-open-text'></i> Send message</a></span>
            
            <span class='link'><a href='students'><i class='fas fa-graduation-cap'></i> Students</a></span>
            
            <span class='link'><a href='certificate'><i class='fas fa-award'></i> Certificate</a></span>
            
            <span class='link'><a href='colleague'><i class='fas fa-users'></i> Colleague</a></span>
            
            <span class='link'><a href='feedback' onmouseover='feedbackover();' onmouseout='feedbackout();'><img id='fbimg' src='ican/feedback.png' style='height:25px;width:25px;'> Feedback</a></span>
            
            <span class='link'><a href='notiyapa' target='_blank'><i class='fas fa-book-reader'></i> Get Notes</a></span>
            
            <span class='link'><a href='faq'><i class='fab fa-foursquare'></i> FAQs</a></span>
            <br>
        </div> ";
}
if($l=='ad')
{
    echo "<div class='fix' id='fixed'>
            <p  class='bar' onclick='slideb();'><i class='fas fa-bars'></i></p>
            <div class='nav-profile-image' onclick='navbardropdown();'>
                <img src='$navimg' style='width:40px;height:40px;border-radius: 20px;' alt='Your-Image'><span style='font-size:20px;position:absolute;top:13px;'>&nbsp;&blacktriangledown;</span>
            </div>
            <h2 class='fixtext' onclick=\"window.open('profile','_self');\">Skit Clubs</h2>
        </div>";
    ?>
    <div class="nav-dropdown" id="navdrop">
        <div class="nav-edit">
            <div class="nav-edit-profile" onclick="window.open('changepass','_self');">
                <i class="fas fa-user-edit"></i>
                <p>Edit Profile</p>
            </div>
            <div class="nav-contact-us" onclick="window.open('contact','_self');">
                <i class="fas fa-mobile"></i>
                <p>Contact Us</p>
            </div>
        </div>
        <div class="nav-logout" onclick="window.open('logout','_self');">
            <i class="fas fa-door-open"></i>
            <p>Logout</p>
        </div>
    </div>
    <?php
    echo "<div id='slide' class='slidebar'>
            <p style='color:white;display:none;margin-left:90%;font-size:25px;cursor:pointer;width:20px;' id='arrow' onclick='hideslideb()'><i class='fas fa-arrow-circle-left'></i></p>

            
            <span class='link'><a href='profile'><i class='fas fa-user-graduate'></i> Profile</a></span>
            
            <span class='link'><a href='addclub'><i class='fas fa-cubes'></i> Add club</a></span>
            
            <span class='link'><a href='addadmin'><i class='fas fa-file-signature'></i> Add Administrator</a></span>
            
            <span class='link'><a href='addcoordinator'><i class='fas fa-file-signature'></i> Add coordinator</a></span>
            
            <span class='link'><a href='extrasession'><i class='fas fa-folder-plus'></i> Extra session</a></span>
            
            <span class='link'><a href='allmembers'><i class='fab fa-adn'></i> All members</a></span>
            
            <span class='link'><a href='message'><i class='fas fa-envelope-open-text'></i> Message</a></span>
            
            <span class='link'><a href='track'><i class='fas fa-chart-line'></i> Track</a></span>
            
            <span class='link'><a href='clubdata'><i class='fas fa-database'></i> Club Data</a></span>
            
            <span class='link'><a href='faq'><i class='fab fa-foursquare'></i> FAQs</a></span>
            <br>
        </div> ";
}

?>