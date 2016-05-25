<!DOCTYPE html>
<html>
<head>
<title>online QuizSchools</title>
    <meta charset=utf-8 />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link href="css/elementcss.css" rel="stylesheet" type="text/css" />
      
      <script>
				var tim;       
				var min =2;
				var sec =0;
				var f = new Date();

				

				function examTimer() {
					if (parseInt(sec) >0) {

						document.getElementById("showtime").innerHTML = "Time Remaining :"+min+" Minutes ," + sec+" Seconds";
						sec = parseInt(sec) - 1;                
						tim = setTimeout("examTimer()", 1000);
					}
					else {

						if (parseInt(min)==0 && parseInt(sec)==0){
							document.getElementById("showtime").innerHTML = "Time Remaining :"+min+" Minutes ," + sec+" Seconds";
							 alert("Time Up");
							

						 }

						if (parseInt(sec) == 0) {				
							document.getElementById("showtime").innerHTML = "Time Remaining :"+min+" Minutes ," + sec+" Seconds";					
							min = parseInt(min) - 1;
							sec=59;
							tim = setTimeout("examTimer()", 1000);
						}

					}
				}
				
</script>
      
</head>

<body onLoad="examTimer()">
<jsp:include page="head.jsp"></jsp:include>


<div class="Bannermain" style="height: 950px">
<div class="Banner" >
<span  id="showtime"></span>
<img src="imgShow.jsp" height="100" width="100" />
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
