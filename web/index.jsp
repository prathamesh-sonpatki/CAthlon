<%-- 
    Document   : index
    Created on : 26 Jan, 2012, 5:29:02 PM
    Author     : chaitanya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- meta tags -->
 <meta http-equiv="Pragma" content="no-cache">
 <meta http-equiv="Cache-Control" content="no-cache">
 <meta http-equiv="Expires" content="Sat, 01 Dec 2001 00:00:00 GMT">
<html lang="en">
    <head>
        <meta charset="utf-8">
        <!-- meta tags -->
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>C Athlon</title>
        <link rel="stylesheet" href="screen.css" media="screen" />
        <script type="text/javascript" src="js/jquery-1.7.1.js"></script>
        <script type ="text/javascript">
        $(function(){
            $("h1").click(function(){
                $(this).addClass("blue")
                
            }) 
            
        });
        </script>
         
        <script type="text/javascript" src="http://jqueryjs.googlecode.com/files/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="js/validation.js"></script>
    </head>
    <body>
        <h1 >Welcome to C Athlon 2012</h1>
      
        
        <form id ="form4" name="Login" action="login" method="POST" onclick="js/jquery.validation.js">
               <h2> Enter your details :</h2>
               <p>
                <label>Receipt Number</label>
                <input type="text" id ="receipt" name="receipt" value="" id="receipt" />
                </p>
                <p>
                <label>Participant 1 Name</label>
                <input type="text" id="pname1" name="pname1" value="" />
                </p>
                <p>
                <label>Participant 2 Name</label>
                <input type="text" id="pname2" name="pname2" value="" />
                </p>
                <p>
                <label>Email</label>
                <input type="text" id="email" name="email" value=""  />
                </p>
                <p>
                <label>College</label>
                <input type="text" id ="college" name="college" value="" />
                </p>
                <p>
                <label>Contact</label>
                <input type="text" id="contact" name="contact" value="" />
                </p>
                <p>
                <label>Level</label>
                Level 1<input type="radio" id="l1" name="level" value="1" />Level 2<input type="radio" id="l2" name="level" value="2" />
                </p>
                <p class="button">  <input type="submit" value="Submit" name="submit" onclick=" "></p>


            </form>
          
        
      
    </body>
</html>
