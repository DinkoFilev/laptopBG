package com.laptop.users;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.concurrent.ConcurrentHashMap;

import com.laptop.DB_ACCESS.AccountDAO;

public class AccountManager {

	static AccountManager instance = null;
	private ConcurrentHashMap<String, Account> registerredUsers;

	private AccountManager() {
		registerredUsers = new ConcurrentHashMap<>();

		if (!AccountDAO.getInstance().getAllUsers().isEmpty()) {
			for (Account acc : AccountDAO.getInstance().getAllUsers()) {
				registerredUsers.put(acc.getUsername(), acc);
			}
		}

	}

	public static synchronized AccountManager getInstance() {
		if (instance == null) {
			instance = new AccountManager();
		}
		return instance;

	}

	public void registerUser(String firstName, String lastName, String email, String username, String password) {
		Account account = null;
		if (Account.getAccountID() == 0) {
			account = new Administrator(firstName, lastName, email, username, MD5Convert(password).toString());
		} else {
			account = new Customer(firstName, lastName, email, username, MD5Convert(password).toString());
		}

		registerredUsers.put(username, account);
		AccountDAO.getInstance().insertAccount(account);

	}

	public boolean loginValidation(String username, String password) {
		if (!registerredUsers.containsKey(username)) {
			return false;
		}
		
		return registerredUsers.get(username).getPassword().toString().equals(MD5Convert(password).toString());

	}

	private StringBuffer MD5Convert(String password) {
		MessageDigest md;
		StringBuffer sb = null;
		try {
			md = MessageDigest.getInstance("MD5");
			md.update(password.getBytes());
			sb = new StringBuffer();
			byte byteData[] = md.digest();
			for (int i = 0; i < byteData.length; i++) {
				sb.append(Integer.toString((byteData[i] & 0xff) + 0x100, 16).substring(1));
			}
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return sb;

	}
	
}
