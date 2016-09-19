<%@page import="com.laptop.products.NotebookManager"%>
<%@page import="com.laptop.products.Notebook"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Shop Around</title>
<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
<link href="${pageContext.request.contextPath}/pages/css/style.css" rel="stylesheet" type="text/css"  media="all" />
<link href="${pageContext.request.contextPath}/pages/css/loginStyle.css" rel="stylesheet" type="text/css"  media="all" />
<!--[if lte IE 6]><link rel="stylesheet" href="css/ie6.css" type="text/css" media="all" /><![endif]-->
<script src="${pageContext.request.contextPath}/pages/js/jquery-1.4.2.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/pages/js/jquery.jcarousel.pack.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/pages/js/jquery-func.js" type="text/javascript"></script>
</head>
<body>
	<!-- Shell -->
	<div class="shell">
		<!-- Header -->
		<div id="header">
			<h1 id="logo">
				<a href="#">Notebook World</a>
			</h1>
			<!-- Cart -->
			<div id="cart">
				<a href="#" class="cart-link">Your Shopping Cart</a>
				<div class="cl">&nbsp;</div>
				<span>Articles: <strong>4</strong></span> &nbsp;&nbsp; <span>Cost:
					<strong>$250.99</strong>
				</span>
			</div>
			<!-- End Cart -->
			<!-- Navigation -->
			<div id="navigation">
				<ul>
					<li><a href="#">Home</a></li>
					<li><a href="#">Support</a></li>
					<li><a href="#" class="active">My Account</a></li>
					<li><a href="#">The Store</a></li>
					<li><a href="#">Contact</a></li>
				</ul>
			</div>
			<!-- End Navigation -->
		</div>
		<!-- End Header -->
		<!-- Main -->
		<div id="main">
			<div class="cl">&nbsp;</div>
			<!-- Content -->
			<div id="content">
				<!-- Content Slider -->
				<div id="login-box" class="box">
					
					<% Notebook note = NotebookManager.getInstance().viewNotebook(String.valueOf(request.getAttribute("model"))); %>
					<img src="${pageContext.request.contextPath}/pages/productImages/<%=note.getImage()%>"></img>
					<table id="box-table-a" border="solid">
					<tr>
						<th>Brand  : </th><td><%=note.getBrand() %>
						</td>
					</tr>
					<tr>
						<th>Model  : </th><td><%=note.getModel() %>
						</td>
					</tr>
					<tr>
						<th>Price  : </th><td><%=note.getPrice() %>
						</td>
					</tr>
					<tr>
						<th>Processor  : </th><td><%=note.getProcessor() %>
						</td>
					</tr>
					<tr>
						<th>Video  : </th><td><%=note.getVideo() %>
						</td>
					</tr>
					<tr>
						<th>Memory  : </th><td><%=note.getMemory() %>
						</td>
					</tr>
					<tr>
						<th>Storage Capacity  : </th><td><%=note.getStorageCapacity() %>
						</td>
					</tr>
					<tr>
						<th>Display Info  : </th><td><%=note.getDisplayInfo() %>
						</td>
					</tr>
					<tr>
						<th>Optical Drive  : </th><td><%=note.getOpticalDrive() %>
						</td>
					</tr>
					<tr>
						<th>Connections  : </th><td><%=note.getConnections() %>
						</td>
					</tr>
					<tr>
						<th>Interfaces  : </th><td><%=note.getInterfaces() %>
						</td>
					</tr>
					<tr>
						<th>Operation System  : </th><td><%=note.getOperation_system() %>
						</td>
					</tr>
					<tr>
						<th>Weight  : </th><td><%=note.getWeight() %>
						</td>
					</tr>
					<tr>
						<th>Size  : </th><td><%=note.getSize() %>
						</td>
					</tr>

					</table>
					
					<form class="orders" action="/LaptopBG/OrderServlet" method="post">
					<input  type="submit" name="login" id="login" value="BUY"></input>
					
					</form>
					
					<div id="login-holder">
					</div>

				</div>
				<!-- End Content Slider -->
				<!-- Products -->
				<div class="products">
					<div class="cl">&nbsp;</div>

				</div>
				<!-- End Products -->
			</div>
			<!-- End Content -->
			<!-- Sidebar -->
			<div id="sidebar">
				<!-- Search -->
				<div class="box search">
					<h2>
						Search by <span></span>
					</h2>
					<div class="box-content">
						<form action="#" method="post">
							<label>Keyword</label> <input type="text" class="field" /> <label>Category</label>
							<select class="field">
								<option value="">-- Select Category --</option>
							</select>
							<div class="inline-field">
								<label>Price</label> <select class="field small-field">
									<option value="">$10</option>
								</select> <label>to:</label> <select class="field small-field">
									<option value="">$50</option>
								</select>
							</div>
							<input type="submit" class="search-submit" value="Search" />
							<p>
								<a href="#" class="bul">Advanced search</a><br /> <a href="#"
									class="bul">Contact Customer Support</a>
							</p>
						</form>
					</div>
				</div>
				<!-- End Search -->
				<!-- Categories -->
				<div class="box categories">
					<h2>
						Categories <span></span>
					</h2>
					<div class="box-content">
						<ul>
							<li><a href="#">Category 1</a></li>
							<li><a href="#">Category 2</a></li>
							<li><a href="#">Category 3</a></li>
							<li><a href="#">Category 4</a></li>
							<li><a href="#">Category 5</a></li>
							<li><a href="#">Category 6</a></li>
							<li><a href="#">Category 7</a></li>
							<li><a href="#">Category 8</a></li>
							<li><a href="#">Category 9</a></li>
							<li><a href="#">Category 10</a></li>
							<li><a href="#">Category 11</a></li>
							<li><a href="#">Category 12</a></li>
							<li class="last"><a href="#">Category 13</a></li>
						</ul>
					</div>
				</div>
				<!-- End Categories -->
			</div>
			<!-- End Sidebar -->
			<div class="cl">&nbsp;</div>
		</div>
		<!-- End Main -->
		<!-- Side Full -->
		<div class="side-full">
			<!-- More Products -->
			<div class="more-products">
				<div class="more-products-holder">
					<ul>
						<li><a href="#"><img src="css/images/small1.jpg" alt="" /></a></li>
						<li><a href="#"><img src="css/images/small2.jpg" alt="" /></a></li>
						<li><a href="#"><img src="css/images/small3.jpg" alt="" /></a></li>
						<li><a href="#"><img src="css/images/small4.jpg" alt="" /></a></li>
						<li><a href="#"><img src="css/images/small5.jpg" alt="" /></a></li>
						<li><a href="#"><img src="css/images/small6.jpg" alt="" /></a></li>
						<li><a href="#"><img src="css/images/small7.jpg" alt="" /></a></li>
						<li><a href="#"><img src="css/images/small1.jpg" alt="" /></a></li>
						<li><a href="#"><img src="css/images/small2.jpg" alt="" /></a></li>
						<li><a href="#"><img src="css/images/small3.jpg" alt="" /></a></li>
						<li><a href="#"><img src="css/images/small4.jpg" alt="" /></a></li>
						<li><a href="#"><img src="css/images/small5.jpg" alt="" /></a></li>
						<li><a href="#"><img src="css/images/small6.jpg" alt="" /></a></li>
						<li><a href="#"><img src="css/images/small7.jpg" alt="" /></a></li>
						<li><a href="#"><img src="css/images/small1.jpg" alt="" /></a></li>
						<li><a href="#"><img src="css/images/small2.jpg" alt="" /></a></li>
						<li><a href="#"><img src="css/images/small3.jpg" alt="" /></a></li>
						<li><a href="#"><img src="css/images/small4.jpg" alt="" /></a></li>
						<li><a href="#"><img src="css/images/small5.jpg" alt="" /></a></li>
						<li><a href="#"><img src="css/images/small6.jpg" alt="" /></a></li>
						<li class="last"><a href="#"><img
								src="css/images/small7.jpg" alt="" /></a></li>
					</ul>
				</div>
				<div class="more-nav">
					<a href="#" class="prev">previous</a> <a href="#" class="next">next</a>
				</div>
			</div>
			<!-- End More Products -->
			<!-- Text Cols -->
			<div class="cols">
				<div class="cl">&nbsp;</div>
				<div class="col">
					<h3 class="ico ico1">Donec imperdiet</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
						Donec imperdiet, metus ac cursus auctor, arcu felis ornare dui.</p>
					<p class="more">
						<a href="#" class="bul">Lorem ipsum</a>
					</p>
				</div>
				<div class="col">
					<h3 class="ico ico2">Donec imperdiet</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
						Donec imperdiet, metus ac cursus auctor, arcu felis ornare dui.</p>
					<p class="more">
						<a href="#" class="bul">Lorem ipsum</a>
					</p>
				</div>
				<div class="col">
					<h3 class="ico ico3">Donec imperdiet</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
						Donec imperdiet, metus ac cursus auctor, arcu felis ornare dui.</p>
					<p class="more">
						<a href="#" class="bul">Lorem ipsum</a>
					</p>
				</div>
				<div class="col col-last">
					<h3 class="ico ico4">Donec imperdiet</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
						Donec imperdiet, metus ac cursus auctor, arcu felis ornare dui.</p>
					<p class="more">
						<a href="#" class="bul">Lorem ipsum</a>
					</p>
				</div>
				<div class="cl">&nbsp;</div>
			</div>
			<!-- End Text Cols -->
		</div>
		<!-- End Side Full -->
		<!-- Footer -->
		<div id="footer">
			<p class="left">
				<a href="#">Home</a> <span>|</span> <a href="#">Support</a> <span>|</span>
				<a href="#">My Account</a> <span>|</span> <a href="#">The Store</a>
				<span>|</span> <a href="#">Contact</a>
			</p>
			<p class="right">
				&copy; 2010 Shop Around. Design by <a
					href="http://chocotemplates.com">Chocotemplates.com</a>
			</p>
		</div>
		<!-- End Footer -->
	</div>
	<!-- End Shell -->
	<div align=center>
		This template downloaded form <a
			href='http://all-free-download.com/free-website-templates/'>free
			website templates</a>
	</div>
</body>
</html>
