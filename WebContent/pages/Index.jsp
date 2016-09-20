<%@page session="true"%>
<%
if(session.getAttribute("user")==null)
{
   response.sendRedirect("Login.jsp");
}
%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.laptop.products.Notebook"%>
<%@page import="com.laptop.products.NotebookManager"%>
<%String attr = String.valueOf(request.getParameter("models")); %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Notebook World</title>
<meta http-equiv="Content-type" content="text/html; charset=utf-8" />

<link href="${pageContext.request.contextPath}/pages/css/style.css" rel="stylesheet" type="text/css"  media="all" />

<link href="${pageContext.request.contextPath}/pages/css/loginStyle.css" rel="stylesheet" type="text/css"  media="all" />
<!--[if lte IE 6]><link rel="stylesheet" href="css/ie6.css" type="text/css" media="all" /><![endif]-->
<script src="${pageContext.request.contextPath}/pages/js/jquery-1.4.2.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/pages/js/jquery.jcarousel.pack.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/pages/js/jquery-func.js" type="text/javascript"></script>


 <script>
    function changeContent(element,page) {
    	changeclass(element)
        $('#content').load(page);
    }</script>
    <script>
    function changeclass(element) {
    	var i;
    	for (i = 1; i <= 5; ++i) {
    		document.getElementById(i).setAttribute("class","unactive");
    	}
		
        $(element).toggleClass('active');
		
    }</script>
    
	<script>
	$(document).ready(function(){

		changeContent('1','${pageContext.request.contextPath}/pages/IndexContent.jsp')

	});</script>
	
	
   
    
</head>
<body>
<!-- Shell -->
<div class="shell">
  <!-- Header -->
  <div id="header">
    <h1 id="logo"><a href="#">Notebook World</a></h1>
    <!-- Cart -->
    <div id="cart"> <a href="#?Cart" class="cart-link" onclick="changeContent(this,'${pageContext.request.contextPath}/pages/Cart.jsp');">Your Shopping Cart</a>
      <div class="cl">&nbsp;</div>
      <span>Articles: <strong>4</strong></span> &nbsp;&nbsp; <span>Cost: <strong>$250.99</strong></span> </div>
    <!-- End Cart -->
    <!-- Navigation -->
    <div id="navigation">
      <ul>
        <li><a href="#?Index" class="active" id="1" onclick="changeContent(this,'${pageContext.request.contextPath}/pages/IndexContent.jsp');">Home</a></li>
        <li><a href="#" id="2" onclick="changeContent(this,'${pageContext.request.contextPath}/pages/Support.jsp');">Support</a></li>
        <li><a href="#?Accounts" id="3" onclick="changeContent(this,'${pageContext.request.contextPath}/pages/Account.jsp');">My Account</a></li>
        <li><a href="#" id="4" onclick="changeContent(this,'${pageContext.request.contextPath}/pages/Login.jsp');">The Store</a></li>
        <li><a href="#" id="5" onclick="changeContent(this,'${pageContext.request.contextPath}/pages/Contact.jsp');">Contact</a></li>
      </ul>
    </div>
    <!-- End Navigation -->
  </div>
  <!-- End Header -->
  <!-- Main -->
  <div id="main">
    <div class="cl">&nbsp;</div>
    <!-- Content -->
    <div id="content" >
    
    </div>
    <!-- End Content -->
    <!-- Sidebar -->
    <div id="sidebar">
      <!-- Search -->
      <div class="box search">
        <h2>Search by <span></span></h2>
        <div class="box-content">
          <form action="#" method="post">
            <label>Keyword</label>
            <input type="text" class="field" />
            <label>Brand by Price :</label>
            <select class="field">
              <option id="aleinware" value="">-- Alienware --</option>
              <option id="asus" value="">-- Asus --</option>
              <option id="acer" value="">-- Acer --</option>
              <option id="hp" value="">-- HP --</option>
              <option id="lenovo" value="">-- Lenovo --</option>
              <option id="dell" value="">-- Dell --</option>
              <option id="toshiba" value="">-- Toshiba --</option>
              <option id="apple" value="">-- Apple --</option>
              <option id="fujitsu" value="">-- Fujitsu --</option>
              <option id="allbrands" value="">-- All Brands --</option>
            </select>
            <div class="inline-field">
              <label>Price</label>
              <select class="field small-field">
                <option value="">$10</option>
              </select>
              <label>to:</label>
              <select class="field small-field">
                <option value="">$50</option>
              </select>
            </div>
            <input type="submit" class="search-submit" value="Search" />
            <p> <a href="#" class="bul">Advanced search</a><br />
              <a href="#" class="bul">Contact Customer Support</a> </p>
          </form>
        </div>
      </div>
      <!-- End Search -->
      <!-- Categories -->
      <div class="box categories">
        <h2>Brands : <span></span></h2>
        <div class="box-content">
          <ul>
            <li><a href="#">Alienware</a></li>
            <li><a href="#">Asus</a></li>
            <li><a href="#">Acer</a></li>
            <li><a href="#">HP</a></li>
            <li><a href="#">Lenovo</a></li>
            <li><a href="#">Dell</a></li>
            <li><a href="#">Toshiba</a></li>
            <li><a href="#">Apple</a></li>
            <li class="last"><a href="#">Fujitsu</a></li>
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
          <%for(Notebook n : NotebookManager.getInstance().getAllUsers().values()){  %>
						<li class="last"><a href="../NoteBookParam?model=<%=n.getModel()%>"><img src="${pageContext.request.contextPath}/pages/productImages/<%=n.getImage()%>" alt=""height="100" width="100" /></a>
							</li>
								<%} %>
			</ul>
      </div>
      <div class="more-nav"> <a href="#" class="prev">previous</a> <a href="#" class="next">next</a> </div>
    </div>
    <!-- End More Products -->
    <!-- Text Cols -->
    
  </div>
  <!-- End Side Full -->
  <!-- Footer -->
  <div id="footer">
    <p class="left">  <a href="#?Index" class="active" id="1" onclick="changeContent(this,'${pageContext.request.contextPath}/pages/IndexContent.jsp');">Home</a> <span>|</span> 
    <a href="#">Support</a> <span>|</span> <a href="#?Accounts" id="3" onclick="changeContent(this,'${pageContext.request.contextPath}/pages/Account.jsp');">My Account</a> <span>|</span> <a href="#">The Store</a> <span>|</span> <a href="#">Contact</a> </p>
    <p class="right"> &copy; 2016 Shop Around. Design by D &amp I</p>
  </div>
  <!-- End Footer -->
</div>
<!-- End Shell -->

</body>
</html>
