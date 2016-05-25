

<!DOCTYPE html>
<html>
<head>
<title>online QuizSchools</title>
    <meta charset=utf-8 />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

 <link href="css/elementcss.css" rel="stylesheet" type="text/css" />
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

<!-- Alert box -->
<script src="js/jquery.js" type="text/javascript"></script>
<script src="js/jquery.ui.draggable.js" type="text/javascript"></script>
<script src="js/jquery.alerts.js" type="text/javascript"></script>
<link href="css/jquery.alerts.css" rel="stylesheet" type="text/css" media="screen" />
		

<script type="text/javascript">
   
      // Form validation code will come here.
      function validate()
      {
      
         if(Profile.firstName.value == "" )
         {
        	alert( "Please provide your name!" );
        	//jAlert('<b>This is a custom alert box</b>', 'Alert Dialog');
            document.Profile.firstName.focus() ;
            return false;
         }
         if( document.Profile.email.value == "" )
         {
            alert( "Please provide your email!" );
            document.Profile.email.focus() ;
            return false;
         }
         if( document.Profile.gender.value == "" )
         {
            alert( "Please provide your gender!" );
            return false;
         }
         if( document.Profile.category.value == "" )
         {
            alert( "Please provide your category!" );
            document.Profile.category.focus() ;
            return false;
         }
         if( document.Profile.dob.value == "" )
         {
            alert( "Please provide your dob!" );
            document.Profile.dob.focus() ;
            return false;
         }
         if( document.Profile.college.value == "" )
         {
            alert( "Please provide your college!" );
            document.Profile.college.focus() ;
            return false;
         }
         if( document.Profile.education.value == "" )
         {
            alert( "Please provide your education!" );
            document.Profile.education.focus() ;
            return false;
         }
         if( document.Profile.password.value == "" )
         {
            alert( "Please provide your password!" );
            document.Profile.password.focus() ;
            return false;
         }
         if( document.Profile.cpassword.value == "" )
         {
            alert( "Please provide your confirm Password!" );
            document.Profile.cpassword.focus() ;
            return false;
         }
         if( document.Profile.img.value == "" )
         {
            alert( "Please upload your profile!" );
            
            document.Profile.img.focus() ;
            return false;
         }
         
         if( document.Profile.cpassword.value!=document.Profile.password.value )
         {
            alert( "your password and confirm Password! is no matched." );
            document.Profile.cpassword.focus() ;
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
<div class="subMenu1" style="width: 670px">
<div id="R-menu"></div>
<div id="L-menu"></div>
<div id="MainMenu" style="width: 660px">
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



<div class="Bannermain" style="height: 950px">
<div class="Banner">

<form name="Profile"  action="registerSave.jsp" method="POST" enctype="multipart/form-data" onSubmit="return validate(this);" autocomplete="off">
 <section id="form">
 
 <%out.print(session.getAttribute("msg"));
          session.setAttribute("msg", "");%>
                    
            <table border="0" cellspacing="14" cellpadding="1" align="center">
                <tr>
                    <td colspan="2"><h1 style="">REGISTER YOURSELF:</h1></td>
                 </tr>
                   <tr>
                        <td>FIRST NAME <b style="color: red;">*</b></td>
                        <td><input type="text" name="firstName" id="ip" value="" placeholder="First Name" pattern="[a-zA-z ]+" required="required"/></td>
                    </tr>
                    <tr>
                        <td>LAST NAME </td>
                        <td><input type="text" name="lastName" id="ip" value="" placeholder="Last Name" pattern="[a-zA-z ]+" /></td>
                    </tr>
                     <tr>
                        <td>EMAIL ID <b style="color: red;">*</b></td>
                        <td><input type="email" name="email" value="" id="ip" placeholder="User Email Id" required="required" /></td>
                    </tr>
                    <tr>
                        <td>CATEGORY <b style="color: red;">*</b></td>
                        <td><select name="category" id="menu"  >
                                 <option value=""> SELECT </option>
                                <option value="Teacher"> Teacher </option>
								<option value="Student"> Student </option>

                            </select></td>    
                    </tr>  
                    <tr>
                        <td>GENDER <b style="color: red;">*</b></td>
                        <td><input type="radio" name="gender" value="Male" />Male
                        <input type="radio" name="gender" value="Female"/>Female
                        </td>    
                    </tr> 
                    <tr>
                        <td>DATE OF BIRTH <b style="color: red;">*</b></td>
                        <td><input type="date" name="dob" id="ip" required="required"></td>
                    </tr>
                     <tr>
                        <td>
                         COLLEGE/SCHOOL <b style="color: red;">*</b>
                        </td>  
                        <td>
                            <input type="text" name="college" value="" id="ip" placeholder="college/school name..." required="required" />
                            </td>
                         
                    </tr>					
                    <tr>
                        <td>
                         EDUCATION <b style="color: red;">*</b>
                        </td>  
                        <td>
                            <input type="text" name="education" value="" id="ip" placeholder="Education details..." required="required"/>
                        </td>   
                    </tr>
                    <tr>
                        <td>MOBILE NO </td>
                        <td><input type="tel" name="mno" value="" id="ip" placeholder="Phone No" pattern="[0-9]{10,12}" /></td>
                    </tr>
     
                    <tr>
                        <td>PASSWORD <b style="color: red;">*</b></td>
                        <td><input type="password" name="password" value="" id="ip" placeholder="password here.." required="required"/></td>
                    </tr>
                    <tr>
                        <td>CONFIRM PASSWORD <b style="color: red;">*</b></td>
                        <td><input type="password" name="cpassword" value="" id="ip" placeholder="confirm password.." required="required"/></td>
                    </tr>
                    
                    <tr>
                    <td>PROFILE PIC <b style="color: red;">*</b></td>
                        <td>
                            <input type="file" name="img" id="ip" required="required"/>       
                        </td>  
                    </tr>
                </tbody>
            </table>
                  <section id="footer">
                           <input type="submit"  value=" Register " name="submit" id="myButton" style="margin-left: 7.0cm" />
                   </section>
                        
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
