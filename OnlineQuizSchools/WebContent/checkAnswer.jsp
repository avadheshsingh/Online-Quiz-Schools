<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>

<%! static int count1=0; %>
<%! static int total=0; %>

 <%
                    if((String)request.getParameter("radio")!=null){
               			  String ans=(String)request.getParameter("radio");
  							System.out.println("ans= "+ans);
               			  session.setAttribute("ans",ans);
                    	
                    } %>

<%

if(session.getAttribute("count")!=null){
String name=(String)session.getAttribute("quizName");
String ans= (String)session.getAttribute("ans");
String ansQ= (String)session.getAttribute("ansQ");
Integer count=(Integer)session.getAttribute("count");

System.out.println("ansQ= "+ansQ);
System.out.println("ans= "+ans);

try{
if(count1==0)
{
count1=count-1;
System.out.println("count checkanswer_if= "+count);
if(ansQ.equals(ans)){
total=total+1;
}
System.out.println("total= "+total);
}

else{
count1=count-2;
System.out.println("count checkanswer_else= "+count);
if(ansQ.equals(ans)){
total=total+1;
System.out.println("total= "+total);
}
}

if(count>(Integer)session.getAttribute("max"))
{
Integer max=(Integer)session.getAttribute("max");
System.out.println("count at checkanswer_max= "+count);
//if(ansQ.equals(ans)){
//total=total+1;
//System.out.println("total= "+total);}
request.setAttribute("total",total);
total=0;
%>

<jsp:forward page="result.jsp"></jsp:forward>
<% 
}
}catch(Exception e){e.printStackTrace();}
}
%>
<jsp:forward page="getQuestion.jsp"></jsp:forward>