<%@page import="com.laptop.users.AccountManager"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
 <script type="text/javascript">
	$(document).ready(function(){
		$("#login_frm").submit(function(){

			 //remove previous class and add new "myinfo" class
	        $("#msgbox").removeClass().addClass('myinfo').text('Validating Your Registration ').fadeIn(1000);

			
			this.timer = setTimeout(function () {
				$.ajax({
		          	url: '/LaptopBG/RegisterServlet',
	          	data: 'firstname='+ $('#firstname').val() +'&lastname='+ $('#lastname').val() +'&email='+ $('#email').val() +'&username='+ $('#username').val() +'&password='+ $('#password').val() +'&address=' + $('#address').val()+'&phoneNumber=' + $('#phoneNumber').val(),
		          	type: 'post',
		   			success: function(msg){
						if(msg == 'firstName') // Message Sent, check and redirect
						{				// and direct to the success page
							$("#msgbox").fadeTo(200,0.1,function() //start fading the messagebox
				                	{
					                  //add message and change the class of the box and start fading
					                  $(this).html('First Name should contains letters 3 to 45 symbols ').removeClass().addClass('myerror').fadeTo(900,1);
					                });
							
	
						}
						else if(msg == 'lastName') // Message Sent, check and redirect
						{				// and direct to the success page
							$("#msgbox").fadeTo(200,0.1,function() //start fading the messagebox
				                	{
					                  //add message and change the class of the box and start fading
					                  $(this).html('Last Name should contains letters from 3 to 45 symbols ').removeClass().addClass('myerror').fadeTo(900,1);
					                });
							
	
						}
						else if(msg == 'email') // Message Sent, check and redirect
						{				// and direct to the success page
							$("#msgbox").fadeTo(200,0.1,function() //start fading the messagebox
				                	{
					                  //add message and change the class of the box and start fading
					                  $(this).html('Invalid email').removeClass().addClass('myerror').fadeTo(900,1);
					                });
							
	
						}
						else if(msg == 'username') // Message Sent, check and redirect
						{				// and direct to the success page
							$("#msgbox").fadeTo(200,0.1,function() //start fading the messagebox
				                	{
					                  //add message and change the class of the box and start fading
					                  $(this).html('Username can contains digits, letters, dash, dot, underscore from 3 to 45 symbols').removeClass().addClass('myerror').fadeTo(900,1);
					                });
							
	
						}
						else if(msg == 'password') // Message Sent, check and redirect
						{				// and direct to the success page
							$("#msgbox").fadeTo(200,0.1,function() //start fading the messagebox
				                	{
					                  //add message and change the class of the box and start fading
					                  $(this).html('Password can contains digits, letters, dash, dot, underscore from 3 to 30 symbols').removeClass().addClass('myerror').fadeTo(900,1);
					                });
							
	
						}
						else if(msg == 'username2') // Message Sent, check and redirect
						{				// and direct to the success page
							$("#msgbox").fadeTo(200,0.1,function() //start fading the messagebox
				                	{
					                  //add message and change the class of the box and start fading
					                  $(this).html('Username is already used').removeClass().addClass('myerror').fadeTo(900,1);
					                });
							
	
						}
						else if(msg == 'email2') // Message Sent, check and redirect
						{				// and direct to the success page
							$("#msgbox").fadeTo(200,0.1,function() //start fading the messagebox
				                	{
					                  //add message and change the class of the box and start fading
					                  $(this).html('E-mail is already used').removeClass().addClass('myerror').fadeTo(900,1);
					                });
							
	
						}
						else
						{
							$("#msgbox").html('Register Verified, You can now login.....').addClass('myinfo').fadeTo(900,1,
					                  function()
					                  {
					                     //redirect to secure page
					                     document.location='AccountLogin.jsp';
					                  });
						}
					}
				
				});
			}, 200);
			return false;
 		});		

	});



 </script>  



<meta http-equiv="Content-Type" content="text/html; charset=utf-8"">
<link href="css/loginStyle.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/pages/css/style.css" rel="stylesheet" type="text/css"  media="all" />
<link href="${pageContext.request.contextPath}/pages/css/loginStyle.css" rel="stylesheet" type="text/css"  media="all" />
<!--[if lte IE 6]><link rel="stylesheet" href="css/ie6.css" type="text/css" media="all" /><![endif]-->
<script src="${pageContext.request.contextPath}/pages/js/jquery-1.4.2.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/pages/js/jquery.jcarousel.pack.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/pages/js/jquery-func.js" type="text/javascript"></script>
<title>Insert title here</title>
</head>
<body>
<form name="login_frm" id="login_frm" action="" method="post">
    <div id="login_box">
      <div id="login_header">
            Register
      </div>
      <div id="form_val">
        <div class="label">First Name :</div>
        <div class="control"><input type="text" name="firstname" id="firstname"
					placeholder="First Name" required="" autofocus=""><span style="font-size: 10px;"></span></div>
					 <div class="label">Last Name :</div>
					 <div class="control"><input type="text" name="lastname" id="lastname"
					placeholder="Last Name" required="" ><span style="font-size: 10px;"></span></div>
         
          <div class="label">Email :</div>
          <div class="control"><input type="email" name="email" id="email"
					placeholder="E-mail address" required="" style=" -webkit-border-radius: 4px;
				    border: 1px solid #1A5B71;
				    font-size: 14px;
				    margin: 0 0 0px 5px;
				    padding: 5px;
				    width: 200px;
				    font-family: Tahoma, Helvetica, sans-serif;
				    color: #1A5B71;" ><span style="font-size: 10px;"></span></div>
	 	 <div class="label">Username : </div>         
         <div class="control"><input type="text" name="username"  id="username"
					placeholder="Username" required="" ><span style="font-size: 10px;"></span></div>
         <div class="label">Password:</div>
         <div class="control"><input type="password" name="password" id="password"/><span style="font-size: 10px;"></span></div>
         <div class="label">Confirm Password:</div>
         <div class="control"><input type="password" name="confirm_password" id="confirm_password"/><span style="font-size: 10px;"></span></div>
         <div class="label">Address :</div>   
         <div class="control"><input type="text" name="address"  id="address"
					placeholder="Address" required="" ><span style="font-size: 10px;"></span></div>
					<div class="label">Phone number :</div>   
         <div class="control"><input type="text" name="phoneNumber"  id="phoneNumber"
					placeholder="Phone Number" required="" ><span style="font-size: 10px;"></span></div>
					
         
         <b>Would you
					like to receive e-mail notifications on our special sales?</b> <br>
		<div class="control">
				<input type="radio" name="notify" value="Yes" checked>Yes 
				<input
					type="radio" name="notify"  value="No" > No
				</div>
				<div style="clear:both;height:0px;"></div>
        
      
      	 <div id="msgbox"></div>
      </div>
      <div id="login_footer">
        <label>
         <input type="submit" name="login" id="login" value="Register" class="send_button" />
       
        </label>
      </div>
    </div>
</form>
<script type="text/javascript">
			var password = document.getElementById("password"), confirm_password = document
					.getElementById("confirm_password");

			function validatePassword() {
				if (password.value != confirm_password.value) {
					confirm_password.setCustomValidity("Passwords Don't Match");
				} else {
					confirm_password.setCustomValidity('');
				}
			}

			password.onchange = validatePassword;
			confirm_password.onkeyup = validatePassword;
		</script>
	

</body>
</html>