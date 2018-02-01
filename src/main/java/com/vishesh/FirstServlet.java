package com.vishesh;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class FirstServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String uname = request.getParameter("username");
		String pwd = request.getParameter("pwd");

		if (uname.equals("Ronaldo") && pwd.equals("cr7")) {
			HttpSession session = request.getSession();
			session.setAttribute("username", uname);

			response.sendRedirect("welcome.jsp");
		} else {
			response.sendRedirect("index.jsp");
		}
		// Properties props = new Properties();
		// props.load(FirstServlet.class.getClassLoader().getResourceAsStream("db.properties"));

		// String url = props.getProperty("jdbc.url");
		// String username = props.getProperty("jdbc.username");
		// String password = props.getProperty("jdbc.password");
		// try {
		// // 1. Get a connection to database
		// Connection myConn = DriverManager.getConnection(url, username, password);
		//
		// // 2. Create a statement
		// Statement myStmt = myConn.createStatement();
		//
		// // 3. Execute SQL query
		// ResultSet myRS = myStmt.executeQuery("Select * from customer");
		//
		// // 4. Process the result set
		// while (myRS.next()) {
		// System.out.println(myRS.getString("C_FirstName") + ", " +
		// myRS.getString("C_LastName"));
		// }
		// } catch (Exception ex) {
		// ex.printStackTrace();
		// }
		doGet(request, response);
	}

}
