package com.database;

import java.io.Reader;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class EmployeePayroll {

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
				String selectQuery = "select * from employee_payroll";
				ResultSet resultSet = statement.executeQuery(selectQuery);
				while (resultSet.next()) {
					int id = resultSet.getInt("id");
					String name = resultSet.getString("name");
					double salary = resultSet.getInt("salary");
					Date date = resultSet.getDate("date");
					Reader gender = resultSet.getCharacterStream("gender");
					int phone = resultSet.getInt("employee_phone");
					String address = resultSet.getString("employee_address");
					String department = resultSet.getString("employee_department");
					int basic_pay = resultSet.getInt("Basic_Pay");
				    int deductions = resultSet.getInt("Deductions");
				    int tax_pay = resultSet.getInt("Taxable_Pay");
				    int incomeTax = resultSet.getInt("Income_Tax");
				    int netpay = resultSet.getInt("Net_Pay");
				    

					System.out.println("ID :" + id + ",Name : " + name + ", Age: " +salary+date+gender+phone+address+department+basic_pay+deductions+tax_pay+incomeTax+netpay);
				}
				resultSet.close();
				System.out.println("Successful");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}
}
