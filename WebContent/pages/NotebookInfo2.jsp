<%@page import="com.laptop.products.NotebookManager"%>
<%@page import="com.laptop.products.Notebook"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
<link href="${pageContext.request.contextPath}/pages/css/style.css" rel="stylesheet" type="text/css"  media="all" />
<link href="${pageContext.request.contextPath}/pages/css/loginStyle.css" rel="stylesheet" type="text/css"  media="all" />
<!--[if lte IE 6]><link rel="stylesheet" href="css/ie6.css" type="text/css" media="all" /><![endif]-->
<script src="${pageContext.request.contextPath}/pages/js/jquery-1.4.2.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/pages/js/jquery.jcarousel.pack.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/pages/js/jquery-func.js" type="text/javascript"></script>
<title>Insert title here</title>
</head>
<body>
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

</body>
</html>