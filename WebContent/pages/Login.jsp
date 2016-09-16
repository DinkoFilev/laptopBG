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
	<form class = "signForm" action="/LaptopBG/LoginServlet" method="post">
	Please Login : <br>
	 <input type="text" class="form-control" name="username" placeholder="Username" required="" autofocus=""/><br>
      <input type="password" class="form-control" name="password" placeholder="Password" required="" />   <br>
      <label class="checkbox">
        <input type="checkbox" value="remember-me" id="rememberMe" name="rememberMe"> Remember me
      </label><br>
      <button class="btn btn-lg btn-primary btn-block" type="submit">Login</button>
      <button class="btn btn-lg btn-primary btn-block" type="submit" onclick="window.location.href='/LaptopBG/pages/Register.jsp'">Register</button>   
    </form>
	
</div>

</body>
</html>