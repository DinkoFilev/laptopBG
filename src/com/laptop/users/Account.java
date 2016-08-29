package com.laptop.users;

public abstract class Account {
	static int accountID = 0;
	private String firstName;
	private String lastName;
	private String email;
	private String userName;
	private String passWord;
	private boolean isAdmin;

	// TODO validations
	public Account(String firstName, String lastName, String email, String userName, String passWord) {
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.userName = userName;
		this.passWord = passWord;
		if (accountID == 0) {
			this.isAdmin = true;
		}
		accountID++;
	}

	String getFirstName() {
		return firstName;
	}

	void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	String getLastName() {
		return lastName;
	}

	void setLastName(String lastName) {
		this.lastName = lastName;
	}

	String getEmail() {
		return email;
	}

	void setEmail(String email) {
		this.email = email;
	}

	String getUserName() {
		return userName;
	}

	void setUserName(String userName) {
		this.userName = userName;
	}

	String getPassWord() {
		return passWord;
	}

	void setPassWord(String passWord) {
		this.passWord = passWord;
	}

}
