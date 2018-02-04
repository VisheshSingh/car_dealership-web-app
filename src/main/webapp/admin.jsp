<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Administrator</title>
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
</style>
</head>
<body>
	Enter your credentials here:<br/><br/>
	<form action="admin" method="POST">
		<input type="text" name="username" placeholder="Admin name" /><br/><br/>
		<input type="password" name="password" placeholder="Admin password" /><br/><br/>
		<input type="submit" value="Submit" />
	</form>
</body>
</html>