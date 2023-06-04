/*
 * This java program test the update salary for terisa name.
 */
package com.database;
import org.junit.Test;
import org.junit.jupiter.api.Assertions;


/**
 * 
 * @author Kaif
 *
 */

public class UpdateDataTest {
	
	UpdateData  update = new UpdateData ();
	
	EmployeePayroll emp1 = new EmployeePayroll();
	
	AddTableUC8 emp2= new AddTableUC8();
	
	AddEmployeeUC11 emp3 =  new AddEmployeeUC11();
	
	@Test
	public void UpadateDataTest() {
		double salary = 3000000.0;
		boolean result = update.updateSalary(salary);
        Assertions.assertTrue(result);;
	}
	
	@Test
	public void givenEmployeePayrollInDB_WhenRetrived_shouldMatchCount() {
		boolean output = emp1.countEntries(12);
		Assertions.assertTrue(output);
	}
	
	@Test
	public void givenCreateTableQuery_shouldgiveStatus() {
		Assertions.assertTrue(emp2.createTable("Table Created"));
	}
	
	@Test
	public void addedNewEmployee_shouldgiveUpdatedCount() {
		boolean output = emp3.addEmployee(13);
		Assertions.assertTrue(output);
	}
}
