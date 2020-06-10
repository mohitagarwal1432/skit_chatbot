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