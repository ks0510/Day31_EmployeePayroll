/*
 * This java program retrieve all data from employ payroll
 * 
 */
package com.database;

import java.sql.*;
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
				/*
				 * While loop to iterate each element of database
				 */
				while (resultSet.next()) {
					int id = resultSet.getInt("id");
					String name = resultSet.getString("name");
					double salary = resultSet.getInt("salary");
					Date date = resultSet.getDate("date");
					String gender = resultSet.getString("gender");
					int phone = resultSet.getInt("employee_phone");
					String address = resultSet.getString("employee_address");
					String department = resultSet.getString("employee_department");
					int basic_pay = resultSet.getInt("Basic_Pay");
					int deductions = resultSet.getInt("Deductions");
					int tax_pay = resultSet.getInt("Taxable_Pay");
					int incomeTax = resultSet.getInt("Income_Tax");
					int netpay = resultSet.getInt("Net_Pay");
					
					
					/*
					 * To print all data of table
					 */

					System.out.println("ID :" + id + ", Name : " + name +", Salary : " + salary + ", Date :" + date
							+ ", Gender " + gender + ", Phone Number " + phone + ", Employee address " + address
							+ ", Employee Department " + department + ", Basic Pay " + basic_pay + ", Deductions " + deductions
							+ ", Tax pay " + tax_pay + ", Income Tax " + incomeTax + ", Net Pay " + netpay);
				}
				resultSet.close();
				System.out.println("Successful");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}
}
