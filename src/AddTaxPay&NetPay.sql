mysql>  update employee_payroll set Basic_Pay=3000;
Query OK, 7 rows affected (0.06 sec)
Rows matched: 7  Changed: 7  Warnings: 0

mysql>  update employee_payroll set Deductions=1000 WHERE id=1, set Deductions=1000 WHERE id=2;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ', set Deductions=1000 WHERE id=2' at line 1
mysql>  update employee_payroll set Deductions=1000 WHERE id=1;
Query OK, 1 row affected (0.05 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql>  update employee_payroll set Deductions=1000 WHERE id=2;
Query OK, 1 row affected (0.05 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql>  update employee_payroll set Deductions=2000 WHERE id=3;
Query OK, 1 row affected (0.07 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql>  update employee_payroll set Deductions=500 WHERE id=4;
Query OK, 1 row affected (0.06 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql>  update employee_payroll set Deductions=3000 WHERE id=5;
Query OK, 1 row affected (0.06 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql>  update employee_payroll set Deductions=3000 WHERE id=6;
Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql>  update employee_payroll set Deductions4000 WHERE id=7;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'WHERE id=7' at line 1
mysql>  update employee_payroll set Deductions=4000 WHERE id=7;
Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql>  update employee_payroll set Taxable_Pay=1000;
Query OK, 7 rows affected (0.02 sec)
Rows matched: 7  Changed: 7  Warnings: 0

mysql>  update employee_payroll set Income_Tax=1000 WHERE id=1;
Query OK, 1 row affected (0.05 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql>  update employee_payroll set Income_Tax=1000 WHERE id=2;
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql>  update employee_payroll set Income_Tax=1500 WHERE id=2;
Query OK, 1 row affected (0.07 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql>  update employee_payroll set Income_Tax=1000 WHERE id=2;
Query OK, 1 row affected (0.05 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql>  update employee_payroll set Income_Tax=1500 WHERE id=3;
Query OK, 1 row affected (0.09 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql>  update employee_payroll set Income_Tax=2000 WHERE id=4;
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql>  update employee_payroll set Income_Tax=2000 WHERE id=5;
Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql>  update employee_payroll set Income_Tax=3000 WHERE id=6;
Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql>  update employee_payroll set Income_Tax=3500 WHERE id=7;
Query OK, 1 row affected (0.08 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * employee_payroll;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'employee_payroll' at line 1
mysql> select * FROM employee_payroll;
+----+--------+----------+------------+--------+----------------+------------------+---------------------+-----------+------------+-------------+------------+---------+
| id | name   | salary   | date       | gender | employee_phone | employee_address | employee_department | Basic_Pay | Deductions | Taxable_Pay | Income_Tax | Net_Pay |
+----+--------+----------+------------+--------+----------------+------------------+---------------------+-----------+------------+-------------+------------+---------+
|  1 | Sam    |  5000.00 | 2017-02-01 | M      |      982818182 | Pune             | Marketing           |      3000 |       1000 |        1000 |       1000 |    NULL |
|  2 | Bill   |  5000.00 | 2017-06-15 | M      |      914376899 | Pune             | Finance             |      3000 |       1000 |        1000 |       1000 |    NULL |
|  3 | Mike   |  8000.00 | 2018-01-10 | M      |      924576231 | Pune             | Sales               |      3000 |       2000 |        1000 |       1500 |    NULL |
|  4 | Dustin |  4000.00 | 2018-02-20 | F      |      956786432 | Pune             | Sales               |      3000 |        500 |        1000 |       2000 |    NULL |
|  5 | Millie | 10000.00 | 2018-05-01 | F      |      945678455 | Pune             | Marketing           |      3000 |       3000 |        1000 |       2000 |    NULL |
|  6 | Jack   |  9000.00 | 2019-10-05 | M      |      954698341 | Pune             | Development         |      3000 |       3000 |        1000 |       3000 |    NULL |
|  7 | Vecna  | 12000.00 | 2020-03-25 | F      |      967534214 | Pune             | Sales               |      3000 |       4000 |        1000 |       3500 |    NULL |
+----+--------+----------+------------+--------+----------------+------------------+---------------------+-----------+------------+-------------+------------+---------+
7 rows in set (0.00 sec)

mysql>  update employee_payroll set Net_Pay=4000 WHERE id=1;
Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql>  update employee_payroll set Net_Pay=4000 WHERE id=2;
Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql>  update employee_payroll set Net_Pay=5500 WHERE id=3;
Query OK, 1 row affected (0.07 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql>  update employee_payroll set Net_Pay=2500 WHERE id=4;
Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql>  update employee_payroll set Net_Pay=6000 WHERE id=5;
Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql>  update employee_payroll set Net_Pay=1000 WHERE id=6;
Query OK, 1 row affected (0.06 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql>  update employee_payroll set Net_Pay=5500 WHERE id=7;
Query OK, 1 row affected (0.05 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * FROM employee_payroll;
+----+--------+----------+------------+--------+----------------+------------------+---------------------+-----------+------------+-------------+------------+---------+
| id | name   | salary   | date       | gender | employee_phone | employee_address | employee_department | Basic_Pay | Deductions | Taxable_Pay | Income_Tax | Net_Pay |
+----+--------+----------+------------+--------+----------------+------------------+---------------------+-----------+------------+-------------+------------+---------+
|  1 | Sam    |  5000.00 | 2017-02-01 | M      |      982818182 | Pune             | Marketing           |      3000 |       1000 |        1000 |       1000 |    4000 |
|  2 | Bill   |  5000.00 | 2017-06-15 | M      |      914376899 | Pune             | Finance             |      3000 |       1000 |        1000 |       1000 |    4000 |
|  3 | Mike   |  8000.00 | 2018-01-10 | M      |      924576231 | Pune             | Sales               |      3000 |       2000 |        1000 |       1500 |    5500 |
|  4 | Dustin |  4000.00 | 2018-02-20 | F      |      956786432 | Pune             | Sales               |      3000 |        500 |        1000 |       2000 |    2500 |
|  5 | Millie | 10000.00 | 2018-05-01 | F      |      945678455 | Pune             | Marketing           |      3000 |       3000 |        1000 |       2000 |    6000 |
|  6 | Jack   |  9000.00 | 2019-10-05 | M      |      954698341 | Pune             | Development         |      3000 |       3000 |        1000 |       3000 |    1000 |
|  7 | Vecna  | 12000.00 | 2020-03-25 | F      |      967534214 | Pune             | Sales               |      3000 |       4000 |        1000 |       3500 |    5500 |
+----+--------+----------+------------+--------+----------------+------------------+---------------------+-----------+------------+-------------+------------+---------+
7 rows in set (0.00 sec)

mysql>









