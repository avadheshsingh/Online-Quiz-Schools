  <link href="css/elementcss.css" rel="stylesheet" type="text/css" />


<%@page import="java.io.OutputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%
     String file=null;
     String path=null;
    // file="Me.JPG";
  
    file=(String)session.getAttribute("imgName");
    System.out.print(file+application.getRealPath("profile"));
     response.setHeader( "Content-disposition","attachment;filename="+file);
     response.setContentType("image/jpeg");
     path=application.getRealPath("profile")+"\\"+file;
     
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