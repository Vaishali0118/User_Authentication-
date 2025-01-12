<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>WelcomePage</title>
</head>
<body>

 <h1>WELCOME <%=request.getAttribute("firstname") %></h1>
 
 
 <a href="Loginpage.jsp">Logout</a>

</body>
</html>