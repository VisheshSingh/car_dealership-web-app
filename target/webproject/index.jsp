<html>
<head>
	<title>Welcome</title>
	<style>
		body{
			background-color:#ddd;
			font-family:Georgia, serif;
		}
		
		form {
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
	<h2>Welcome!</h2>
	<h3>Please enter your credentials..</h3>
	<form method="POST" action="FirstServlet">
		<input type="text" name="username" placeholder="Enter username"/><br/><br/>
		<input type="password" name="pwd" placeholder="Enter password"/><br/><br/>
		<input type="submit" value="Login" />
	</form>

</body>
</html>
