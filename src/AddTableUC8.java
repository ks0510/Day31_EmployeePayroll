/*
 * This java program create new table in database using jdbc and insert values into it.
 */
package com.database;
import java.sql.*;
/**
 * 
 * @author Kaif
 *
 */

public class AddTableUC8 {
	
	public boolean createTable(String result) {
		if(result== "Table Created") {
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
				String query1 = "create table payroll_details(emp_id int primary key,Basic_Pay int,Deductions int,Taxable_Pay int,Income_Tax int,Net_Pay int,foreign key(emp_id) references employee_payroll(id) on delete cascade)";
				//statement.executeUpdate(query1);
				String selectQuery1 = "insert into employee_payroll(id,name,salary,date,gender,employee_phone,employee_address,employee_department,Basic_Pay,Deductions,Taxable_Pay,Income_Tax,Net_pay) values(12,'Bruce',200000,'2019-10-20','M',9654322,'ShivajiNagar','Sales',50000,40000,160000,16000,184000)";
				statement.executeUpdate(selectQuery1);
				connection.commit();
				System.out.println("Data added into employee_payroll");
				String selectQuery2 = "insert into payroll_details(emp_id,Basic_Pay,Deductions,Taxable_Pay,Income_Tax,Net_pay) values(12,50000,40000,160000,16000,184000)";
				statement.executeUpdate(selectQuery2);
				connection.commit();
				System.out.println("Data added into payroll_details");
			} 

		}catch (SQLException e) {
			e.printStackTrace();
		}

	}
}
