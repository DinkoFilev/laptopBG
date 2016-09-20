package com.laptop.mail;

import java.io.File;

// File Name SendFileEmail.java

import java.util.*;
import javax.mail.*;
import javax.mail.internet.*;
import javax.activation.*;
import java.util.Properties;
import java.util.concurrent.ConcurrentHashMap;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import com.laptop.DB_ACCESS.AccountDAO;
import com.laptop.users.Account;
import com.laptop.users.AccountManager;


public class SendMail {
	static SendMail instance = null;
	String subject;
	String mailMessage;
	String yourMail;
	String senderName;

	private SendMail(String mailMessage,String subject, String yourMail,String senderName) {
		this.subject = subject;
		this.mailMessage = mailMessage;
		this.yourMail = yourMail;
		this.senderName = senderName;
	}

	public static synchronized SendMail getInstance(String subject , String mailMessage, String yourMail,String senderName) {
		if (instance == null) {
			instance = new SendMail(subject,mailMessage,yourMail,senderName);
		}
		return instance;

	}

	public void sendMail() {
		System.out.println(subject);
		System.out.println(mailMessage);
		System.out.println(yourMail);
		System.out.println(senderName);
		final String username = "laptoptestov@gmail.com";
		final String password = "laptop12345";
		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");

		Session session = Session.getInstance(props, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(username, password);
			}
		});

		try {

			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress(username));
			message.setRecipients(Message.RecipientType.TO, InternetAddress.parse("laptoptestov@gmail.com"));
			message.setSubject(subject+" @ "+senderName+" m@il "+ yourMail);
			message.setText(mailMessage);

			Transport.send(message);

			System.out.println("Done");

		} catch (MessagingException e) {
			throw new RuntimeException(e);
		}
	}

}