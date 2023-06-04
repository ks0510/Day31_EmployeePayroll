/*
 * This java program add new employee to database
 */
package com.database;

import java.sql.*;

/**
 * 
 * @author Kaif
 *
 */

public class AddDataUC7 {

	public void addData(boolean result) {
		if (result) {
			System.out.println("Data added successfully");

		} else {
			System.out.println("Data not added");
		}

	}

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
		try (Connection connection = DriverManager.getConnection(url, username, password)) {

			try (Statement statement = connection.createStatement()) {
				connection.setAutoCommit(false);
				String selectQuery1 = "insert into employee_payroll(id,name,salary,date,gender,employee_phone,employee_address,employee_department,Basic_Pay,Deductions,Taxable_Pay,Income_Tax,Net_pay) values(11,'Robin',200000,'2019-08-23','M',9878654,'Swarget','Finance',50000,25000,100000,30000,80000)";
				statement.executeUpdate(selectQuery1);
				connection.commit();
				System.out.println("Data added succesfully");
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

	}
}