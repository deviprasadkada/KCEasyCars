<!doctype html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Buyer Home</title>
	<meta name="description" content="Scarica gratis il nostro Template HTML/CSS GARAGE. Se avete bisogno di un design per il vostro sito web GARAGE può fare per voi. Web Domus Italia">
	<meta name="author" content="Web Domus Italia">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" type="text/css" href="source/bootstrap-3.3.6-dist/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="source/font-awesome-4.5.0/css/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="style/slider.css">
	<link rel="stylesheet" type="text/css" href="style/mystyle.css">
	<link rel="stylesheet" type="text/css" href="font_style.css">
	<link rel="stylesheet" type="text/css" href="style/contactstyle.css">





</head>
<body>
<!-- Header -->
<div class="allcontain">
	
	<!-- Navbar Up -->
	<nav class="topnavbar navbar-default topnav">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed toggle-costume" data-toggle="collapse" data-target="#upmenu" aria-expanded="false">
					<span class="sr-only"> Toggle navigaion</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand logo" href="#"><img src="image/logo1.png" alt="logo"></a>
			</div>	 
		</div>
		<div class="collapse navbar-collapse" id="upmenu">
			<ul class="nav navbar-nav" id="navbarontop">
				<li class="active"><a href="Buyer_Home.jsp">HOME</a> </li>
				<li>
					<a href="Buyer_ViewCars.jsp">ViewCars</a>
				</li>
				<li>
					<a href="Chating.jsp">Chat</a>
				</li>
					<li>
					<a href="Buyer_Login.jsp">Logout</a>
				</li>
			<!--	<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Seller<span class="caret"></span></a>
						<ul class="dropdown-menu dropdowncostume">
								<li><a href=""></a></li>
						<li><a href=""></a></li>
						</ul>
				</li>-->
				
			<!--	<button><span class="postnewcar">POST NEW CAR</span></button>-->
			</ul>
		</div>
	</nav>

	<div class="header">
			<ul class="socialicon">
				
			</ul>
			<ul class="givusacall">
				
			</ul>
			<ul class="logreg">
		
			</ul>
	</div>
</div>
<!--_______________________________________ Carousel__________________________________ -->

<%
String bemail=(String)session.getAttribute("bemail");
if(bemail==null)
{response.sendRedirect("Buyer_Login.jsp?session=timeout");}
else{}
%>

	<!-- ______________________________________________________Bottom Menu ______________________________-->
	