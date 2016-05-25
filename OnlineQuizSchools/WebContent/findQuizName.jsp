<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="com.avi.myPack.CreateQuiz" %>
<%@ page import="com.avi.myPack.DatabaseFactory" %>

<%
String subject=request.getParameter("val");
if(subject.length()>0){
	DatabaseFactory factory=new DatabaseFactory();
	List<CreateQuiz> quizList=factory.getQuizInfo(subject);
try{
out.print("<table border='1' cellspacing=0px cellpadding=10px style='width:500px;'");
out.print("<tr ><td style='padding:10px;'><B>Quiz Name</B></td><td style='padding:10px;'><B>Subject</B></td><td style='padding:10px;'><B>Quiz Creater</B></td></tr>");
for(CreateQuiz quiz: quizList){
out.print("<tr><td style='padding:10px;'><a href='#' name='"+quiz.getQuizName()+"' onclick='javascript:viewAll(this.name)'>"+quiz.getQuizName()+"</a></td>");
out.print("<td style='padding:10px;'>"+quiz.getSubject()+"</td>");
out.print("<td style='padding:10px;'>"+quiz.getQuizCreater()+"</td>");
out.print("</tr>");
}
out.print("</table>");
}catch(Exception e){e.printStackTrace();}
}//end of if
%>