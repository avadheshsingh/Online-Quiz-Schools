<!DOCTYPE html>
<%@page import="com.avi.myPack.DatabaseFactory"%>
<html>
<head>
<title>online QuizSchools</title>
    <meta charset=utf-8 />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <link href="css/elementcss.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
     function validate()
      {
      
         if( document.questionForm.question.value == "" )
         {
            alert( "Please provide your Quiz Name!" );
            document.questionForm.question.focus() ;
            return false;
         }
         if( document.questionForm.option1.value == "" )
         {
            alert( "Please provide your Quiz Name!" );
            document.questionForm.option1.focus() ;
            return false;
         }
         if( document.questionForm.option2.value == "" )
         {
            alert( "Please provide your Quiz Name!" );
            document.questionForm.option2.focus() ;
            return false;
         }
         if( document.questionForm.option3.value == "" )
         {
            alert( "Please provide your Quiz Name!" );
            document.questionForm.option3.focus() ;
            return false;
         }
         if( document.questionForm.option4.value == "" )
         {
            alert( "Please provide your Quiz Name!" );
            document.questionForm.option4.focus() ;
            return false;
         }
         if( document.questionForm.answer.value == "" )
         {
            alert( "Please provide your Quiz Name!" );
            document.questionForm.answer.focus() ;
            return false;
         }
         if( document.questionForm.description.value == "" )
         {
            alert( "Please provide your Quiz Name!" );
            document.questionForm.description.focus() ;
            return false;
         }
          return( true );
      }
     </script>    
     
</head>
<%! static int i=1; %>
<body onLoad="stampIt();">
   <jsp:include page="head.jsp"></jsp:include>
   
<div class="Bannermain" style="height: 950px">
<div class="Banner" style="height: 700px">


      <form name="questionForm" action="makeQuestionSave.jsp" method="POST" onSubmit="return validate(this);" autocomplete="off">
                    <section id="form"> 
                    <h1 align="center" style="margin: 10px 30px"><%=session.getAttribute("quizName") %></h1>      
            <table border="0" cellspacing="14" cellpadding="1" align="center" >
                <tr>
                    <td colspan="2"><b style="font-size: 18px">QUESTION :<%=i %></b></td>
                 </tr>
                  <%
                 String quizName= (String)session.getAttribute("quizName");
                    session.setAttribute("qstatus","notDone");
                    i++;
                   int c=new DatabaseFactory().noOfQuestion(quizName);
                    if(i>c)
					{i=1;
					 session.setAttribute("qstatus","complete");
					}
                    System.out.print("\n i="+i+"c="+c);
                    %>
                    <tr>
                        <td>QUESTION <b style="color: red;">*</b></td>
                        <td><textarea name="question" id="ip" style="width: 260px;height: 200px;resize: none" placeholder="your question here.." required="required"></textarea></td>
                    </tr>   
                    
                     <tr>
                        <td>OPTION 1 <b style="color: red;">*</b></td>  
                        <td><input type="text" name="option1" value="" id="ip" placeholder="option1 here..." required="required"/></td>     
                    </tr>
                    
                    <tr>
                        <td> OPTION 2 <b style="color: red;">*</b></td>  
                        <td><input type="text" name="option2" value="" id="ip" placeholder="option2 here..." required="required"/></td>     
                    </tr>
                    					
                    <tr>
                        <td>OPTION 3 <b style="color: red;">*</b></td>  
                        <td><input type="text" name="option3" value="" id="ip" placeholder="option3 here..." required="required"/></td>     
                    </tr>
                    <tr>
                        <td>OPTION 4 <b style="color: red;">*</b></td>  
                        <td><input type="text" name="option4" value="" id="ip" placeholder="option4 here..." required="required"/></td>     
                    </tr>
                    <tr>
                        <td>ANSWER <b style="color: red;">*</b></td>  
                        <td><input type="text" name="answer" value="" id="ip" placeholder="answer here..." required="required"/></td>     
                    </tr>
                    <tr>
                        <td>DESCRIPTION <b style="color: red;">*</b></td>
                        <td><textarea name="description" id="ip" style="width: 260px;height: 130px;resize: none" placeholder="answer descreption here.." required="required"></textarea></td>
                    </tr>
                    
                </tbody>
            </table>
                        <section id="footer">
                             <input type="submit" value="Add Next" name="submit" id="myButton" style="margin-left: 7.0cm" />
                            
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
