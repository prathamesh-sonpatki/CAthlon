<%@page import="java.lang.String"%>
<%@page import="java.util.Random"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@page import="javax.servlet.http.HttpServletResponse"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : question
    Created on : 29 Jan, 2012, 5:54:27 PM
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
        <title>First Round</title>



        <script type="text/javascript"  >
javascript:window.history.forward(1);
</script>

        <%
                    HttpSession httpsession = request.getSession();

                    String pname1 = httpsession.getAttribute("Participant1").toString();
                    String pname2 = httpsession.getAttribute("Participant2").toString();
                    Double score = (Double) httpsession.getAttribute("Score");
                    String time = (String) httpsession.getAttribute("Time");
                    String mins = httpsession.getAttribute("mins").toString();
                    String secs = httpsession.getAttribute("secs").toString();

                    int level = Integer.parseInt(httpsession.getAttribute("currentLevel").toString());
                     int flag = Integer.parseInt(httpsession.getAttribute("flag").toString());
                      int bflag = Integer.parseInt(httpsession.getAttribute("flag").toString());
        %>
        <script type="text/javascript" >
            <!--
            var mins = <%=mins%>; // write mins to javascript
            var secs = <%=secs%>; // write secs to javascript
            function timer()
            {
                // tic tac
                if( --secs == -1 )
                {
                    secs = 59;
                    --mins;
                }

                // leading zero? formatting
                if( secs < 10 ) secs = "0" + secs;
                if( mins < 10 ) mins = "0" + parseInt( mins, 10 );

                // display
                document.cd.mins.value = mins;
                document.cd.secs.value = secs;

                // continue?
                if( secs == 0 && mins == 0 ) // time over
                {
                    alert('Time is up');
                    window.location = "result.jsp";

                }
                else // call timer() recursively every 1000 ms == 1 sec
                {
                    window.setTimeout( "timer()", 1000 );
                }

            }
            window.onload = timer;
            //-->
        </script>
            <script type="text/javascript" >

    function hide()
    {
        document.cd.o1.display='';
        

    }
    </script>
    </head>
    <body style="background: url(images/question.png); background-repeat: no-repeat;left: 0;right: 0;top:0;bottom: 0;background-attachment: scroll;">

        <%


        %>

        <jsp:declaration>            Connection con;
            int index = 1;
            Statement stmt;
            String url = "jdbc:mysql://localhost:3306/CAthlon";
            String question_text;
            String option1;
            String option2;
            String option3;
            String option4;
            String answer;
           
            int skipflag = 0;
        </jsp:declaration>
        <form action="eval"  name="cd" id ="cd" method="POST">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="mins" style="font-size: 4em; width: 1.2em;background: inherit;border: none;"><b style="font-size: 4em">:</b><input type="text" name="secs" value ="60"  style="font-size: 4em; width: 4em;background: inherit;border: none;">
            
           
                    &nbsp;&nbsp;
           
                
            <br><div align="center" style ="height:1.2em;width: 25em;font-size: 2.5em;background-color: inherit;border:none;font-family:verdana;"><%= score%></div>
            <div align="center" style ="height:2em;width: 25em;font-size: 2.5em;background-color: inherit;border:none;font-family:verdana;"><%= level%></div><br>
            <h3 style="color: red;"> Q.<%= index%><%index++;%> </h3>

            <jsp:scriptlet>

                        
                        
                        
                        int id = 0;

                        Class.forName("com.mysql.jdbc.Driver");
                        con = DriverManager.getConnection(url, "root", "prathamesh");
                        
                        
                       
                        //Querirs for level 1 (FE / SE) for difficulty levels 1 , 2 & 3
                        String query1 = "select * from Questions1 where id = " + Integer.parseInt(httpsession.getAttribute("q1index").toString());
                        String query2 = "select * from Questions2 where id = " +  Integer.parseInt(httpsession.getAttribute("q2index").toString());
                        String query3 = "select * from Questions3 where id = " + Integer.parseInt(httpsession.getAttribute("q3index").toString());
                        //Querirs for level 1 (TE / BE) for difficulty levels 1 , 2 & 3                       String query4 = "select * from Questions4 where id = " + (index % offset);
                        String query4 = "select * from Questions4 where id = " + Integer.parseInt(httpsession.getAttribute("q1index").toString());
                        String query5 = "select * from Questions5 where id = " + Integer.parseInt(httpsession.getAttribute("q2index").toString());
                        String query6 = "select * from Questions6  where id = " + Integer.parseInt(httpsession.getAttribute("q3index").toString());


                        id = id + 1;
                        stmt = con.createStatement();
                        ResultSet rs;
                        
                        if (httpsession.getAttribute("level").toString().equals("1"))
{
                            if (Integer.parseInt(httpsession.getAttribute("currentLevel").toString()) == 1) {
                                rs = stmt.executeQuery(query1);
                            } else if (Integer.parseInt(httpsession.getAttribute("currentLevel").toString()) == 2) {
                                rs = stmt.executeQuery(query2);
                            } else {

                                rs = stmt.executeQuery(query3);
                            
                        } 
}
                    else {
                            if (httpsession.getAttribute("currentLevel").toString().equals("1")) {
                                rs = stmt.executeQuery(query4);
                            } else if (httpsession.getAttribute("currentLevel").toString().equals("2")) {
                                rs = stmt.executeQuery(query5);
                            } else {
                                rs = stmt.executeQuery(query6);
                            }
                        }

                        while (rs.next()) {
                            question_text = rs.getString(2);

                            option1 = rs.getString(3);


                            option2 = rs.getString(4);
                            option3 = rs.getString(5);
                            option4 = rs.getString(6);
                            answer = rs.getString(7);

                            answer = answer.replaceAll("\\s", "");
                            httpsession.setAttribute("answer", answer);
                        }
                        rs.close();
                        con.close();

            </jsp:scriptlet>
            <b> <%= question_text%> </b>
            <h4><div id ="o1">a)<%=option1%><input type="radio" name="options"   value="a"/></div></h4>
            <h4><div id ="o2">b)<%=option2%><input type="radio"  name="options" value="b" onclick="" /></div></h4>
            <h4><div id ="o3">c)<%=option3%><input type="radio"  name="options" value= "c" onclick=""/></div></h4>
            <h4><div id ="o4">d)<%=option4%><input type="radio"  name="options" value= "d" onclick=""/></div></h4>
            <br>
            <input type="submit" value="GoNext" name="nextq" id="nextq"  />





        </form>


    </body>
</html>
