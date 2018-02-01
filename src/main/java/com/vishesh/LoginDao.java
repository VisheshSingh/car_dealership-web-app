package com.vishesh;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginDao {
	String url = "jdbc:mysql://localhost:3306/car_dealership";
	String uname = "root";
	String pass = "admin";
	String sql = "Select * from login_details where username=? and password=?";

	public boolean checkCredentials(String username, String password) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			// 1. Get a connection to database
			Connection myConn = DriverManager.getConnection(url, uname, pass);

			// 2. Create a statement
			PreparedStatement myStmt = myConn.prepareStatement(sql);
			myStmt.setString(1, username);
			myStmt.setString(2, password);

			// 3. Execute SQL query
			ResultSet myRS = myStmt.executeQuery();

			if (myRS.next()) {
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

}
