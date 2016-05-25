<%@page import="java.util.Iterator"%>
<%@page import="org.hibernate.Transaction"%>
<%@ page import="com.avi.myPack.Register" %>
<%@ page import="com.avi.myPack.DatabaseFactory" %>

<%
String msg="";
try{
	     
		String email =request.getParameter("email");
		String password =request.getParameter("password");
		String category=request.getParameter("category");
		 DatabaseFactory d=new DatabaseFactory();
		if(d.validate(email, password,category)){
		session.setAttribute("userEmail",email );
		 response.sendRedirect("home.jsp"); 
		}
		else{
			msg="<b style='color:red'>oops..!! User identity not mached.</b>";
			session.setAttribute("msg", msg);
		 response.sendRedirect("index.jsp");
		}

}catch(Exception e)
{
	msg="<b style='color:red'>Something goes wrong.</b>";
	response.sendRedirect("index.jsp"); 
}

%>