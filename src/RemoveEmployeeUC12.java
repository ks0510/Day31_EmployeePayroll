package com.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class RemoveEmployeeUC12 {

	public static void main(String[] args) {
		/*
		 * connections
		 */
		String url = "jdbc:mysql://localhost:3306/payroll_service";

		String username = "root";
		String password = "Flashalpha@0708";

		/*
		 * making connection with database
		 */
		try (Connection connection = DriverManager.getConnection(url, username, password)){

			try (Statement statement = connection.createStatement()) {
				connection.setAutoCommit(false);
				String query1 = "delete from employee_payroll where id = 13";
				statement.executeUpdate(query1);
				connection.commit();
				System.out.println("Data deleted successfully");
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}

	}
}
