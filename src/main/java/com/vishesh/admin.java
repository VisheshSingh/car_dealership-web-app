package com.vishesh;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;

public class admin extends HttpServlet {
	// ADDING A LOGGER FOR CAPTURING LOGGIN INFORMATION
	final static Logger logger = Logger.getLogger(admin.class);

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		logger.debug("Checking Login credentials...");
		String uname = request.getParameter("username");
		String pwd = request.getParameter("password");

		AdminDao AD = new AdminDao();

		if (AD.checkCredentials(uname, pwd)) {
			logger.info("Welcome " + uname + ", your details were successfully verified");
			HttpSession session = request.getSession();
			session.setAttribute("username", uname);

			response.sendRedirect("controller.jsp");
		} else {
			logger.info("Logging failed ");
			response.sendRedirect("index.jsp");
		}
	}

}
