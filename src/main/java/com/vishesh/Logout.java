package com.vishesh;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;

public class Logout extends HttpServlet {
	// ADDING A LOGGER FOR CAPTURING LOGGIN INFORMATION
	final static Logger logger = Logger.getLogger(FirstServlet.class);

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		session.removeAttribute("username");
		session.invalidate();
		response.sendRedirect("index.jsp");
		logger.info("Thank you for using our service, you are now logged out!");
	}

}
