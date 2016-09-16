<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div>
	<form class = "signForm" action="/LaptopBG/RegisterServlet" method="post">
	Register new user : <br>
	<input type="text" class="form-control" name="firstname" placeholder="FirstName" required="" autofocus="" /><br>
	<input type="text" class="form-control" name="lastname" placeholder="LastName" required="" /><br>
	<input type="email" class="form-control" name="email" placeholder="Email" required=""  /><br>
	 <input type="text" class="form-control" name="username" placeholder="Username" required=""/><br>
      <input type="password" class="form-control" name="password" placeholder="Password" required="" />   <br>
      
      <button class="btn btn-lg btn-primary btn-block" type="submit">Register</button>  
    </form>
	
</div>

</body>
</html>