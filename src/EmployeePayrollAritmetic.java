/*
 * This java program find sum,avg,min and max salary gender wise.
 */
package com.database;
import java.sql.*;
/**
 * 
 * @author Kaif
 *
 */
public class EmployeePayrollAritmetic {

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
				String selectQuery1 = "SELECT SUM(salary)AS totalSalary,count(*) AS femaleCount FROM employee_payroll WHERE gender = 'F'";
				ResultSet resultSet1 = statement.executeQuery(selectQuery1);
				if (resultSet1.next()) {
					int sum1 = resultSet1.getInt("totalSalary");
					System.out.println(sum1);
					resultSet1.close();
					System.out.println("Successful");
				}
			}
			
			try (Statement statement = connection.createStatement()) {
				String selectQuery2 = "SELECT AVG(salary)AS average,count(*) as femaleCount FROM employee_payroll WHERE gender = 'F'";
				ResultSet resultSet2 = statement.executeQuery(selectQuery2);
				if(resultSet2.next()) {
					double avg1 = resultSet2.getDouble("average");
					System.out.println(avg1);
					resultSet2.close();
					System.out.println("Successful");
				}
				
			}
			try (Statement statement = connection.createStatement()) {
				String selectQuery3 = "SELECT MIN(salary)as minimum,count(*) as femaleCount FROM employee_payroll WHERE gender = 'F'";
				ResultSet resultSet3 = statement.executeQuery(selectQuery3);
				if(resultSet3.next()) {
					double min1 = resultSet3.getDouble("minimum");
					System.out.println(min1);
					resultSet3.close();
					System.out.println("Successful");
				}
			}
			try (Statement statement = connection.createStatement()) {
				String selectQuery4 = "SELECT MAX(salary)as maximum,count(*) as femaleCount FROM employee_payroll WHERE gender = 'F'";
				ResultSet resultSet4 = statement.executeQuery(selectQuery4);
				if(resultSet4.next()) {
					double max1 = resultSet4.getDouble("maximum");
					System.out.println(max1);
					resultSet4.close();
					System.out.println("Successful");
				}
			}
			try (Statement statement = connection.createStatement()) {
				String selectQuery5 = "SELECT SUM(salary)as salary,count(*) as maleCount FROM employee_payroll WHERE gender = 'M'";
				ResultSet resultSet5 = statement.executeQuery(selectQuery5);
				if(resultSet5.next()) {
					double sum2 = resultSet5.getDouble("salary");
					System.out.println(sum2);
					resultSet5.close();
					System.out.println("Successful");
				}
			}
			
			try (Statement statement = connection.createStatement()) {
				String selectQuery6 = "SELECT AVG(salary)as average,count(*) as maleCount FROM employee_payroll WHERE gender = 'M'";
				ResultSet resultSet6 = statement.executeQuery(selectQuery6);
				if(resultSet6.next()) {
				   double avg2 = resultSet6.getDouble("average");
				   System.out.println(avg2);
				   resultSet6.close();
				   System.out.println("Successful");
				}
			}
			try (Statement statement = connection.createStatement()) {
				String selectQuery7 = "SELECT MIN(salary)as minimum,count(*) as maleCount FROM employee_payroll WHERE gender = 'M'";
				ResultSet resultSet7 = statement.executeQuery(selectQuery7);
				if(resultSet7.next()) {
					double min2 = resultSet7.getDouble("minimum");
					System.out.println(min2);
					resultSet7.close();
					System.out.println("Successful");
				}
				
			}
			try (Statement statement = connection.createStatement()) {
				String selectQuery8 = "SELECT MAX(salary)as maximum,count(*) as maleCount FROM employee_payroll WHERE gender = 'M'";
				ResultSet resultSet8 = statement.executeQuery(selectQuery8);
				if(resultSet8.next()) {
				  double max2 = resultSet8.getDouble("maximum");
				  System.out.println(max2);
				  resultSet8.close();
				  System.out.println("Successful");
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
