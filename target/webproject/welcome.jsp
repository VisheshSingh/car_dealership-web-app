<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Successful</title>
<style>
	body{
			background-color:#ddd;
			font-family:Georgia, serif;
		}
		
	form {
			font-size: 1.1em;
		}
		
	a{
		background-color: #4CAF50;
		border: none;
		color: white;
		padding: 10px 20px;
		text-decoration: none;
		margin: 4px 2px;
		cursor: pointer;
	}
	
	a:hover{
		background-color:green;
	}
</style>
</head>
<body>
	<%
		// TELL THE BROWSER TO NOT HOLD ANY CACHE AND REVALIDATE AFTER EVRY LOGOUT
		response.setHeader("Cache-Control", "no-cache, nostore, must-revalidate");
		if(session.getAttribute("username")==null){
			response.sendRedirect("index.jsp");
		}
	%>
	 
	<h3>You've successfully logged in...</h3>
	<a href="Catalog.jsp">Visit Catalog</a>
</body>
</html>