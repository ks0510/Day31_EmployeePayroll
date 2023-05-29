/*
 * This java program test the update salary for terisa name.
 */
package com.database;
import org.junit.Test;
import org.junit.jupiter.api.Assertions;

import junit.framework.Assert;
/**
 * 
 * @author Kaif
 *
 */

public class UpdateDataTest {
	
	UpdateData  update = new UpdateData ();
	
	@Test
	public void UpadateDataTest() {
		double salary = 3000000.0;
		boolean result = update.updateSalary(salary);
		Assertions.assertTrue(result);
	}
}
