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

<script type="text/javascript" src="scripts/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="scripts/jquery.pngFix.pack.js"></script>
<script type="text/javascript" src="scripts/jquery.nivo.slider.pack.js"></script>
<script type="text/javascript" src="scripts/page.js"></script>
<script type="text/javascript" src="scripts/datetimestamp.js"></script>

<script type="text/javascript">
   
      // Form validation code will come here.
      function validate()
      {
      
         if( document.LoginForm.category.value == "" )
         {
            alert( "Please provide your category!" );
            document.LoginForm.category.focus() ;
            return false;
         }
         if( document.LoginForm.email.value == "" )
         {
            alert( "Please provide your email!" );
            document.LoginForm.email.focus() ;
            return false;
         }
         if( document.LoginForm.password.value == "" )
         {
            alert( "Please provide your password!" );
            document.LoginForm.password.focus() ;
            return false;
         }
         return( true );
      }
   
</script>


</head>

<body onLoad="stampIt();">
<div id="TopMenuBody">
  <div id="TopMenuContainer">
    <div id="topMenu">
                
                        <a href="index.jsp">Home</a>                    
                        <img src="images/top-Menu-V-Div.png" align="middle">
                    
              <a href="aboutUs.jsp">About Us</a>                    
                        <img src="images/top-Menu-V-Div.png" align="middle">                    
              <a href="contactUs.jsp">Contact Us</a>
              </div>
    <div class="Date" id="clock">Please wait..</div>
  </div>
</div>

<div id="MainHeader">
<div id="Header"><img src="images/logo.JPG" class="fleft" alt="" />
<div id="Right-Header">
<div class="phone"><img src="images/phone.png" alt="" /><span class="call pt10">for more details.</span><span class="phone_no">8252655408</span></div>

</div>
</div>
</div>


<div class="Menu">
<div class="subMenu1">
<div id="R-menu"></div>
<div id="L-menu"></div>
<div id="MainMenu">
<ul>
<li><a href="index.jsp">Home</a></li>

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
<li><a href="#">Non-Technical</a></li>

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

<div class="subMenu2">
<div id="R-menu"></div>
<div id="L-menu"></div>
<div id="MainMenu" style="width:142px">
<ul>
<li><a href="index.jsp">Log In</a></li>
<li><img src="images/devider.png" alt="" /></li>
<li><a href="registration.jsp">Register</a></li>
</ul>
</div>
</div>

</div>

<div class="Bannermain">
<div class="Banner" style="width: 628px">
<div id="slider" class="nivoSlider" style="width: 628px" > <a href="#"><img src="images/sliderimage/slide1.jpg"  /></a>  <a href="#"><img src="images/sliderimage/slide2.jpg" /></a> <a href="#"><img src="images/sliderimage/slide3.jpg "/> </a> <a href="#"><img src="images/sliderimage/img.jpg "/> </a></div>
</div>

<div class="l_form" style="width: 350px">
<div style="float:right">
        <form name="LoginForm" class="login-form" action="validate.jsp" method="post" onSubmit="return validate(this);" >
            <div class="header">
                
    <!--TITLE--><h1 style="text-transform: none;">Login Here:</h1><!--END TITLE-->
    </div>
    <!--END HEADER-->
	
	<!--CONTENT--> 
    <div class="content">
    
    <select name="category"  id="menu">
                                <option value=""> Select Category </option>
                                <option value="Teacher"> Teacher</option>
                                <option value="Student"> Student </option>
                               
                            </select>
    
        <!--USERNAME--><input name="email" type="email" class="input username" placeholder="Enter your email.."  onFocus="this.value=''" required="required"/><!--END USERNAME-->
        <!--PASSWORD--><input name="password" type="password" class="input password" placeholder="Enter Password.." onFocus="this.value=''" required="required"/><!--END PASSWORD-->
    </div>
    <!--END CONTENT-->
    
    <!--FOOTER--> 
    <div class="footer">
  
    <!--LOGIN BUTTON--><input type="submit" name="submit" value="Log In" class="button" /><!--END LOGIN BUTTON-->
    <!--REGISTER BUTTON--><!--END REGISTER BUTTON-->
    <% String msg="";
    msg=(String)session.getAttribute("msg");
    %>
     <%=  msg%>
     <% session.setAttribute("msg", ""); %>
    </div>
    <!--END FOOTER-->

        </form>
        </div>
        

