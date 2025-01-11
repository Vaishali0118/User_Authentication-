<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Application</title>
<style type="text/css">
a{
	text-decoration:none;
	color: #51439a;
}
input{
	border: 1px solid #ccc;
	height:21px;
	border-radius:4px;
}h2{font-family: monospace;
	font-size:30px;
	color:#51439a;
}
</style>
</head>
<body style="place-items:center;font-family:arial">
<h2>Welcome To User System</h2>
<div style="border: 1px solid #51439a;margin:20px;height:500px">
<div style="background-color: #51439a; text-align:center;height:60px;width:550px;padding:15px">
<h1>CREATE ACCOUNT</h1>
</div>
<div style="margin-top: 20px;place-items:center">
<form action="RegUser" method="post">
  FirstName: <input type="text" name="firstname" placeholder="First Name"><br/><br>
  LastName:  <input type="text" name="lastname" placeholder="Last Name"><br/><br>
  Mobile No: <input type="number" name="mobileno" placeholder="Mobile No"><br/><br>
  Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="email" name="email" placeholder="Email Id"><br/><br>
  Password:&nbsp;  <input type="password" name="password" placeholder="Password"><br/><br>
  <div style="display:flex;">
  <input type="checkbox" name="T&C" style="height:15px;width:15px ">
  <a href="TermsCondition.jsp">I accept all terms and conditions</a><br><br><br>
  </div>
  <input type="submit" value="Signup" style="text-align:center;width:250px;height:35px;font-weight:bold;background-color:#51439a;font-size:16px"><br><br><br>  
  Already have an account - <a href="Loginpage.jsp" style="font-weight:bold">Login</a>
  
</form>
</div>
</div>
</body>
</html>