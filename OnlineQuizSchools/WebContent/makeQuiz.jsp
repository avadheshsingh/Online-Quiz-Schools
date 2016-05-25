<!DOCTYPE html>
<html>
<head>
<title>online QuizSchools</title>
    <meta charset=utf-8 />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link href="css/elementcss.css" rel="stylesheet" type="text/css" />
      
      <script type="text/javascript">
   
      // Form validation code will come here.
      function validate()
      {
      
         if( document.quizForm.quizName.value == "" )
         {
            alert( "Please provide your Quiz Name!" );
            document.quizForm.quizName.focus() ;
            return false;
         }
         if( document.quizForm.subject.value == "" )
         {
            alert( "Please provide your subject!" );
            document.quizForm.subject.focus() ;
            return false;
         }
         if( document.quizForm.noOfQues.value == "" )
         {
            alert( "Please provide your no of question!" );
            document.quizForm.noOfQues.focus() ;
            return false;
         }
         if( document.quizForm.quizTime.value == "" )
         {
            alert( "Please provide your quiz time!" );
            document.quizForm.quizTime.focus() ;
            return false;
         }
         if( document.quizForm.groupId.value == "" )
         {
            alert( "Please provide your groupId!" );
            document.quizForm.groupId.focus() ;
            return false;
         }
         if( document.quizForm.timePerQues.value == "" )
         {
            alert( "Please provide your time per question!" );
            document.quizForm.timePerQues.focus() ;
            return false;
         }
         if( document.quizForm.aboutQuiz.value == "" )
         {
            alert( "Please provide your about Quiz!" );
            document.quizForm.aboutQuiz.focus() ;
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

 <form name="quizForm" action="makeQuizSave.jsp" method="POST" autocomplete="off" onSubmit="return validate(this);">
 <section id="form">
 
 <%out.print(session.getAttribute("msg"));
          session.setAttribute("msg", "");%>
                    
            <table border="0" cellspacing="14" cellpadding="1" align="center">
                <tr>
                    <td colspan="2"><b style="font-size: 18px">Quiz Info :</b></td>
                 </tr>
                
                    <tr>
                        <td>QUIZ NAME <b style="color: red;">*</b></td>
                        <td><input type="text" name="quizName" id="ip" value="" placeholder="quiz name here" required/></td>
                    </tr>   
                    
                     <tr>
                        <td>SUBJECT <b style="color: red;">*</b></td>  
                        <td><input type="text" name="subject" value="" id="ip" placeholder="subject here..." required="required"/></td>     
                    </tr>
                    
                    <tr>
                        <td>NO OF QUESTION <b style="color: red;">*</b></td>  
                        <td><input type="text" name="noOfQues" value="" pattern="[0-9]+" id="ip" placeholder="no. of ques. here..." required="required"/></td>     
                    </tr>
                    					
                    <tr>
                        <td>QUIZ TIME <b style="color: red;">*</b></td>  
                        <td><input type="text" name="quizTime" value="" id="ip" pattern="[0-9]+" placeholder="quiz time here here..." required="required"/></td>     
                    </tr>
                    <tr>
                        <td>GROUP ID <b style="color: red;">*</b></td>  
                        <td><input type="text" name="groupId" value="" id="ip" placeholder="group Id here..." required="required"/></td>     
                    </tr>
                    <tr>
                        <td>TIME PER QUESTION <b style="color: red;">*</b></td>  
                        <td><input type="text" name="timePerQues" value="" id="ip" pattern="[0-9]+" placeholder="time per ques. here..." required="required"/></td>     
                    </tr>
                    <tr>
                        <td>ABOUT QUIZ <b style="color: red;">*</b></td>
                        <td><textarea name="aboutQuiz" id="ip" style="width: 260px;height: 90px;resize: none" placeholder="something about quiz here.." required="required"></textarea></td>
                    </tr>  
                </tbody>
            </table>
                 <section id="footer">
                            <input type="submit" value=" Create " name="submit" id="myButton" style="margin-left: 7.0cm" />
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
