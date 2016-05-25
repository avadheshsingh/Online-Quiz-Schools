<%@page import="com.avi.myPack.Project"%>
<%@page import="com.avi.myPack.QuizQues"%>
<%@page import="java.util.List"%>
<%@page import="com.avi.myPack.DatabaseFactory"%>
<br><h2 style="color: green;margin: 20px 50px">Project Details:</h2><br>
<form name="project" action="projectDownload.jsp" method="POST" enctype="multipart/form-data">
<%

String quizName=(String)session.getAttribute("quizName");
String project=request.getParameter("val");
DatabaseFactory factory=new DatabaseFactory();
List<Project> List=new DatabaseFactory().getProjectByName(project);
out.print("<table style='padding:0px 50px ;width:600px;margin:0px 0px 30px 0px' >");
for ( Project p:List){
	out.print("<tr><td><b>Name</td><td>"+p.getProjectName()+"</b></td></tr>");
	out.print("<tr><td><b>Technology Used</b></td><td>"+p.getTechUsed()+"</td></tr>");
	out.print("<tr><td><b>Posted By</b></td><td>"+p.getCreaterName()+"</td></tr>");
	out.print("<tr><td><b>Description</b></td><td>"+p.getDescription()+"</td></tr>");
	out.print("<tr><td><b>File Format</b></td><td>"+p.getProjectFileName()+"</td></tr>");
	session.setAttribute("projectName", p.getProjectFileName());
	out.print("<tr><td colspan='2'> <input type='submit' value=' Download ' name='submit' id='myButton' style='height: 35px;padding: 5px 8px;float: right;'/></td></tr>");
}
out.print("</table>");

%>
</form>