package com.laptop.users;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.regex.Pattern;

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

	public void registerUser(String firstName, String lastName, String email, String username, String password,
			String address,String phoneNumber) {
		Account account = null;
		if (Account.getAccountID() == 0) {
			account = new Administrator(firstName, lastName, email, username, MD5Convert(password).toString(), address);

		} else {
			account = new Customer(firstName, lastName, email, username, MD5Convert(password).toString(), address,phoneNumber);

		}
		// any issue with database will remove last user from cache
		registerredUsers.put(username, account);
		if (!AccountDAO.getInstance().insertAccount(account)) {
			registerredUsers.remove(username);

		}

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

	public String registerChecker(String firstName , String lastName , String email , String username , String password , String address , String phoneNumber) {
		if(!firstName.matches("^[a-zA-Z]{3,45}$")){
			System.out.println("NE MATCHVA firstName");
			return "firstName";
		}
		if(!lastName.matches("^[a-zA-Z]{3,45}$")){
			System.out.println("NE MATCHVA LastName");
		
			return "lastName";
		}
		if(!email.matches("^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,6}$")){
			System.out.println("NE MATCHVA emaila");
			return "email";
		}
		if(!username.matches("^[a-zA-Z0-9._-]{3,45}$")){
			System.out.println("NE MATCHVA username");
			return "username";
		}
		if(!password.matches("^[a-zA-Z0-9._-]{3,30}$")){
			System.out.println("NE MATCHVA parolata");
			return "password";
		}
		if (registerredUsers.containsKey(username)) {
			return "username2";
		}

		for (Entry<String, Account> user : registerredUsers.entrySet()) {
			if (user.getValue().getEmail().equals(email)) {
				return "email2";
			}

		}

		return "register";
	}

}
