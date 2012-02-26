
<%@page import="javax.servlet.http.HttpSession"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

    <% HttpSession httpsession = request.getSession();
    %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>CAthlon | Cybernetics</title>

<link rel="stylesheet" href="main.css" type="text/css" />

<!--[if IE]>
	<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
<!--[if lte IE 7]>
	<script src="js/IE8.js" type="text/javascript"></script><![endif]-->
<!--[if lt IE 7]>
	<link rel="stylesheet" type="text/css" media="all" href="css/ie6.css"/><![endif]-->
<script type="text/javascript" src="js/disablekey.js"></script>
</head>

<body id="index" class="home" onload="setEventListener(disableKey);">

<header id="banner" class="body">
	<h1><a href="#">CAthlon 2012 <strong><br>Tribute To Dennis Ritchie </strong></a></h1>

	<nav><ul>
		<li class="active"><a href="html5.jsp">home</a></li>
		<li><a href="rules.jsp">rules</a></li>

		<li><a href="#">ranking</a></li>
		<li><a href="#">contact</a></li>
	</ul></nav>

</header><!-- /#banner -->
        <h1>Result!</h1><br>
        <h1>Score : <%= httpsession.getAttribute("Score") %></h1>
        <h3> Total Attempted : <%=httpsession.getAttribute("attempt") %></h3>
        <h3> Total Correct : <%=httpsession.getAttribute("correct") %></h3>
        <h3> Total Incorrect : <%=httpsession.getAttribute("incorrect") %></h3>
        <h3> Total Correct of Type 1 : <%=httpsession.getAttribute("q1") %></h3>
        <h3> Total Correct of Type 2: <%=httpsession.getAttribute("q2") %></h3>
        <h3> Total Correct of Type 3: <%=httpsession.getAttribute("q3") %></h3>
        <form name="stop" action="html5.jsp" method="POST">
             <%  
           
            
             httpsession.invalidate();
            


            %>
            <input type="submit" value="Thank you" name="stop" />
        </form>
       
    <footer id="contentinfo" class="body">
	<address id="about" class="vcard body">
		<span class="primary">
			<strong><a href="#" class="fn url">VIT Active Linux Users</a></strong>

			<span class="role">VALU</span>
		</span><!-- /.primary -->

		<span class="bio">VALU is LUG in VIT. We take initiative in various FOSS actvities.</span>

	</address><!-- /#about -->
	<p>2012 VALU</p>
</footer><!-- /#contentinfo -->

</body>
</html>