</div>
</div>
<div id="Services">
<div id="Ser-Top"></div>
<div id="Ser-Mid">
<ul>
<li><img src="images/admission.png" alt="" />
<div class="Green-Bg">
<span><a href="#">New Courses</a></span>
<p>Lorem ipsum dolor sit amet, consectetur adipiscing...</p>
<div class="Blue-arrow"><a href="#"><img src="images/blue-arrow.png" alt="" /></a></div>
</div>
</li>

<li><img src="images/infra.png" alt="" />
<div class="Green-Bg">
<span><a href="#">Running Competetions</a></span>
<p>Lorem ipsum dolor sit amet, consectetur adipiscing...</p>
<div class="Blue-arrow"><a href="#"><img src="images/blue-arrow.png" alt="" /></a></div>
</div>
</li>

<li><img src="images/quiz.jpg" alt="" />
<div class="Green-Bg">
<span><a href="#">Brain Teaser &amp; Puzzels</a></span>
<p>Lorem ipsum dolor sit amet, consectetur adipiscing...</p>
<div class="Blue-arrow"><a href="#"><img src="images/blue-arrow.png" alt="" /></a></div>
</div>
</li>

<li><img src="images/project.jpg" alt="" />
<div class="Green-Bg">
<span><a href="#">Projects</a></span>
<p>Lorem ipsum dolor sit amet, consectetur adipiscing...</p>
<div class="Blue-arrow"><a href="#"><img src="images/blue-arrow.png" alt="" /></a></div>
</div>
</li>

</ul>
</div>
<div id="Ser-Bot"></div>
</div>



<div id="Content">
<div id="Welcome">
<div id="Welcome-Top"></div>
<div id="Welcome-Mid">
<h1 style="padding-bottom: 8px;line-height: 35px;font-size: 25px;font-family: serif;padding-left: 20px">Welcome to <span><i>QuizSchools</i></span></h1>
<p style="padding: 2px 24px 20px 22px">QuizSchools had a humble beginning on 23rd  June, 2015 with five teachers and 110 students for all classes .  Today the place has become a temple of learning and the school has established a distinct place in the educational map of Eastern Uttar Pradesh.<br> The QuizSchools was the response of the Catholic Diocese of Gorakhpur, to the constant demands made by the people of Gorakhnath for a school which will cater to the all –round development of their children. Gorakhnath for a school which will cater to the all –round development of their children.</p>
<br><span class="view" style="padding: 5px 20px"><a href="#">View All</a></span><br clear="all" />
</div>
<div id="Welcome-Bot"></div>
</div>

<div id="News">
<div id="NewsHead">News &amp; Events</div>
<div id="News-Mid"><marquee scrollamount="1" scrolldelay="30" truespeed="truespeed" direction="up" onMouseOver="stop();"  height="200" onMouseOut="start();">
<ul>
<li>A new JAVA project is added.</li>
<li>The QuizSchools obtained the No Objection Certificate from the Government</li>
<li>Abiding by the motto ‘Lead Kindly Light’ the QuizSchools</li>
<li style="border:none;">The school obtained the No Objection Certificate from the Government</li>
</ul></marquee>
<br>
<span class="view pr18 pb5 pt8"><a href="#">View All</a></span><br clear="all" />
</div>
<div id="News-Bot"></div>
</div><br clear="all" />
</div>

<div id="MainFooter">
<div id="Footer">
<div id="Social">
<ul>
<li>Follow us:</li>
<li><a href="#"><img src="images/facebook.png" alt="" /></a></li>
<li><a href="#"><img src="images/google.png" alt="" /></a></li>
<li><a href="#"><img src="images/twitter.png" alt="" /></a></li>
<li><a href="#"><img src="images/yahoo.png" alt="" /></a></li>
</ul>
</div>
<div id="Foot-Link">
<ul>
<li><a href="index.jsp">Home</a></li>
<li><a href="takeQuiz.jsp">Play Quiz</a></li>
<li><a href="makeQuiz.jsp">Create Quiz</a></li>
<li><a href="interviewQ.jsp">Interview Q.</a></li>
<li><a href="projects.jsp">Projects</a></li>
<li><a href="askQueston.jsp">Ask Questions</a></li>
<li><a href="contactUs.jsp">Contact Us</a></li>



</ul>
</div>
</div>
</div>

<div id="FooterBody">
<div id="FooterContainer"><span class="fright">Site by: <span class="v2web"><a href="http://www.v2web.biz/" target="_blank">v2web</a></span> &amp; <span class="v2web"><a href="http://www.entab.in/" target="_blank">CampusCare(R)</a></span></span>
Copyright © 2015<strong> QuizSchools,</strong> All Rights Reserved.</div>
</div>

</body>
</html>
