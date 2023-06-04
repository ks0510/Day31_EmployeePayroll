mysql>  UPDATE employee_payroll set gender ='M' where name ='Bill';
Query OK, 1 row affected (0.06 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> UPDATE employee_payroll set gender ='F' where name ='Millie';
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql>  UPDATE employee_payroll set gender ='F' where name ='Dustin';
Query OK, 1 row affected (0.07 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql>  UPDATE employee_payroll set gender ='F' where name ='Vecna';
Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> UPDATE employee_payroll set gender ='M' where name ='Sam';
Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> UPDATE employee_payroll set gender ='M' where name ='Mike';
Query OK, 1 row affected (0.07 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> UPDATE employee_payroll set gender ='M' where name ='Jack';
Query OK, 1 row affected (0.06 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * FROM employee_payroll;
+----+--------+----------+------------+--------+
| id | name   | salary   | date       | gender |
+----+--------+----------+------------+--------+
|  1 | Sam    |  5000.00 | 2017-02-01 | M      |
|  2 | Bill   |  5000.00 | 2017-06-15 | M      |
|  3 | Mike   |  8000.00 | 2018-01-10 | M      |
|  4 | Dustin |  4000.00 | 2018-02-20 | F      |
|  5 | Millie | 10000.00 | 2018-05-01 | F      |
|  6 | Jack   |  9000.00 | 2019-10-05 | M      |
|  7 | Vecna  | 12000.00 | 2020-03-25 | F      |
+----+--------+----------+------------+--------+
7 rows in set (0.00 sec)