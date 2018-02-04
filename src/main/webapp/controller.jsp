<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin | Controller</title>
<style>
	body{
			background-color:#ddd;
			font-family:Georgia, serif;
			font-size: 1.1em;
		}
	input {
			padding:5px;
		}
	input[type=text]:focus, input[type=password]:focus {
		    border: 3px solid #555;
		}
		
	input[type=submit] {
		    background-color: #4CAF50;
		    border: none;
		    color: white;
		    font-family:Georgia, serif;
		    padding: 10px 20px;
		    text-decoration: none;
		    margin: 4px 2px;
		    cursor: pointer;
		}
		
	input[type=submit]:hover{
			background-color: green;
		}
		
		a {
			text-decoration:none;
			padding: 10px 20px;
			font-size:0.8em;
			margin: 4px 2px;
			color: white;
			border: none;
			background-color: #0080ff;
		}
		
		a:hover{
			background-color: #006bb3;
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
	<br>
	<a href="Catalog.jsp">View Inventory</a>
	<h3>Add Car</h3>
	<form action="addcar" method="POST">
		<input type="text" name="model" placeholder="Model Number" />&nbsp;&nbsp;
		<input type="text" name="makeid" placeholder="Enter # [201 - 206]" /><br><br>
		<input type="text" name="year" placeholder="Year of production" />&nbsp;&nbsp;
		<input type="text" name="downpay" placeholder="Down payment" /><br><br>
		<input type="text" name="monthpay" placeholder="Monthly payment" />&nbsp;&nbsp;
		<input type="text" name="months" placeholder="Duration in months" /><br><br>
		<input type="submit" value="Add to inventory"/>
	</form>
	<h3>Delete Car</h3>
</body>
</html>