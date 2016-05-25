<!DOCTYPE html>
<html>
<head>
<title>online QuizSchools</title>
    <meta charset=utf-8 />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


<link href="css/sjs.css" rel="stylesheet" type="text/css" />
<link href="css/nivo-slider.css" rel="stylesheet" type="text/css" />
<link href="css/Common.css" rel="stylesheet" type="text/css" />
<link href="css/myStyle.css" rel="stylesheet" type="text/css" />
<link href="http://fonts.googleapis.com/css?family=Rancho" rel="stylesheet" type="text/css" />
 <link href="css/elementcss.css" rel="stylesheet" type="text/css" />

<script type="text/javascript" src="scripts/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="scripts/jquery.pngFix.pack.js"></script>
<script type="text/javascript" src="scripts/jquery.nivo.slider.pack.js"></script>
<script type="text/javascript" src="scripts/page.js"></script>
<script type="text/javascript" src="scripts/datetimestamp.js"></script>
</head>

<body style="height: auto;">

 

<div id="TopMenuBody">
  <div id="TopMenuContainer">
    <div id="topMenu">
                
                        <a href="home.jsp">Home</a>                    
                        <img src="images/top-Menu-V-Div.png" align="middle">
                    
              <a href="aboutUs.jsp">About Us</a>                    
                        <img src="images/top-Menu-V-Div.png" align="middle">                    
              <a href="contactUs.jsp">Contact Us</a>
              </div>
    <div class="Date" id="clock">Please wait..</div>
  </div>
</div>

<div id="MainHeader" >
<div id="Header"><img src="images/logo.JPG" class="fleft" alt="" />
<div id="Right-Header">
<div class="phone"><img src="images/phone.png" alt="" /><span class="call pt10">for more details.</span><span class="phone_no">8252655408</span></div>

</div>
</div>
</div>


<div class="Menu">
<div class="subMenu1" style="width: 670px">
<div id="R-menu"></div>
<div id="L-menu"></div>
<div id="MainMenu" style="width: 660px">
<ul>
<li><a href="home.jsp">Home</a></li>

<li><img src="images/devider.png" alt="" /></li>

<li><a href="takeQuiz.jsp">Play Quiz</a></li>

<li><img src="images/devider.png" alt="" /></li>

<li><a href="makeQuiz.jsp">Create Quiz</a></li>

<li><img src="images/devider.png" alt="" /></li>

<li><a href="interviewQ.jsp">Interview Q.</a>
	<div class="drops">
	<img src="images/nav_arrow.png" alt="" />
		<div class="dropMenu menu2">
		<ul class="titles">
		<li><a href="#">Technical</a></li>
		<li><a href="#">Non Technical</a></li>
		</ul>
		</div>
	</div>
</li>

<li><img src="images/devider.png" alt="" /></li>

<li><a href="projects.jsp">Projects</a></li>

<li><img src="images/devider.png" alt="" /></li>

<li><a href="askQuestion.jsp">Ask Question</a></li>

<li><img src="images/devider.png" alt="" /></li>

<li><a href="contactUs.jsp">Contact Us</a></li>
</ul>
</div>
</div>

<div class="subMenu2" style="width: 110px">
<div id="R-menu"></div>
<div id="L-menu"></div>
<div id="MainMenu" style="width:100px">
<ul>
<li><img src="images/devider.png" alt="" /></li>
<li><a href="logOut.jsp">Log Out</a></li>
</ul>
</div>
</div>
</div>

<div class="Bannermain" style="height: 950px">
<div class="Banner">
<section id="form">
<br><h2 style="color: green;margin: 0px 70px">Contact Us:</h2><br>	
<p style="margin: 0px 70px">

<b>
<img alt="my profile" src="images/Me.JPG"><br><br>
Avadhesh Singh <br>
B.Tech (3rd Year)<br>
Nit Patna<br>
avadheshsingh151@gmail.com<br>
avadhesh123979@nitp.ac.in<br>
8252655408

</b>
</p><br>
</section>
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
