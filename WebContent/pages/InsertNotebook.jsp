<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="css/loginStyle.css" rel="stylesheet" type="text/css" />
<title>Insert title here</title>
</head>
<body>

<div>
	<form name="login_frm" id="login_frm" action="/LaptopBG/InsertNotebook" method="post">
    <div id="login_box">
      <div id="login_header">
           Insert Notebook
      </div>
      <div id="form_val">
  
			
        <div class="label">Display Name:</div>
        <div class="control"><input type="text" name="name" id="name"/><span style="font-size: 10px;"></span></div>
        <div class="label">Model :</div>
        <div class="control"><input type="text" name="model" id="model"/><span style="font-size: 10px;"></span></div>
        <div class="label">Price :</div>
        <div class="control"><input type="text" name="price" id="price"/><span style="font-size: 10px;"></span></div>
        <div class="label">Processor :</div>
        <div class="control"><input type="text" name="processor" id="processor"/><span style="font-size: 10px;"></span></div>
        <div class="label">Video :</div>
        <div class="control"><input type="text" name="video" id="video"/><span style="font-size: 10px;"></span></div>
        <div class="label">Memory :</div>
        <div class="control"><input type="text" name="memory" id="memory"/><span style="font-size: 10px;"></span></div>
        <div class="label">Storage Capacity :</div>
        <div class="control"><input type="text" name="storageCapacity" id="storageCapacity"/><span style="font-size: 10px;"></span></div>
        <div class="label">Display Info :</div>
        <div class="control"><input type="text" name="displayInfo" id="displayInfo"/><span style="font-size: 10px;"></span></div>
        <div class="label">Optical Drive :</div>
        <div class="control"><input type="text" name="opticalDrive" id="opticalDrive"/><span style="font-size: 10px;"></span></div>
        <div class="label">Connections :</div>
        <div class="control"><input type="text" name="connections" id="connections"/><span style="font-size: 10px;"></span></div>
        <div class="label">Interfaces :</div>
        <div class="control"><input type="text" name="interfaces" id="interfaces"/><span style="font-size: 10px;"></span></div>
        <div class="label">Operation system :</div>
        <div class="control"><input type="text" name="operationSystem" id="operationSystem"/><span style="font-size: 10px;"></span></div>
        <div class="label">Weight :</div>
        <div class="control"><input type="text" name="weight" id="weight"/><span style="font-size: 10px;"></span></div>
        <div class="label">Size :</div>
        <div class="control"><input type="text" name="size" id="size"/><span style="font-size: 10px;"></span></div>
        <div class="label">Quantity :</div>
        <div class="control"><input type="text" name="quantity" id="quantity"/><span style="font-size: 10px;"></span></div>
        <div class="label">Browse image:</div>
        <div class="control"><input type="file" name="image" id="image"/><span style="font-size: 10px;"></span></div>
        <div style="clear:both;height:0px;"></div>
       
      
      	<div id="msgbox"></div>
      </div>
      <div id="login_footer">
        <label>
        <input type="submit" name="login" id="login" value="INSERT" class="send_button" />
        
        </label>
      </div>
    </div>
</form>



</div>

</body>
</html>