package com.database;

import java.sql.*;

public class CreateConnection {

	public static void main(String[] args) {
		/*
		 * connections
		 */
		String url ="jdbc:mysql://localhost:3306/payroll_service";
		
		String username = "root";
		String password = "Flashalpha@0708";
		
		/*
		 * making connection with database
		 */
		try(Connection connection = DriverManager.getConnection(url,username,password)){
			
			try(Statement statement = connection.createStatement()){
				System.out.println("Connection successfull");
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}

	}
}
