<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Successful</title>
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
	Go to the <a href="Catalog.jsp">Catalog</a>
</body>
</html>