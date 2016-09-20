package com.laptop.servlet.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.laptop.mail.SendMail;

/**
 * Servlet implementation class MailServlet
 */
@WebServlet("/MailServlet")
public class MailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String subject = request.getParameter("subject");
		String mailMessage = request.getParameter("message");
		String yourMail = request.getParameter("email");
		String senderName = request.getParameter("name");
		
		System.out.println(subject);
		System.out.println(mailMessage);
		System.out.println(yourMail);
		System.out.println(senderName);
		
		SendMail mail = SendMail.getInstance(subject, mailMessage, yourMail, senderName);
		mail.sendMail();
		
		
	}

}
