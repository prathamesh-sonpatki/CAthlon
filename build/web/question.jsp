<%@page import="javax.swing.text.Document"%>
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
            int bflag = Integer.parseInt(httpsession.getAttribute("bullFlag").toString());
            int index = Integer.parseInt(httpsession.getAttribute("index").toString());
%>
<!DOCTYPE html>
<html lang="en">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="no-cache">
    <meta http-equiv="Expires" content="Sat, 01 Dec 2001 00:00:00 GMT">
    <head>
        <meta charset="utf-8" />
        <title>MCQ Round : CAthlon | Cybernetics</title>

        <link rel="stylesheet" href="main.css" type="text/css" />

        <!--[if IE]>
	<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
        <!--[if lte IE 7]>
	<script src="js/IE8.js" type="text/javascript"></script><![endif]-->
        <!--[if lt IE 7]>
	<link rel="stylesheet" type="text/css" media="all" href="css/ie6.css"/><![endif]-->
       <script type="text/javascript" src="js/disablekey.js"></script>
        <script type="text/javascript" >
            <!--
             var mins = <%=mins%>; // write mins tojavascript
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
            function setlifeline(s)
            {
                document.lifelines.lifeline  = s;
                //is there any way of submitting a form from javascript
                alert(document.lifelines.action)
            }
           
        </script>
            






    <body id="index" class="home" oncontextmenu="return false;">

    <header id="banner" class="body">
        <h1><a href="#">CAthlon 2012 <strong><br>Tribute To Dennis Ritchie </strong></a></h1>

        <nav><ul>
                <form id="lifelines" name="lifelines" action="evalres" method ="post">
                    <input lifeline type="text" hidden value="">
                <li onclick="setlifeline('skip')" >Skip&nbsp;</li>
                <li onclick="setlifeline('ff')">50:50&nbsp;</li>
                <li onclick="setlifeline('bull')">Bull's Eye</li>
                <input type="submit" id="submit" hidden value="" >
                </form>
            </ul></nav>

    </header><!-- /#banner -->

    <%


    %>

    <jsp:declaration>            Connection con;
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

    <section id="content" class="body">
        <ol id="posts-list" class="hfeed">
            <li><article class="hentry">



                <form action="evalres"  name="cd" id ="cd" method="POST">
                    <header>
                       <div id="hcontent">
                        <p>Remaining Time :<input type="text" name="mins" value="20.00"style="border: none; width:1.2em;">:<input type="text" name="secs" value ="60" style="border: none;width:1.2em;">
                        <p>Score:&nbsp;&nbsp;&nbsp; <%= score%>
                        <p >Level:<%= level%>
                        </div>
                    </header>
                    </article>
            
                    </section>
            
           



                        <jsp:scriptlet>


                        Class.forName("com.mysql.jdbc.Driver");
                        con = DriverManager.getConnection(url, "root", "prathamesh");
                        //Querirs for level 1 (FE / SE) for difficulty levels 1 , 2 & 3
                        String query1 = "select * from Questions1 where id = " + Integer.parseInt(httpsession.getAttribute("q1index").toString());
                        String query2 = "select * from Questions2 where id = " + Integer.parseInt(httpsession.getAttribute("q2index").toString());
                        String query3 = "select * from Questions3 where id = " + Integer.parseInt(httpsession.getAttribute("q3index").toString());
                        //Querirs for level 1 (TE / BE) for difficulty levels 1 , 2 & 3                       String query4 = "select * from Questions4 where id = " + (index % offset);
                        String query4 = "select * from Questions4 where id = " + Integer.parseInt(httpsession.getAttribute("q1index").toString());
                        String query5 = "select * from Questions5 where id = " + Integer.parseInt(httpsession.getAttribute("q2index").toString());
                        String query6 = "select * from Questions6  where id = " + Integer.parseInt(httpsession.getAttribute("q3index").toString());



                        stmt = con.createStatement();
                        ResultSet rs;

                        if (httpsession.getAttribute("level").toString().equals("1")) {
                            if (Integer.parseInt(httpsession.getAttribute("currentLevel").toString()) == 1) {
                                rs = stmt.executeQuery(query1);
                            } else if (Integer.parseInt(httpsession.getAttribute("currentLevel").toString()) == 2) {
                                rs = stmt.executeQuery(query2);
                            } else {

                                rs = stmt.executeQuery(query3);

                            }
                        } else {
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

                        <div id="qcontent"  style =" height: 250px;width: 400px;overflow:-moz-scrollbars-vertical;overflow-y:auto;"><%=question_text%></div>
                    

                        <div id="ocontent">
                   
                            <input type="radio" name="options"  required  value="a"  id ="o1"/>a)<%=option1%><br>
                         <input type="radio"  name="options" required value="b" onclick="" id="o2"/>b)<%=option2%><br>
                        <input type="radio"  name="options" required value= "c" onclick="" id ="o3"/>c)<%=option3%><br>
                        <input type="radio"  name="options" required value= "d" onclick="" id ="o4"/>d)<%=option4%>
                        
                        <p><input type="submit" value="GoNext" name="nextq" id="nextq"  />
                        </div>




 </form>
</li>
</ol>
</section>
                       



                </body>
                </html>
