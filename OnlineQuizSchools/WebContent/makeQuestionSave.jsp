<%@ page import="com.avi.myPack.QuizQues" %>
<%@ page import="com.avi.myPack.DatabaseFactory" %>
<%
     String b=request.getParameter("submit");
try{
	   String question=request.getParameter("question");
       String option1=request.getParameter("option1");
       String option2=request.getParameter("option2");
       String option3=request.getParameter("option3");
       String option4=request.getParameter("option4");
       String answer=request.getParameter("answer");
       String description=request.getParameter("description");
       
     
       String quizName=(String)session.getAttribute("quizName");
       String quizCreater=(String)session.getAttribute("userEmail");
       
       QuizQues quizQues=new QuizQues();
       
       quizQues.setQuizName(quizName);
       quizQues.setQuestion(question);
       quizQues.setOption1(option1);
       quizQues.setOption2(option2);
       quizQues.setOption3(option3);
       quizQues.setOption4(option4);
       quizQues.setAnswer(answer);
       quizQues.setDescription(description);
       quizQues.setQuizCreater(quizCreater);
       new DatabaseFactory().saveQuestion(quizQues);
       String status=(String)session.getAttribute("qstatus");
		System.out.print(status);
		if(!(status.equals("complete"))){
			  response.sendRedirect("makeQuestion.jsp");
			}
	    else{
	    	  String msg="<b style='color:green ;margin:20px 20px'>"+quizName+" is successfully created..!! Now You can proceed to create another..!!</b>";
	    	  session.setAttribute("msg", msg);
	    	  response.sendRedirect("makeQuiz.jsp");
			}
		 
}catch(Exception e)
{ RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
 rd.forward(request,response);
 }

%>