package com.vishesh;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;

public class FirstServlet extends HttpServlet {

	// ADDING A LOGGER FOR CAPTURING LOGGIN INFORMATION
	final static Logger logger = Logger.getLogger(FirstServlet.class);

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		logger.debug("Checking Login credentials...");
		String uname = request.getParameter("username");
		String pwd = request.getParameter("pwd");

		LoginDao LD = new LoginDao();

		if (LD.checkCredentials(uname, pwd)) {
			logger.info("Welcome " + uname + ", your details were successfully verified");
			HttpSession session = request.getSession();
			session.setAttribute("username", uname);

			response.sendRedirect("welcome.jsp");
		} else {
			logger.info("Logging failed ");
			response.sendRedirect("failure.jsp");
		}
	}

}
