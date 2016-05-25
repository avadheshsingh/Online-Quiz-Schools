<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.avi.myPack.CreateQuiz" %>
<%@ page import="com.avi.myPack.DatabaseFactory" %>


<%
String quizName=request.getParameter("val");
session.setAttribute("quizName",quizName);
int count=new DatabaseFactory().CountQuizQuestion(quizName);
if(quizName.length()>0){
out.print("<font style='color:navy'><B>"+quizName+" containns "+count+" Question<br>Each question is of 1 point</B><br></font>");
out.print("<input type='submit' value='Start Quiz'id='myButton' style='height: 40px;padding: 8px 10px' /><br><br>");

}
//end of if
%>