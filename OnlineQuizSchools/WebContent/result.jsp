<!DOCTYPE html>
<%@page import="com.avi.myPack.QuizScore"%>
<%@page import="com.avi.myPack.DatabaseFactory"%>
<html>
<head>
<title>online QuizSchools</title>
    <meta charset=utf-8 />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link href="css/elementcss.css" rel="stylesheet" type="text/css" />
</head>

<body onLoad="examTimer()">
<jsp:include page="head.jsp"></jsp:include>
<%
try{
String quizName=(String)session.getAttribute("quizName");
String userEmail=(String)session.getAttribute("userEmail");
String total=request.getAttribute("total").toString();

DatabaseFactory factory=new DatabaseFactory();
int noOfQuestion=factory.CountQuizQuestion(quizName);
QuizScore quizScore=new QuizScore();
String noOfQ=String.valueOf(noOfQuestion);
quizScore.setPlayerName(userEmail);
quizScore.setQuizName(quizName);
quizScore.setNoOfQuestion(noOfQ);
quizScore.setScored(total);
System.out.print("success");
factory.saveQuizScore(quizScore);
%>

<div class="Bannermain" style="height: 950px">
<div class="Banner" >
<section id="form" style="padding: 20px 20px;height: 950px">
    <marquee direction="left" style="color: navy;" onmouseover="stop()" onmouseout="start()"><B>Assess Yourself by taking quizs on various subjects</B></marquee>
    <h1 style="color:maroon;margin: 20px">Result:</h1>
    <b style="color: green;"><%=session.getAttribute("quizName") %></b>
    <p>Total Question : <b><%= noOfQ %></b></p>
    <form action="view.jsp">
    <p>
    <font style="color: navy;margin: 2px"><B>Your <%=request.getAttribute("total") %> questions are correct</B></font><BR/>
    <input type="submit" value="view description" id="myButton">            
    </p>
	</form>

</section>
</div>
<%
}catch(Exception e)
{
	System.out.print("\n hi error \n"+e);
	e.printStackTrace();
}
%>



<div class="l_form">
<div style="float:right">
  <jsp:include page="newsEvent.jsp"></jsp:include>     
</div>
</div>
</div>


<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
