<%-- 
    Document   : rules
    Created on : 26 Jan, 2012, 8:30:51 PM
    Author     : chaitanya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
 <meta http-equiv="Pragma" content="no-cache">
 <meta http-equiv="Cache-Control" content="no-cache">
 <meta http-equiv="Expires" content="Sat, 01 Dec 2001 00:00:00 GMT">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Rules : CAthlon</title>

        <script type="text/javascript"  >
javascript:window.history.forward(1);
</script>

    </head>
    <body>
        <h1>Please read all rules carefully!</h1>
        Welcome <%out.println(request.getSession().getAttribute("Participant1").toString());%>
        and    <%out.println(request.getSession().getAttribute("Participant2").toString());%>
        <br>
        <p>
   <br>         1. There are multiple choice questions on C language only. (No C++ questions).
<br>2. Questions are categorized into 3 levels.
     <br>&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;          Correct   &nbsp;&nbsp; &nbsp; Wrong
   <br> Level 1: &nbsp;&nbsp;      2   &nbsp;&nbsp;       -1
   <br> Level 2: &nbsp;&nbsp;      3    &nbsp;&nbsp;      -2
  <br>  Level 3:   &nbsp;&nbsp;    5    &nbsp;&nbsp;      -3

<br>3. If you give 2 correct answers in Level 1 & 2 you will advanced to next level.
<br>4. If you give a wrong answer in Level 2 & 3 you will move one Level down.
<br>5. Your current level will be shown by the software.
<br>6. You will be given 20 minutes and you can solve as many questions you want.
<br>7. There are three lifelines provided.

    <br>50-50    &nbsp;&nbsp;     :- Two wrong options are removed.
    <br>Bulls eye  &nbsp;&nbsp;     :- If you hit this button and answered:
         <br>  &nbsp;&nbsp; Correct :&nbsp; 2 * marks for that level will be awarded.
      <br>      &nbsp;&nbsp;Wrong   :&nbsp; 2 * negative marks for that level will be deducted.
   

<br>8. All questions are compiled under turbo C compiler.
<br>9. Most of the questions are small code blocks where you have to find the output. For other questions appropriate information is provided.
<br>10. Assume all the suitable header files are included.
<p>
        <form name="go" action="question.jsp" method="POST">
            <input type="submit" value="Start the test" name="start" />
        </form>
    </body>
</html>