
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Catalog</title>
<style>
	.tableHead{
		color:#fff;
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
	<%
		String id = request.getParameter("userId");
		String driverName = "com.mysql.jdbc.Driver";
		String connectionUrl = "jdbc:mysql://localhost:3306/car_dealership";
		String userId = "root";
		String password = "admin";
		
		try {
			Class.forName(driverName);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		
			Connection connection = null;
			Statement statement = null;
			ResultSet resultSet = null;
		%>
	<h3>Here's a list of all the cars we have in the inventory...</h3>
	<br/>
	<table align="center" cellpadding="2" cellspacing="5" border="2">
	
	<tr bgcolor="#606060" class="tableHead">
	<td><b>ModelNumber</b></td>
	<td><b>YearofProduction</b></td>
	<td><b>DownPayment</b></td>
	<td><b>MonthlyPayment</b></td>
	<td><b>Duration_in_months</b></td>
	</tr>
	<%
		try{ 
		connection = DriverManager.getConnection(connectionUrl, userId, password);
		statement=connection.createStatement();
		String sql ="SELECT * FROM model";
		
		resultSet = statement.executeQuery(sql);
		while(resultSet.next()){
	%>
		<tr bgcolor="#C0C0C0">
		
			<td><%=resultSet.getString("ModelNumber") %></td>
			<td><%=resultSet.getString("YearofProduction") %></td>
			<td><%=resultSet.getString("DownPayment") %></td>
			<td><%=resultSet.getString("MonthlyPayment") %></td>
			<td><%=resultSet.getString("Duration_in_months") %></td>
		
		</tr>
	<% 
		}
	
	} catch (Exception e) {
		e.printStackTrace();
	}
	%>
	</table>
	<br/><br/>
	
	<form action="Logout" method="POST">
		<input type="submit" value="Logout"/>
	</form>
</body>
</html>