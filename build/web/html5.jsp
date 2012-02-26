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

<body id="index" class="home"  onload="setEventListener(disableKey);">

<header id="banner" class="body">
	<h1><a href="#">CAthlon 2012 <strong><br>Tribute To Dennis Ritchie </strong></a></h1>

	<nav><ul>
		<li class="active"><a href="html5.jsp">home</a></li>
		<li><a href="rules.jsp">rules</a></li>

		<li><a href="#">ranking</a></li>
		<li><a href="#">contact</a></li>
	</ul></nav>

</header><!-- /#banner -->



<section id="content" class="body">
	<ol id="posts-list" class="hfeed">
		<li><article class="hentry">
			<header>
				<h2 class="entry-title">Welcome To CAthlon 2012</h2>

			</header>

			
			
		</article></li>

		
                <li><article class="hentry">
                    <header>
                        <h2 class="entry-title"<title> Fill Your Details </title> </h2>
                        </header>
    <form id=filldetails action="userlogin" method="POST" >
    <fieldset>
    <legend>Your details</legend>
    <ol>
    <li>
    <label for=receipt>Receipt</label>
    <input id=receipt name=receipt type=text placeholder="Receipt Number" required autofocus>
    </li>
    <li>
    <label for=pname1>Participant 1 Name</label>
    <input id=pname1 name=pname1 type=text placeholder="First and last name" required autofocus>
    </li>
    <li>
    <label for=pname2>Participant 2 Name</label>
    <input id=pname2 name=pname2 type=text placeholder="First and last name"  autofocus>
    </li>
    
    </ol>
    </fieldset>
    <fieldset>
    <legend>Contact Information</legend>
    <ol>
    <li>
    <label for=email>Email&nbsp;&nbsp;&nbsp;&nbsp; </label>
    <input id=email name=email type=email placeholder="example@domain.com" required>
    </li>
    <li>

    <label for=college>College&nbsp;</label>
    <input id=college name=college type=text placeholder="College name" required>
    </li>
    <li>
    
    <label for=contact>Contact</label>
    <input id=contact name=contact type=text placeholder="9xxxxxxxxx" required>
    </li>
    
    </ol>
    </fieldset>
    
  <fieldset>
    <legend>Level</legend>
    <ol>
    <li> Level 1<input type="radio" id="l1" name="level" value="1" required/>Level 2<input type="radio" id="l2" name="level" value="2" required/>
    </li>

    </ol>
  </fieldset>
  
    <fieldset>
    <button type=submit>Start</button>
    </fieldset>
    </form>


                    </article></li>

		

	</ol><!-- /#posts-list -->
</section><!-- /#content -->

<section id="extras" class="body">
	<div class="blogroll">
		<h2>Other Events @ Melange</h2>

		<ul>
			
			<li><a href="#" rel="external">ByteCode</a></li>

			<li><a href="#" rel="external">Network Treasure Hunt</a></li>
			<li><a href="#" rel="external">Android Workshop</a></li>
			<li><a href="#" rel="external">WebXplod</a></li>

			
		</ul>
	</div><!-- /.blogroll -->

	
</section><!-- /#extras -->

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