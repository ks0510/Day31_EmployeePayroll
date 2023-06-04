mysql> SELECT SUM(salary) FROM employee_payroll WHERE gender = 'F' GROUP BY gender;
+-------------+
| SUM(salary) |
+-------------+
|    26000.00 |
+-------------+
1 row in set (0.00 sec)

mysql> SELECT AVG(salary) FROM employee_payroll WHERE gender = 'F' GROUP BY gender;
+-------------+
| AVG(salary) |
+-------------+
| 8666.666667 |
+-------------+
1 row in set (0.00 sec)

mysql> SELECT MIN(salary) FROM employee_payroll WHERE gender = 'F' GROUP BY gender;
+-------------+
| MIN(salary) |
+-------------+
|     4000.00 |
+-------------+
1 row in set (0.00 sec)

mysql> SELECT MAX(salary) FROM employee_payroll WHERE gender = 'F' GROUP BY gender;
+-------------+
| MAX(salary) |
+-------------+
|    12000.00 |
+-------------+
1 row in set (0.00 sec)

mysql> SELECT COUNT(*) FROM employee_payroll WHERE gender = 'F' GROUP BY gender;
+----------+
| COUNT(*) |
+----------+
|        3 |
+----------+
1 row in set (0.00 sec)

mysql> SELECT SUM(salary) FROM employee_payroll WHERE gender = 'M' GROUP BY gender;
+-------------+
| SUM(salary) |
+-------------+
|    27000.00 |
+-------------+
1 row in set (0.00 sec)

mysql> SELECT AVG(salary) FROM employee_payroll WHERE gender = 'M' GROUP BY gender;
+-------------+
| AVG(salary) |
+-------------+
| 6750.000000 |
+-------------+
1 row in set (0.00 sec)

mysql> SELECT MIN(salary) FROM employee_payroll WHERE gender = 'M' GROUP BY gender;
+-------------+
| MIN(salary) |
+-------------+
|     5000.00 |
+-------------+
1 row in set (0.00 sec)

mysql> SELECT MAX(salary) FROM employee_payroll WHERE gender = 'M' GROUP BY gender;
+-------------+
| MAX(salary) |
+-------------+
|     9000.00 |
+-------------+
1 row in set (0.00 sec)

mysql> SELECT COUNT(*) FROM employee_payroll WHERE gender = 'M' GROUP BY gender;
+----------+
| COUNT(*) |
+----------+
|        4 |
+----------+
1 row in set (0.00 sec)