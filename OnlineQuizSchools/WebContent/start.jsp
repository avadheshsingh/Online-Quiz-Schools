<%@page import="com.avi.myPack.DatabaseFactory"%>
<%@page import="com.avi.myPack.CreateQuiz"%>
<%@page import="java.util.List"%>
<%! static int Q=1; %>
<!DOCTYPE html>
<html>
<head>
<title>online QuizSchools</title>
    <meta charset=utf-8 />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link href="css/elementcss.css" rel="stylesheet" type="text/css" />
      <%
      String time="";
      List<CreateQuiz> list= new DatabaseFactory().getQuizDetails((String)session.getAttribute("quizName"));
     for(CreateQuiz cr:list)
     { time=cr.getTimePerQuestion();}
      %>
 
 <script>
         //var time;       
		var min ="<%out.print(time);%>"; 
		var sec =0;
		//var f = new Date();
		function examTimer() {
		if (parseInt(sec) >0) {
		document.getElementById("showtime").innerHTML = "<b style='color: green'>Time Remaining :"+min+" Minutes ," + sec+" Seconds</b>";
		sec = parseInt(sec) - 1;                
		setTimeout("examTimer()", 1000);
		}
		else {
	     if (parseInt(min)==0 && parseInt(sec)==0){
		 document.getElementById("showtime").innerHTML = "<b style='color: green'>Time Remaining :"+min+" Minutes ," + sec+" Seconds</b>";
		// alert("Time Up");
		document.myForm.submit();
	     }
	     if (parseInt(sec) == 0) {				
		document.getElementById("showtime").innerHTML = "<b style='color: green'>Time Remaining :"+min+" Minutes ," + sec+" Seconds</b>";					
		min = parseInt(min) - 1;
		sec=59;
		setTimeout("examTimer()", 1000);
		}
	   }
	}
					
	</script>
      
</head>

<body onLoad="examTimer()">
  
<jsp:include page="head.jsp"></jsp:include>


<div class="Bannermain" style="height: 950px">
<div class="Banner" >

<form  action="checkAnswer.jsp" method="POST" name="myForm">
  
<section id="form">
 <marquee direction="left" style="color: navy;margin-top: 12px" onmouseover="stop()" onmouseout="start()"><B>Please Don't Use Back or Refresh Button</B></marquee>
<div style="margin: 30px 40px">

<h1 style="margin-left: 240px"><%= (String)session.getAttribute("quizName") %></h1><span  id="showtime" style="margin-left: 330px"></span>


<table><tr><td>
					<%
					String question=(String)session.getAttribute("question");
					String option1= (String)session.getAttribute("option1");
					String option2= (String)session.getAttribute("option2");
					String option3= (String)session.getAttribute("option3");
					String option4= (String)session.getAttribute("option4");
					out.print("<b>Question "+Q+":<b>"+question);
					Q++;
				
					if(session.getAttribute("status").equals("finish"))
					{Q=1;}
					
					%>
					
					</td></tr>
					<tr><td><input type="radio" name="radio" value="<%=option1%>" /><%=option1%></td></tr>	
					<tr><td><input type="radio" name="radio" value="<%=option2%>"/><%=option2 %></td></tr>	
					<tr><td><input type="radio" name="radio" value="<%=option3%>"/><%=option3 %></td></tr>	
					<tr><td><input type="radio" name="radio" value="<%=option4%>"/><%=option4 %></td></tr>			
                    <tr><td><br></td></tr>
                   
                    </table>
                    <input type="button" value="Submit" id="myButton" style="padding: 5px 5px;font-size: 13px"/>
                    <input type="submit" value="Next" id="myButton" style="padding: 5px 13px;font-size: 13px"/>
                    

 <br> <div id="location" style="margin: 30px 30px"></div>                          
 </div>  
</section>
</form>
</div>


<div class="l_form">
<div style="float:right">
  <jsp:include page="newsEvent.jsp"></jsp:include>     
</div>
</div>
</div>


<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
