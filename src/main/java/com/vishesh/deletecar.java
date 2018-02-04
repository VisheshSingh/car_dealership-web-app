package com.vishesh;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

public class deletecar extends HttpServlet {
	// ADDING A LOGGER FOR CAPTURING LOGGIN INFORMATION
	final static Logger logger = Logger.getLogger(deletecar.class);

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Properties props = new Properties();
		props.load(addcar.class.getClassLoader().getResourceAsStream("db.properties"));
		String url = props.getProperty("jdbc.url");
		String uname = props.getProperty("jdbc.username");
		String pass = props.getProperty("jdbc.password");
		String sql = "DELETE FROM model where ModelNumber=? AND Make_ID=? AND YearOfProduction=?;";

		String model = request.getParameter("model");
		String make = request.getParameter("makeid");
		String year = request.getParameter("year");

		Connection myConn;
		try {
			try {
				Class.forName("com.mysql.jdbc.Driver");
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			// 1. Get a connection to database
			myConn = DriverManager.getConnection(url, uname, pass);
			// 2. Create a statement
			PreparedStatement myStmt = myConn.prepareStatement(sql);
			myStmt.setString(1, model);
			myStmt.setString(2, make);
			myStmt.setString(3, year);

			// 3. Execute the query
			int i = myStmt.executeUpdate();

			// 4. Process the result set
			logger.info(i + " Record(s) deleted.");
			response.sendRedirect("deletedcar.jsp");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
