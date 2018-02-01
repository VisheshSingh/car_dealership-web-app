<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Catalog</title>
</head>
<body>
	<%
	// TELL THE BROWSER TO NOT HOLD ANY CACHE AND REVALIDATE AFTER EVRY LOGOUT
		response.setHeader("Cache-Control", "no-cache, nostore, must-revalidate");
		if(session.getAttribute("username")==null){
			response.sendRedirect("index.jsp");
		}
	%>
	
	<h3>Here's a list of all the cars we have in the inventory...</h3>
	<br/>
	<form action="Logout" method="POST">
		<input type="submit" value="Logout"/>
	</form>
</body>
</html>