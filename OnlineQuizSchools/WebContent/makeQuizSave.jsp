<%@ page import="com.avi.myPack.CreateQuiz" %>
<%@ page import="com.avi.myPack.DatabaseFactory" %>
<% 
String msg="";
try{
	   String quizName=request.getParameter("quizName");
       String subject=request.getParameter("subject");
       String noOfQuestion=request.getParameter("noOfQues");
       String quizTime=request.getParameter("quizTime");
       String groupId=request.getParameter("groupId");
       String timePerQuestion=request.getParameter("timePerQues");
       String aboutQuiz=request.getParameter("aboutQuiz");
      
       
       String quizCreater=(String)session.getAttribute("userEmail");
       
       if(new DatabaseFactory().checkQuizNameExists(quizName))
       {
    	   msg="<b style='color:red;margin:10px 10px'>Quiz creation unsuccessful. This QuizName already exists. Please choose another ..!!</b>";
    	   throw new Exception("Avadhesh");
       }
       else{
       
       CreateQuiz cq=new CreateQuiz();
       cq.setQuizName(quizName);
       cq.setSubject(subject);
       cq.setQuizCreater(quizCreater);
       cq.setNoOfQuestion(noOfQuestion);
       cq.setQuizTime(quizTime);
       cq.setGroupId(groupId);
       cq.setTimePerQuestion(timePerQuestion);
       cq.setAboutQuiz(aboutQuiz);
	   new DatabaseFactory().saveQuizInfo(cq);
	   session.setAttribute("quizName", quizName);
	  response.sendRedirect("makeQuestion.jsp");
       }
}catch(Exception e)
{
	System.out.println(e+"\nerror occurred..\n"+msg);
	session.setAttribute("msg",msg);
	response.sendRedirect("makeQuiz.jsp");
}

%>
