package com.laptop.DB_ACCESS;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBManager {

	private static DBManager instance = new DBManager();
	public static final String URL = "jdbc:mysql://localhost:3306/laptop";
	public static final String USER = "root";
	public static final String PASSWORD = "root";
	public static final String DRIVER_CLASS = "com.mysql.jdbc.Driver";

	private DBManager() {
		try {

			Class.forName(DRIVER_CLASS);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

	private Connection createConnection() {

		Connection connection = null;
		try {

			connection = DriverManager.getConnection(URL, USER, PASSWORD);
		} catch (SQLException e) {
			System.out.println("ERROR: Unable to Connect to Database.");
		}
		return connection;
	}

	public static Connection getConnection() {
		return instance.createConnection();
	}

	public synchronized static DBManager getInstance() {

		return instance;
	}
}
