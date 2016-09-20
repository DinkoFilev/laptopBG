<%@page import="com.laptop.products.Notebook"%>
<%@page import="com.laptop.products.NotebookManager"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"">


<link href="${pageContext.request.contextPath}/pages/css/style.css" rel="stylesheet" type="text/css"  media="all" />

<link href="${pageContext.request.contextPath}/pages/css/loginStyle.css" rel="stylesheet" type="text/css"  media="all" />
<!--[if lte IE 6]><link rel="stylesheet" href="css/ie6.css" type="text/css" media="all" /><![endif]-->

<script src="${pageContext.request.contextPath}/pages/js/jquery-1.4.2.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/pages/js/jquery.jcarousel.pack.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/pages/js/jquery-func.js" type="text/javascript"></script>
 <!-- Content Slider -->
     
<title></title>
</head>
<body>
 <div id="slider" class="box">
        <div id="slider-holder">
          <ul>
            <%for(Notebook n : NotebookManager.getInstance().getAllUsers().values()){  %>
            <li>				<div class="product-info2">
								<h3>Brand : <%=n.getBrand() %></h3>
								<div class="product-desc2">
									<h4>Model : <%=n.getModel() %></h4>
									<h4>Processor : <%=n.getProcessor()%></h4>
									<h4>Storage Capacity : <%=n.getStorageCapacity()%></h4>
									<h4>Memory : <%=n.getMemory()%></h4>
									<h4>Operation System : <%=n.getOperation_system()%></h4>
									<br>
									<strong class="price">Price : <%=n.getPrice() %>$</strong>
								</div>
								</div>
            <a href="../NoteBookParam?model=<%=n.getModel()%>"><img src="${pageContext.request.contextPath}/pages/productImages/<%=n.getImage() %>"  alt="" height="231px" width="300px" align="right"/> </a></li>
           
            <%} %>
          </ul>
        </div>
        <div id="slider-nav"> <a href="#" class="active">1</a> <a href="#">2</a> <a href="#">3</a> <a href="#">4</a> </div>
      </div>
      <!-- End Content Slider -->
      <!-- Products -->
      <div class="products">
        <div class="cl">&nbsp;</div>
        <ul>
         <%for(Notebook n : NotebookManager.getInstance().getAllUsers().values()){  %>
						<li class="last"><a href="../NoteBookParam?model=<%=n.getModel()%>"><img src="${pageContext.request.contextPath}/pages/productImages/<%=n.getImage()%>" alt=""height="200" width="250" /></a>
							<div class="product-info">
								<h3>Brand : <%=n.getBrand() %></h3>
								<div class="product-desc">
									<h4>Model : <%=n.getModel() %></h4>
									<h4>Processor : <%=n.getProcessor()%></h4>
									<h4>Storage Capacity : <%=n.getStorageCapacity()%></h4>
									<h4>Memory : <%=n.getMemory()%></h4>
									<h4>Operation System : <%=n.getOperation_system()%></h4>
									<br>
									<strong class="price">Price : <%=n.getPrice() %>$</strong>
								</div>
								
							</div></li>
								<%} %>
        </ul>
        <div class="cl">&nbsp;</div>
      </div>
      <!-- End Products -->

</body>
</html>