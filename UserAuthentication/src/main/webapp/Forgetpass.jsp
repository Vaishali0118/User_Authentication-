<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Forget Password</title>
<style type="text/css">
input{
	border: 1px solid #ccc;
	height:21px;
	border-radius:4px;
}
</style>
</head>
<body style="place-items:center;font-family:arial;color:#fff">
<div style="background-color: #51439a; text-align:center;height:200px;width:550px;padding:15px;margin-top:155px">

<form action="Forget" method="post">
	<div style="padding-top: 20px">
	Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="email" name="email"><br><br>
	New Password: <input type="password" name="password"><br><br><br>
	<input type="submit" value="Next" style="text-align:center;width:250px;height:35px;font-weight:bold;background-color:rgba(255,255,255,0.7);font-size:16px">
	</div>
</form>
</div>
</body>
</html>