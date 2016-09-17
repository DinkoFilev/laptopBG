package com.laptop.DB_ACCESS;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashSet;
import java.util.Set;

import com.laptop.users.Account;
import com.laptop.users.Administrator;
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

	public boolean insertAccount(Account account) {
		PreparedStatement ps = null;
		try {
			DBManager.getInstance();
			ps = DBManager.getConnection().prepareStatement(
					"INSERT INTO accounts (first_name, last_name, email,username, password,address,phone_number,is_admin) VALUES (?,?,?,?,?,?,?,?);");
			ps.setString(1, account.getFirstName());
			ps.setString(2, account.getLastName());
			ps.setString(3, account.getEmail());
			ps.setString(4, account.getUsername());
			ps.setString(5, account.getPassword());
			ps.setString(6, account.getAddress());
			ps.setString(7, account.getPhoneNumber());
			ps.setBoolean(8, account.isAdmin());
			ps.executeUpdate();

			System.out.println("User added successfully");
			return true;
		} catch (SQLException e) {
			System.out.println("error cannot add this user");
			e.printStackTrace();
			return false;
		} finally {
			if (ps != null) {
				try {
					ps.close();
				} catch (SQLException e) {
				
					e.printStackTrace();
				}
			}
		}
	}

	public HashSet<Account> getAllUsers() {
		HashSet<Account> users = new HashSet<Account>();
		Statement st = null;
		ResultSet resultSet = null;
		try {
			DBManager.getInstance();
			st = DBManager.getConnection().createStatement();

			resultSet = st.executeQuery(
					"SELECT first_name, last_name, email,username, password,address ,phone_number,is_admin FROM accounts;");
			while (resultSet.next()) {
				if (resultSet.getBoolean("is_admin")) {
					users.add(new Administrator(resultSet.getString("first_name"), resultSet.getString("last_name"),
							resultSet.getString("email"), resultSet.getString("username"),
							resultSet.getString("password"), resultSet.getString("address")));

				}
				users.add(new Customer(resultSet.getString("first_name"), resultSet.getString("last_name"),
						resultSet.getString("email"), resultSet.getString("username"), resultSet.getString("password"),
						resultSet.getString("address"),resultSet.getString("phone_number")));
			}
		} catch (SQLException e) {
			System.out.println("Cannot create statement");
			return users;
		} finally {
			try {
				if(st != null){
				st.close();
				}
				if(resultSet != null){
				resultSet.close();
				}
			} catch (SQLException e) {
			
				e.printStackTrace();
			}

		}
		System.out.println("Users loaded successfully");
		return users;
	}

}
