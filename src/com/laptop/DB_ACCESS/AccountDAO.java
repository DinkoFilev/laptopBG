package com.laptop.DB_ACCESS;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashSet;
import java.util.Set;

import com.laptop.users.Account;
import com.laptop.users.Customer;

public class AccountDAO {

	private static AccountDAO instance = null;

	private AccountDAO() {

	}

	public static synchronized AccountDAO getInstance() {
		if (instance == null) {
			instance = new AccountDAO();
		}
		return instance;
	}

	public void insertAccount(Account account) {
		try {
			DBManager.getInstance();
			PreparedStatement st = DBManager.getConnection().prepareStatement(
					"INSERT INTO accounts (first_name, last_name, email,username, password,is_admin,test_id) VALUES (?, ?, ?, ?, ?,?,?);");
			st.setString(1, account.getFirstName());
			st.setString(2, account.getLastName());
			st.setString(3, account.getEmail());
			st.setString(4, account.getUsername());
			st.setString(5, account.getPassword());
			st.setBoolean(6, account.isAdmin());
			st.setInt(7, Account.getAccountID());
			st.executeUpdate();
			System.out.println("User added successfully");
		} catch (SQLException e) {
			System.out.println("error cannot add this user");
			e.printStackTrace();
		}
	}

	public HashSet<Account> getAllUsers() {
		HashSet<Account> users = new HashSet<Account>();

		try {
			DBManager.getInstance();
			Statement st = DBManager.getConnection().createStatement();

			ResultSet resultSet = st
					.executeQuery("SELECT first_name, last_name, email,username, password,is_admin FROM accounts;");
			while (resultSet.next()) {
				if (resultSet.getBoolean("is_admin")) {
					users.add(new Customer(resultSet.getString("first_name"), resultSet.getString("last_name"),
							resultSet.getString("email"), resultSet.getString("username"),
							resultSet.getString("password")));

				}
				users.add(new Customer(resultSet.getString("first_name"), resultSet.getString("last_name"),
						resultSet.getString("email"), resultSet.getString("username"),
						resultSet.getString("password")));
			}
		} catch (SQLException e) {
			System.out.println("Cannot create statement");
			return users;
		}
		System.out.println("Users loaded successfully");
		return users;
	}

}
