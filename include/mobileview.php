<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
var iScrollPos=0;
$(window).scroll(function () {
                var iCurScrollPos = $(this).scrollTop();
                if (iCurScrollPos > iScrollPos) {
                  //  $("div.fix").hide();
                     console.log('down');
                } else {
                   //Scrolling Up
                   console.log('up');
                   $("div.fix").show();
                }
                iScrollPos = iCurScrollPos;
            });
</script>
        <div id='mobilewview'>
            <ul type='None'>
                <li class='attendance' style='margin-left:1.5%'onclick="window.open('attendance','_self')"><i class='fas fa-file-signature'></i></li>
                <li class='list message' onclick="window.open('message','_self')"><i class="fas fa-envelope"></i></li>
                <li class='list profile' onclick="window.open('profile','_self')"><i class="fas fa-address-card"></i></li>
                <?php if($l==co) 
                {?>
                   <li class='list user'onclick="window.open('students','_self')"><i class='fas fa-users'></i></li>
                <?php }else{ ?>
                    <li class='list user'onclick="window.open('colleague','_self')"><i class='fas fa-users'></i></li>
                <?php } ?>
                <li class='list' onclick="window.open('logout','_self')"><i class="fas fa-door-open"></i></li>
            </ul>
            
        </div>
        <br><br>
        <script type="text/javascript">
		var isMobile = /iPhone|iPad|iPod|Android/i.test(navigator.userAgent);
		//var element = document.getElementById('phone');
		if (isMobile) {
  			//element.innerHTML = "You are using Mobile";
  			document.getElementById('mobilewview').style.display='block';
		} else {
			//element.innerHTML = "You are using Desktop";
		}
	</script> -->