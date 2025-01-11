<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Form</title>
<style type="text/css">
input{
	border: 1px solid #ccc;
	height:21px;
	border-radius:4px;
}

a{
	text-decoration:none;
	color: white;
}
.show{
		padding-top:50px;
}
.hide{
		display:none;
}
</style>
</head>
<body style="place-items:center;font-family:arial;color:white;position:sticky">
  <%=request.getAttribute("msg") %><br/>
<div style="background-color:#51439a;width:400px;place-items:center;height:320px;margin:100px;">
<div style="text-align:center;padding:4px;color:white">
<h3>Login Here</h3>
</div>
<div style="margin-top: 10px">
<form action="LoginUser" method="post">
  Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="email" name="email"><br/><br>
  Password: <input type="password" name="password"><br/><br>
  <a href="Forgetpass.jsp" style="color: rgba(255,255,255,0.7);">Forgot password?</a><br><br><br>
  <input type="submit" value="Login" onClick="" style="text-align:center;width:250px;height:35px;font-weight:bold;background-color:white;font-size:16px"><br>
  <br>
  <span style="color: rgba(255,255,255,0.7);">create new account -</span> <a href="index.jsp" style="font-weight: bold">Signup</a> 
</form>
</div>
</div>
</body>
</html>