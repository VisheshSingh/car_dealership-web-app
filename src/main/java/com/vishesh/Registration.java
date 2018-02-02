package com.vishesh;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

public class Registration extends HttpServlet {
	String url = "jdbc:mysql://localhost:3306/car_dealership";
	String uname = "root";
	String pass = "admin";
	// ADDING A LOGGER FOR CAPTURING LOGGIN INFORMATION
	final static Logger logger = Logger.getLogger(FirstServlet.class);

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		logger.debug("Executing the registration process...");
		String username = request.getParameter("username");
		String pwd = request.getParameter("pwd");
		String sql = "INSERT INTO login_details VALUES(?, ?) ";
		try {
			Class.forName("com.mysql.jdbc.Driver");

			// 1. Get a connection to database
			Connection myConn = DriverManager.getConnection(url, uname, pass);

			// 2. Create a statement
			PreparedStatement myStmt = myConn.prepareStatement(sql);
			myStmt.setString(1, username);
			myStmt.setString(2, pwd);

			// 3. Execute SQL query
			myStmt.executeUpdate();

			logger.info("record updated!");
			response.sendRedirect("successreg.jsp");

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
