package com.student.utility;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseUtil {

	private static final String url = "jdbc:mysql://localhost:3306/alamin";
	private static final String user = "root";
	private static final String password = "suprim";

	static {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

	public static Connection getConnection() throws SQLException, ClassNotFoundException {
		return DriverManager.getConnection(url, user, password);
	}

}
