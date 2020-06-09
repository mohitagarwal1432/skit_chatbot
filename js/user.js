const msgerChat = get(".msger-chat");//required


function toggleBot()
{
    document.getElementById("bot-circle-button").style.display="none";
    document.getElementById("bot-main-div").style.display="block";
    document.getElementById("bot-main-div").classList.toggle("bot-active");
}
function closeBot()
{
    document.getElementById("bot-circle-button").style.display="block";
    document.getElementById("bot-main-div").style.display="none";
    document.getElementById("bot-main-div").classList.toggle("bot-active");
}

function choiceButton(msgText,qid)
{
    if (!msgText) return;
    
    
    document.getElementById('msg').innerHTML+="<div class='chat-message-text-tab2-sent chat-count'>"+msgText+"</div>";

    document.getElementById('msg').scrollBy(0,80);
    
    botResponse(qid);
}
function botResponse(qid)
{
    
    var once=1;
    //appendMessage(BOT_NAME, BOT_IMG, "left", msgText);
    var xhttp;
    xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() 
    {
        if (this.readyState == 4 && this.status == 200) 
        {
            setTimeout(sendBotMsg,1000,this.responseText);
            
        }
        else
        {
            var spinner=`<div class="loader">
                            <span></span>
                            <span></span>
                            <span></span>
                        </div>`;
            if(once)
            {
                document.getElementById('msg').innerHTML+="<div id='remove' class='chat-message-text-tab2-received chat-count'>"+spinner+"</div>";

                document.getElementById('msg').scrollBy(0,80);
                once=0;
            }
        }
    };
    xhttp.open("POST", "user-backend.php", true);
    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhttp.send("function=load_response&qid="+qid);
    
    
}
function submitUserInformation()
{
    var name = document.getElementById("bot-user-name").value;
    var email = document.getElementById("bot-user-email").value;
    var mobile = document.getElementById("bot-user-mobile").value;
    var once=1;
    if(once)
    {
        once=0;
        var xhttp;
        xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function() 
        {
            if (this.readyState == 4 && this.status == 200) 
            {
                document.getElementById('msg').innerHTML+="<div class='chat-message-text-tab2-received chat-count'>"+this.responseText+"</div>";
                document.getElementById("details-form").remove();
                botResponse(1);
            }
            else
            {
                
            }
        };
        xhttp.open("POST", "user-backend.php", true);
        xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xhttp.send("function=user_info&name="+name+"&email="+email+"&mobile="+mobile);
    }
    return false;
    
}
function sendBotMsg(serverResponse)
{
    document.getElementById("remove").remove();
   document.getElementById('msg').innerHTML+= serverResponse;
   document.getElementById('msg').scrollBy(0,80);
}

