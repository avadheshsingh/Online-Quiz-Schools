<!DOCTYPE html>
<html>
<head>
<title>online QuizSchools</title>
    <meta charset=utf-8 />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link href="css/elementcss.css" rel="stylesheet" type="text/css" />
</head>

<body onLoad="stampIt();">
<jsp:include page="head.jsp"></jsp:include>


<div class="Bannermain" style="height: 950px">
<div class="Banner">
 <form name="Profile" action="" method="POST">
                    <section id="form" style=""> 
                    <h1 align="center" style="margin: 10px 20px;">Ask Question</h1>      
            <table border="0" cellspacing="14" cellpadding="1" align="center" style="width: 600px;">
                <tr>
                    <td colspan="2"><b style="font-size: 18px">QUESTION:</b></td>
                 </tr>
                
                    <tr>
                        <td><textarea name="question" id="ip" style="width: 560px;height: 70px;resize: none" placeholder="your question here.." required="required"></textarea></td>
                    </tr>   
                    <tr>
                 <td > <input type="submit" value=" Submit " name="submit" id="myButton" style="height: 40px;padding: 8px 10px" /></td>
                    </tr>        
                            
                </tbody>
            </table>
                        
                            
                        
                        
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
