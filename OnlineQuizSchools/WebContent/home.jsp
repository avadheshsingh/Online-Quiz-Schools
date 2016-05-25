 <%@page import="com.avi.myPack.Register"%>
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

<body onLoad="examTimer()">
<jsp:include page="head.jsp"></jsp:include>


<div class="Bannermain" style="height: 950px">
<div class="Banner" >

<div id="Welcome" style="">
<div id="Welcome-Top" style="width: 672px"></div>
<div id="Welcome-Mid" style="width:632px">
<h1 style="padding-bottom: 8px;line-height: 35px;font-size: 25px;font-family: serif;padding-left: 20px">Welcome to <span><i>QuizSchools</i></span></h1>
<p style="padding: 2px 20px 20px 20px">
<img src="imgShow.jsp" width="110" height="130" alt=""  onerror="this.src='images/user.jpg'" style="float:left;border-radius: 20px;margin:0px 30px 0px 10px"/>
       Now Teacher and Student can work together
      online.Tutors are most welcomed to my site 
     they can create Quiz simply by clicking Create 
     Quiz link.And Students can appear in quiz based on various subject.
     <br>User can also upload and download projects.Students can learn interview Questions 
     on various topics.
  </p><span class="view" style="padding: 5px 20px"><a href="#">View All</a></span><br clear="all" />
</div>
<div id="Welcome-Bot" style="width: 672px"></div>
</div>


 <section id="form" style="margin-top: 240px;height: "> 
   
 <%
 String email=(String)session.getAttribute("userEmail");
 String name="";
 if(email.length()>0){
	 	DatabaseFactory factory=new DatabaseFactory();
	 	List<Register> person=factory.getPersonalInfo(email);
	 	 for(Register m: person){
	 		 name=m.getFirstName();
	 	 }
	 	 
 out.print("<P style='margin: 10px 20px;'>WELCOME <b style='color:green'><i>"+name+" ;</i></b></P>");
 %>
 
   <h1 align="center" style="margin: 10px 0px;">Personal Details</h1>
 
 <% 
 
 try{
 out.print("<table align='center'");
 for(Register r: person){
 out.print("<tr><td style='padding:10px;'>FIRST NAME</td>");
 out.print("<td style='padding:10px;'>"+r.getFirstName()+"</td></tr>");
 out.print("<tr><td style='padding:10px;'>LAST NAME</td>");
 out.print("<td style='padding:10px;'>"+r.getLastName()+"</td></tr>");
 out.print("<tr><td style='padding:10px;'>USER EMAIL</td>");
 out.print("<td style='padding:10px;'>"+r.getEmail()+"</td></tr>");
 out.print("<tr><td style='padding:10px;'>CATEGORY</td>");
 out.print("<td style='padding:10px;'>"+r.getCategory()+"</td></tr>");
 out.print("<tr><td style='padding:10px;'>GENDER</td>");
 out.print("<td style='padding:10px;'>"+r.getGender()+"</td></tr>");
 out.print("<tr><td style='padding:10px;'>DOB</td>");
 out.print("<td style='padding:10px;'>"+r.getDob()+"</td></tr>");
 out.print("<tr><td style='padding:10px;'>COLLEGE/SCHOOL</td>");
 out.print("<td style='padding:10px;'>"+r.getCollege()+"</td></tr>");
 out.print("<tr><td style='padding:10px;'>EDUCATION</td>");
 out.print("<td style='padding:10px;'>"+r.getEducation()+"</td></tr>");
 out.print("<tr><td style='padding:10px;'>MOBILE NO</td>");
 out.print("<td style='padding:10px;'>"+r.getMno()+"</td></tr>");
 session.setAttribute("imgName", r.getProfilePic());
 }
 out.print("</table>");
 }catch(Exception e){e.printStackTrace();}
 }//end of if
 %>
 
 <p>--------------------------------------------------------------------------------------------------------------------------------------</p>
 <h1 align="center" style="margin: 20px 0px;">Quiz Created By You</h1>      
                        
<%
if(email.length()>0){
	DatabaseFactory factory=new DatabaseFactory();
	List<CreateQuiz> quizList=factory.getQuizInfoByEmail(email);
try{
out.print("<table border='1'align='center' cellspacing=8px cellpadding=10px style='width:500px;'");
out.print("<tr ><td style='padding:10px;'><B>Quiz Name</B></td><td style='padding:10px;'><B>Subject</B></td><td style='padding:10px;'><B>No of Question</B></td></tr>");
for(CreateQuiz quiz: quizList){
out.print("<tr><td style='padding:10px;'><a href='#' name='"+quiz.getQuizName()+"' onclick='javascript:viewAll(this.name)'>"+quiz.getQuizName()+"</a></td>");
out.print("<td style='padding:10px;'>"+quiz.getSubject()+"</td>");
out.print("<td style='padding:10px;'>"+quiz.getNoOfQuestion()+"</td>");
out.print("</tr>");
}
out.print("</table>");
}catch(Exception e){e.printStackTrace();}
}//end of if
%>

<p>--------------------------------------------------------------------------------------------------------------------------------------</p>
 
<h1 align="center" style="margin: 20px 0px;">Quiz Played By You</h1>   
                        
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
