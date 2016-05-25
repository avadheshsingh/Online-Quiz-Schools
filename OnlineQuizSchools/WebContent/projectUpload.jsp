
<%@page import="com.avi.myPack.DatabaseFactory"%>
<%@page import="com.avi.myPack.Project"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.io.File"%>
<%
String msg="";
try{
 
String creater=(String)session.getAttribute("userEmail");
final int limit = 1024 * 1024 * 1024;
String saveDir = getServletContext().getRealPath("data");
File f = new File(saveDir);
System.out.println( "Folder created= "+f.mkdir());                                           
 MultipartRequest mpr = new MultipartRequest(request, getServletContext().getRealPath("data"), limit);
 String projectFileName=mpr.getOriginalFileName("project");
 
 System.out.println(getServletContext().getRealPath("data") );  
 String pname= mpr.getParameter("pname");
 String tused= mpr.getParameter("tused");
 String description= mpr.getParameter("description");
 
 if(new DatabaseFactory().checkProjectNameExists(pname))
 {
	   msg="<b style='color:red;margin:10px 10px'>Project with this name is already exists...</b>";
	   throw new Exception("Avadhesh");
 }
 else if(new DatabaseFactory().checkProjectFileNameExists(projectFileName))
 {
	   msg="<b style='color:red;margin:10px 10px'>Project upload unsuccessful. Please change the project file name...!!</b>";
	   throw new Exception("Avadhesh");
 }
 else{
 
		 Project p=new Project();
		 p.setCreaterName(creater);
		 p.setProjectName(pname);
		 p.setTechUsed(tused);
		 p.setProjectFileName(projectFileName);
		 p.setDescription(description);
		 
		 DatabaseFactory factory=new DatabaseFactory();
		 factory.saveProject(p);
		 System.out.print("\n successfully added");
		 msg="<b style='color:green ;margin:20px 20px'>Project successfully Uploaded.</b>";
		 session.setAttribute("msg", msg);
		 response.sendRedirect("projects.jsp"); 
    }
}catch(Exception e)
{
	   System.out.println(e+"\nerror occurred.. \n"+msg);
	   session.setAttribute("msg",msg);
	   response.sendRedirect("projects.jsp");
}
%>