/*
 * This java program update salary of employee with respect to name.
 */
package com.database;
import java.sql.*;
import java.util.*;

public class UpdateData {
	
	
	
	public static boolean updateSalary(double salary) {
		
		if(salary == 3000000.0) {
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
				String updateQuery = " UPDATE employee_payroll set salary =3000000.0 where name ='Terissa'";
				statement.executeQuery(updateQuery);
				System.out.println("Data updated successfully");
	        }
         }catch (SQLException e) {
 			e.printStackTrace();
 		}
		return true;
	}
		return false;
	}

}
