package com.database;
import java.sql.*;
/**
 * 
 * @author Kaif
 *
 */
public class AddEmployeeUC11 {
	
	public boolean addEmployee(int entries) {
		if(entries==13) {
			return true;
		}
		return false;
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
				String selectQuery1 = "insert into employee_payroll(id,name,salary,date,gender,employee_phone,employee_address,employee_department,Basic_Pay,Deductions,Taxable_Pay,Income_Tax,Net_pay) values(13,'Bruce',100000,'2019-10-20','M',9654322,'ShivajiNagar','Sales',50000,20000,80000,8000,92000)";
				statement.executeUpdate(selectQuery1);
				connection.commit();
				System.out.println("Data added into employee_payroll");
				String selectQuery2 = "insert into payroll_details(emp_id,Basic_Pay,Deductions,Taxable_Pay,Income_Tax,Net_pay) values(13,50000,20000,80000,8000,92000)";
				statement.executeUpdate(selectQuery2);
				connection.commit();
				System.out.println("Data added into payroll_details");
			} 

		}catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
