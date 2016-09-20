<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"></meta>
<link href="${pageContext.request.contextPath}/pages/css/style.css" rel="stylesheet" type="text/css"  media="all" />
<link href="${pageContext.request.contextPath}/pages/css/loginStyle.css" rel="stylesheet" type="text/css"  media="all" />
<!--[if lte IE 6]><link rel="stylesheet" href="css/ie6.css" type="text/css" media="all" /><![endif]-->
<script src="${pageContext.request.contextPath}/pages/js/jquery-1.4.2.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/pages/js/jquery.jcarousel.pack.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/pages/js/jquery-func.js" type="text/javascript"></script>
<title>Insert title here</title>
</head>
<body>
 
         <form action="/LaptopBG/MailServlet" enctype="multipart/form-data" method="post">
			<p>Name: <input type="text" name="name"  id="name" size="40"></p>
			<p>E-mail address: <input type="text" name="email"  id="email" size="40"></p>
			<p>Subject: <input type="text" name="subject"  id="subject" size="40"></p>
			<p>Message:</p>
			<p><textarea name="message" cols="55" rows="5"
			id="message"></textarea></p>
			<p><input type="submit" name="submit" value="Send"></p>
		</form>
       
      <!-- End Products -->
 </body>

		
</html>