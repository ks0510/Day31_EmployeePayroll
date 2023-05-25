mysql> insert into employee_payroll(name,salary,date) values('Bill',5000,'2017-06-15');
Query OK, 1 row affected (0.03 sec)

mysql> insert into employee_payroll(name,salary,date) values('Mike',8000,'2018-01-10');
Query OK, 1 row affected (0.08 sec)

mysql> insert into employee_payroll(name,salary,date) values('Dustin',4000,'2018-02-20');
Query OK, 1 row affected (0.03 sec)

mysql>  insert into employee_payroll(name,salary,date) values('Millie',10000,'2018-05-1');
Query OK, 1 row affected (0.07 sec)

mysql> insert into employee_payroll(name,salary,date) values('Jack',9000''2019-10-05');
    '> insert into employee_payroll(name,salary,date) values('Jack','9000','2019-10-05');
    '> ^C
mysql> insert into employee_payroll(name,salary,date) values('Jack','9000','2019-10-05');
Query OK, 1 row affected (0.03 sec)

mysql>  insert into employee_payroll(name,salary,date) values('Vecna',12000,'2020-03-25');
Query OK, 1 row affected (0.03 sec)

mysql> select* FROM employee_payroll;
+----+--------+----------+------------+
| id | name   | salary   | date       |
+----+--------+----------+------------+
|  1 | Sam    |  5000.00 | 2017-02-01 |
|  2 | Bill   |  5000.00 | 2017-06-15 |
|  3 | Mike   |  8000.00 | 2018-01-10 |
|  4 | Dustin |  4000.00 | 2018-02-20 |
|  5 | Millie | 10000.00 | 2018-05-01 |
|  6 | Jack   |  9000.00 | 2019-10-05 |
|  7 | Vecna  | 12000.00 | 2020-03-25 |
+----+--------+----------+------------+
7 rows in set (0.00 sec)
