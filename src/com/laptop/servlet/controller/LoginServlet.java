package com.laptop.servlet.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.laptop.DB_ACCESS.AccountDAO;
import com.laptop.users.AccountManager;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String loggedHTML;
		if (AccountManager.getInstance().loginValidation(username, password)) {
			loggedHTML = "/LaptopBG/pages/Index.jsp";

		} else {
			loggedHTML = "/LaptopBG/pages/FAIL.jsp";
		}

		response.sendRedirect(loggedHTML);
		

	}

}
