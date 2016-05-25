<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Login</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="css/myCss.css" rel="stylesheet" type="text/css" />
        
        <script type="text/javascript">
   
      // Form validation code will come here.
      function validate()
      {
      
         
         if( document.LoginForm.userid.value == "" )
         {
            alert( "Please provide your userId!" );
            document.LoginForm.userid.focus() ;
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
    <body >
     <div id="wrapper">
     
     <%out.print(session.getAttribute("msg"));
                    session.setAttribute("msg", "");%>
     
        <form name="LoginForm" class="login-form" onSubmit="return validate(this);" action="validateAdmin.jsp" method="post">
            <div class="header">
                
    <!--TITLE--><h1>ADMIN LOGIN</h1><!--END TITLE-->
    <!--DESCRIPTION--><span>Fill out the form below to login to my super awesome imaginary control panel.</span><!--END DESCRIPTION-->
    </div>
    <!--END HEADER-->
	
	<!--CONTENT--> 
    <div class="content">
        <!--USERNAME--><input name="userid" type="text" class="input username" placeholder="Enter UserId.." onfocus="this.value=''" required="required"/><!--END USERNAME-->
        <!--PASSWORD--><input name="password" type="password" class="input password" placeholder="Enter Password.." onfocus="this.value=''" required="required"/><!--END PASSWORD-->
    </div>
    <!--END CONTENT-->
    
    <!--FOOTER--> 
    <div class="footer">
    <!--LOGIN BUTTON--><input type="submit" name="submit" value="LogIn" class="button" /><!--END LOGIN BUTTON-->
    
    </div>
    <!--END FOOTER-->

        </form>
        </div>
    </body>
</html>
