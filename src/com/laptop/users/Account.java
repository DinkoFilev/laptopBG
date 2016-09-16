package com.laptop.users;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.laptop.DB_ACCESS.DBManager;

public abstract class Account {
	private static int accountID = 0;
	private String firstName;
	private String lastName;
	private String email;
	private String username;
	private String password;
	private boolean isAdmin = false;

	// TODO validations
	public Account(String firstName, String lastName, String email, String username, String password,boolean isAdmin) {
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.username = username;
		this.password = password;
		
			DBManager.getInstance();
			Statement st;
			try {
				st = DBManager.getConnection().createStatement();
				ResultSet resultSet = st
						.executeQuery("SELECT AUTO_INCREMENT FROM  INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'laptopbg' AND   TABLE_NAME   = 'accounts';");
			while(resultSet.next()){
				accountID = resultSet.getInt("AUTO_INCREMENT");
			}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			
	
		if (accountID == 1) {
			this.isAdmin = true;
		}
		
	}

	public String getFirstName() {
		return firstName;
	}

	void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getEmail() {
		return email;
	}

	void setEmail(String email) {
		this.email = email;
	}

	public String getUsername() {
		return username;
	}

	void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	void setPassword(String password) {
		this.password = password;
	}

	void setAdmin(boolean isAdmin) {
		this.isAdmin = isAdmin;
	}

	public boolean isAdmin() {
		return isAdmin;
	}

	public static int getAccountID() {
		return accountID;
	}
}
