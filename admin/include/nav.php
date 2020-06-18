
<script>
    var active=0;
    function toggle()
    {
        if(!active)
        {
            active=1;
            document.getElementsByClassName("list")[0].style.top="2px";
        }
        else
        {
            active=0;
            document.getElementsByClassName("list")[0].style.top="-450px";
        }
    }
    function logout()
    {
        areYouSure = confirm("Logout?");
        if(areYouSure)
        {
            window.open('logout','_self');
        }
    }
</script>
<div id="nav">
        <div class="nav_logo_div" style="cursor: pointer;">
            <!--<img class="nav_logo" src="Images/navlogo.png">-->
            <p class="nav_logo"><?php echo $name ?></p>
        </div>
        <i class="fas fa-bars" id="mob" onclick="toggle();"></i>
        <ul class="list">
            <li class="li">
                <a href="index">Home</a>
            </li>
            <li class="li">
                <a href="adminlogindetails">Admin details</a>
            </li>
            <li class="li">
                <a href="userlogindetails">User details</a>
            </li>
            <li class="li">
                <a href="javascript:logout()">Logout</a>
            </li>
        </ul>
    </div>