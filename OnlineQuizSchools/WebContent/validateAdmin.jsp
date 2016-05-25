
<%
String msg="";
  String userId=request.getParameter("userid");
  String password=request.getParameter("password");
  
  if(userId.equals("avadhesh") && password.equals("avadhesh"))
  {
	  session.setAttribute("userEmail",userId );
	  session.setAttribute("user", "admin");
	  response.sendRedirect("contactUs.jsp");   
  }
  else{
	 
	    msg="<b style='color:red'>oops..!! Admin identity is not mached.</b>";
		session.setAttribute("msg", msg);
	 response.sendRedirect("admin.jsp"); 
	}
  

%>