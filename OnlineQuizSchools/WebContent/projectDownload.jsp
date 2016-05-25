

<%@page import="java.io.OutputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%
     String file=null;
     String path=null;
     file=(String)session.getAttribute("projectName");
     response.setHeader( "Content-disposition","attachment;filename="+file);
     response.setContentType("document");
     path=application.getRealPath("data")+"\\"+file;
     
File ff=new File(path);
out.print(ff);
byte b[]=new byte[(int) ff.length()];
FileInputStream pp=new FileInputStream(ff);
pp.read(b);
OutputStream os=response.getOutputStream();
os.write(b);
pp.close();
os.close();



%>