<%@page import="com.avi.myPack.QuizQues"%>
<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.avi.myPack.CreateQuiz" %>
<%@ page import="com.avi.myPack.DatabaseFactory" %>
<%! static int count=0; %>
<%! static int count1=0; %>

<%
try{
String quizName=(String)session.getAttribute("quizName");

DatabaseFactory factory=new DatabaseFactory();
if(count==0){
int max=factory.maxQuizQuestion(quizName);
int min=factory.minQuizQuestion(quizName);
count=min;
session.setAttribute("min", min);
session.setAttribute("max", max);
}

if(count>0){
	session.setAttribute("status","start");
List<QuizQues> queList=new DatabaseFactory().getQuizQuestion(quizName,count);
for ( QuizQues ques:queList){
session.setAttribute("question",ques.getQuestion());
session.setAttribute("option1",ques.getOption1());
session.setAttribute("option2",ques.getOption2());
session.setAttribute("option3",ques.getOption3());
session.setAttribute("option4",ques.getOption4());
session.setAttribute("ansQ", ques.getAnswer());
}
}
System.out.println("\n \ngetQues count= "+count);
count++;
session.setAttribute("count",count);
if(count>(Integer)session.getAttribute("max")){
count=0;
session.setAttribute("ans",null);
session.setAttribute("status","finish");
}
}catch( Exception e)
{
	System.out.print(e);
}

%>

<jsp:forward page="start.jsp"></jsp:forward>