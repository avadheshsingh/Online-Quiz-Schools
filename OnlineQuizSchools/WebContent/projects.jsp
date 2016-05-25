<!DOCTYPE html>
<%@page import="java.util.List"%>
<%@page import="com.avi.myPack.DatabaseFactory"%>
<%@page import="com.avi.myPack.Project"%>
<html>
<head>
<title>online QuizSchools</title>
    <meta charset=utf-8 />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link href="css/elementcss.css" rel="stylesheet" type="text/css" />
      
      <script type="text/javascript">
      function viewP(name)
      {
      var v=name;
      var url="viewProject.jsp?val="+v;

      if(window.XMLHttpRequest){
      request=new XMLHttpRequest();
      }
      else if(window.ActiveXObject){
      request=new ActiveXObject("Microsoft.XMLHTTP");
      }
      try
      {
      request.onreadystatechange=viewInfo;
      request.open("GET",url,true);
      request.send();
      }
      catch(e){alert("Unable to connect to server");}
      }

      function viewInfo(){
      if(request.readyState==4){
      var val=request.responseText;
      document.getElementById('location').innerHTML=val;
      }
      }
      
      /////////////////////////////////validation///////////////////
      
      function validate()
       {
       
          if( document.project.pname.value == "" )
          {
             alert( "Please provide your project Name!" );
             document.project.pname.focus() ;
             return false;
          }
          if( document.project.tused.value == "" )
          {
             alert( "Please provide your technolofy used!" );
             document.project.tused.focus() ;
             return false;
          }
          if( document.project.description.value == "" )
          {
             alert( "Please provide your project description!" );
             document.project.description.focus() ;
             return false;
          }
          if( document.project.project.value == "" )
          {
             alert( "Please browse your project!" );  
             document.project.project.focus() ;
             return false;
          }
          
          return( true );
       }
      </script>
      
</head>

<body onLoad="stampIt();">
<jsp:include page="head.jsp"></jsp:include>


<div class="Bannermain" style="height: 950px">
<div class="Banner">
<section id="form"> 
<%out.print(session.getAttribute("msg"));
                    session.setAttribute("msg", "");%>
  <h1 align="center" style="margin: 30px 20px;color: maroon;">all Projects</h1> 
  <div id="location"></div>
<%
String user=(String)session.getAttribute("userEmail");
if(user.length()>0){
	DatabaseFactory factory=new DatabaseFactory();
	List<Project> list=factory.getProject();
try{	 
out.print("<table align='center' border='1' cellspacing=0px cellpadding=10px style='width:570px;'");
out.print("<tr ><td style='padding:10px;'><B>Project Name</B></td><td style='padding:10px;'><B>Technology Used</B></td></tr>");
for(Project project: list){
out.print("<tr><td style='padding:10px;'><a href='#' name='"+project.getProjectName()+"' onclick='javascript:viewP(this.name)'>"+project.getProjectName()+"</a></td>");
out.print("<td style='padding:10px;'>"+project.getTechUsed()+"</td>");
out.print("</tr>");
}
out.print("</table>");
out.print("<b style='color:green;margin:20px 50px'>* click on project name to see details.</b>");
}catch(Exception e){e.printStackTrace();}
}//end of if
%>

<p>---------------------------------------------------------------------------------------------------------------------------------------</p>
<form name="project" action="projectUpload.jsp" method="POST" enctype="multipart/form-data" onSubmit="return validate(this);" autocomplete="off">

                    
                    <h1 align="center" style="margin: 10px 20px;">Uplaod Your Project</h1>      
            <table border="0" cellspacing="14" cellpadding="1" align="center" style="width: 530px;">
                <tr>
                   <td>PROJECT NAME</td>
                   <td> <input type="text" name="pname" id="ip" style="padding: 10px 10px;width: 340px" required="required"/></td>
                 </tr>
                 <tr>
                   <td>TECHNOLOGY USED</td>
                   <td> <input type="text" name="tused" id="ip" style="padding: 10px 10px;width: 340px" required="required"/></td>
                 </tr>
                 <tr>
                    <td>BROWSE PROJECT</td>
                    <td><input type="file" name="project" id="ip" style="float: left;padding: 10px 10px;width: 340px" required="required"/></td>
                 </tr> 
                
                    <tr>
                        <td>DESCRIPTION </td>
                        <td><textarea name="description" id="ip" style="width: 320px;height: 70px;resize: none" placeholder="your question here.." required="required"></textarea></td>
                    </tr>   
                    <tr>
                 <td colspan="2" > <input type="submit" value=" Upload " name="submit" id="myButton" style="height: 40px;padding: 8px 10px;float: right;" /></td>
                    </tr>        
                            
                </tbody>
            </table>
        </form>
    </section>
    <div style="width: 675px;float: left;">
<jsp:include page="footer.jsp"></jsp:include>
</div>
</div>


<div class="l_form">
<div style="float:right">
  <jsp:include page="newsEvent.jsp"></jsp:include>     
</div>
</div>
</div>

</body>
</html>
