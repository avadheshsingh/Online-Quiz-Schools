<!DOCTYPE html>
<html>
<head>
<title>online QuizSchools</title>
    <meta charset=utf-8 />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link href="css/elementcss.css" rel="stylesheet" type="text/css" />
      
      <script>
var request;
function sendInfo()
{
var v=document.myForm.subject.value;
var url="findQuizName.jsp?val="+v;
if(window.XMLHttpRequest){
request=new XMLHttpRequest();
}
else if(window.ActiveXObject){
request=new ActiveXObject("Microsoft.XMLHTTP");
}
try
{
request.onreadystatechange=getInfo;
request.open("GET",url,true);
request.send();
}
catch(e){alert("Unable to connect to server");}
}

function getInfo(){
if(request.readyState==4){
var val=request.responseText;
document.getElementById('location').innerHTML=val;
}
}
function viewAll(name)
{
var v=name;
var url="findQuizNameInfo.jsp?val="+v;

if(window.XMLHttpRequest){
request=new XMLHttpRequest();
}
else if(window.ActiveXObject){
request=new ActiveXObject("Microsoft.XMLHTTP");
}
try
{
request.onreadystatechange=viewInfo;
request.open("GET",url,true);
request.send();
}
catch(e){alert("Unable to connect to server");}
}

function viewInfo(){
if(request.readyState==4){
var val=request.responseText;
document.getElementById('location').innerHTML=val;
}
}

/////////////////////validation/////////////
 function validate()
      {
      
         if( document.myForm.subject.value == "" )
         {
            alert( "Please provide subject name!" );
            document.myForm.subject.focus() ;
            return false;
         }
         return( true );
      }
</script>
      
</head>

<body onLoad="stampIt();">
<jsp:include page="head.jsp"></jsp:include>


<div class="Bannermain" style="height: 950px">
<div class="Banner">

<form  action="getQuestion.jsp" method="POST" name="myForm" onSubmit="return validate(this);" autocomplete="off">
<section id="form">
 <marquee direction="left" style="color: navy;" onmouseover="stop()" onmouseout="start()"><B>Assess Yourself by taking quizs on various subjects</B></marquee>
<div style="margin: 30px 40px">

 <br>  <b style="font-size: 18px">Subject Name:</b>
 <br>  <input type="text" id="ip" name="subject" placeholder="Enter Subject Name here" onkeyup="sendInfo()"/>
 <br> <div id="location" style="margin: 30px 30px"></div>                          
 </div>  
</section>
</form>
</div>


<div class="l_form">
<div style="float:right">
  <jsp:include page="newsEvent.jsp"></jsp:include>     
</div>
</div>
</div>


<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
