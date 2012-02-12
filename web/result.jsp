<%-- 
    Document   : result
    Created on : 30 Jan, 2012, 8:20:04 PM
    Author     : chaitanya
--%>

<%@page import="javax.servlet.http.HttpSession"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
 <meta http-equiv="Pragma" content="no-cache">
 <meta http-equiv="Cache-Control" content="no-cache">
 <meta http-equiv="Expires" content="Sat, 01 Dec 2001 00:00:00 GMT">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Result !</title>

        <script type="text/javascript"  >
javascript:window.history.forward(1);
</script>

    </head>
    <% HttpSession httpsession = request.getSession();
    %>
    <body>
        <h1>Result!</h1><br>
        <h1>Score : <%= httpsession.getAttribute("Score") %></h1>
        <h3> Total Attempted : <%=httpsession.getAttribute("attempt") %></h3>
        <h3> Total Correct : <%=httpsession.getAttribute("correct") %></h3>
        <h3> Total Incorrect : <%=httpsession.getAttribute("incorrect") %></h3>
        <h3> Total Correct of Type 1 : <%=httpsession.getAttribute("q1") %></h3>
        <h3> Total Correct of Type 2: <%=httpsession.getAttribute("q2") %></h3>
        <h3> Total Correct of Type 3: <%=httpsession.getAttribute("q3") %></h3>
        <form name="stop" action="index.jsp" method="POST">
             <%  
           
            
             httpsession.invalidate();
            


            %>
            <input type="submit" value="Thank you" name="stop" />
        </form>
       
    </body>
</html>
