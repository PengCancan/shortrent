package com.ruanko.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class BaseDao {
	

	private static final String CLASS_NAME = "com.mysql.jdbc.Driver";
	

	private static final String CONN_URL = "jdbc:mysql://localhost:3306/shortrentdb";
	

	private static final String DATABASE_USERNAME = "root";
	

	private static final String DATABASE_PASSWORD = "1234";


	public static Connection getConnection() {
		try {
			Class.forName(CLASS_NAME);
			return DriverManager.getConnection(CONN_URL, DATABASE_USERNAME, DATABASE_PASSWORD);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	

	public static void closeAll(Connection connection, Statement statement, ResultSet resultSet) {
		try {
			if (resultSet != null && !resultSet.isClosed()) {
				resultSet.close();
			}
			if (statement != null && !statement.isClosed()){
				statement.close();
			}
			if (connection != null && !connection.isClosed()) {
				connection.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	

	protected void executeUpdate(String sql) {

		Connection connection = getConnection();
		
		Statement statement = null;
		try {

			statement = connection.createStatement();
			

			statement.executeUpdate(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		

		closeAll(connection, statement, null);
	}
	
	
}
