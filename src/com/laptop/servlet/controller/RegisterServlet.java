package com.laptop.servlet.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.laptop.users.AccountManager;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String firstName = request.getParameter("firstname");
		String lastName = request.getParameter("lastname");
		String email = request.getParameter("email");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String address = request.getParameter("address");
		String phoneNumber = request.getParameter("phoneNumber");
		String duplicate = AccountManager.getInstance().registerChecker(firstName,lastName,email,username, password,address,phoneNumber);
		
			response.getWriter().append(duplicate);
		
		//String loggedHTML = "/LaptopBG/pages/Login.jsp";
		if(duplicate.equals("register")){
		AccountManager.getInstance().registerUser(firstName, lastName, email, username.toLowerCase(), password,address,phoneNumber);
		}
		//response.sendRedirect(loggedHTML);
//		RequestDispatcher rd = request.getRequestDispatcher(loggedHTML);
//		rd.forward(request, response);
	}

}
