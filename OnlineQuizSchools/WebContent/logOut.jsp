<%-- 
    Document   : Logout
    Created on : Apr 20, 2015, 11:39:53 PM
    Author     : avadhesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
    <body>
        <%  
            session.removeAttribute("userEmail");           
			session.invalidate();           
			out.print("<br><h3 style='color: green'>You are successfully logged out!</h3>");
			out.println("<br><a href='index.jsp'><b>Go Back</a>");
			
         %>
                    
    </body>
</html>
