<!DOCTYPE html>
<%@page import="com.avi.myPack.InterviewQ"%>
<%@page import="java.util.List"%>
<%@page import="com.avi.myPack.DatabaseFactory"%>
<html>
<head>
<title>online QuizSchools</title>
    <meta charset=utf-8 />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link href="css/elementcss.css" rel="stylesheet" type="text/css" />
</head>

<body onLoad="stampIt();">
<jsp:include page="head.jsp"></jsp:include>


<div class="Bannermain" style="height: 950px">
<div class="Banner">
<section id="form" style="height:  ;">
<br><h2 style="color: green;margin: 20px 50px">Interview Question:</h2><br>
<%

String quizName=(String)session.getAttribute("quizName");
DatabaseFactory factory=new DatabaseFactory();
List<InterviewQ> queList=new DatabaseFactory().getInterviewQ();
int i=1;
for ( InterviewQ ques:queList){
	out.print("<p style='margin:0px 30px;'><b>Question "+i+": "+ques.getQuestion()+"</b><b style='color:green'>( "+ques.getSubject()+" )</b>");
	out.print("<br><b>Answer: </b>"+ques.getAnswer());
	out.print("</p><br><br>");
	i++;
}

%>

</section>
<div style="width: 675px;float: left;">
<jsp:include page="footer.jsp"></jsp:include>
</div>
</div>


<div class="l_form">
<div style="float:right">
  <jsp:include page="newsEvent.jsp"></jsp:include>     
</div>
</div>
</div>


</body>
</html>
