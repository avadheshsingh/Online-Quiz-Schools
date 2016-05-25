<%@page import="com.avi.myPack.QuizQues"%>
<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="com.avi.myPack.CreateQuiz" %>
<%@ page import="com.avi.myPack.DatabaseFactory" %>

<!DOCTYPE html>
<html>
<head>
<title>online QuizSchools</title>
    <meta charset=utf-8 />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link href="css/elementcss.css" rel="stylesheet" type="text/css" />
      
</head>

<body style="">
<jsp:include page="head.jsp"></jsp:include>


<div class="Bannermain" style="height: 1000px ;">
<div class="Banner" >
<section id="form" style="height:  ;">
<br><h2 style="color: green;margin: 20px 50px">Quiz Answers & Description:</h2><br>
<%

String quizName=(String)session.getAttribute("quizName");
DatabaseFactory factory=new DatabaseFactory();
List<QuizQues> queList=new DatabaseFactory().getQuizAnswer(quizName);
out.print("<table style='padding:0px 50px'>");
int i=1;
for ( QuizQues ques:queList){
	out.print("<tr><td><b>Question "+i+":</td><td>"+ques.getQuestion()+"</b></td></tr>");
	out.print("<tr><td><b>Answer:</b></td><td>"+ques.getAnswer()+"</td></tr>");
	out.print("<tr><td><b>Description:</b></td><td>"+ques.getDescription()+"</td></tr>");
	out.print("<tr><td><br></td></tr>");
	i++;
}
out.print("</table>");

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
