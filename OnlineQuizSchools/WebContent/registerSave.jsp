
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.io.File"%>
<%@ page import="com.avi.myPack.Register" %>
<%@ page import="com.avi.myPack.DatabaseFactory" %>
<% 
String msg="";
try{
	
	final int limit = 1024 * 1024 * 1024;
	String saveDir = getServletContext().getRealPath("profile");
	File f = new File(saveDir);
	System.out.println( f.mkdir());                                           
	 MultipartRequest mpr = new MultipartRequest(request, getServletContext().getRealPath("profile"), limit);
	 String profilePic=mpr.getOriginalFileName("img");
	 
	 System.out.print("\n"+getServletContext().getRealPath("profile") ); 
	
	   String firstName=mpr.getParameter("firstName");
       String lastName=mpr.getParameter("lastName");
       String gender=mpr.getParameter("gender");
       String dob=mpr.getParameter("dob");
       String college=mpr.getParameter("college");
       String email=mpr.getParameter("email");
       String mno=mpr.getParameter("mno");
       String education=mpr.getParameter("education");
       String category=mpr.getParameter("category");
       String password=mpr.getParameter("password");
       
       if(new DatabaseFactory().checkEmailExists(email))
	   {
    	   msg="<b style='color:red;margin:10px 10px'>Oops..!!Unsuccessful.This email already registered...</b>";
    	   throw new Exception("Avadhesh");
       }
       else if(new DatabaseFactory().checkProfilePicNameExists(profilePic))
       {
    	   msg="<b style='color:red;margin:10px 10px'>Oops..!!Unsuccessful.Please change the profile pic name...</b>";
    	   throw new Exception("Avadhesh");
       }
       else{
	         Register r=new Register();
	         r.setFirstName(firstName);
	         r.setLastName(lastName);
			 r.setEmail(email);
			 r.setMno(mno);
			 r.setCategory(category);
			 r.setCollege(college);
			 r.setDob(dob);
			 r.setEducation(education);
			 r.setGender(gender);
			 r.setPassword(password);
			 r.setProfilePic(profilePic);
			 new DatabaseFactory().saveData(r);
			
			
			session.setAttribute("userEmail",email);
			response.sendRedirect("home.jsp");
		}
		//RequestDispatcher rd=request.getRequestDispatcher("home.jsp");
       // rd.forward(request,response);
}catch(Exception e){
	
	System.out.print(e+"\n error avi\n"+msg);
	session.setAttribute("msg",msg);
	response.sendRedirect("registration.jsp");
	}

%>