mysql> select * from employee_payroll;
+----+--------+----------+------------+--------+----------------+------------------+---------------------+
| id | name   | salary   | date       | gender | employee_phone | employee_address | employee_department |
+----+--------+----------+------------+--------+----------------+------------------+---------------------+
|  1 | Sam    |  5000.00 | 2017-02-01 | M      |           NULL | NULL             | NULL                |
|  2 | Bill   |  5000.00 | 2017-06-15 | M      |           NULL | NULL             | NULL                |
|  3 | Mike   |  8000.00 | 2018-01-10 | M      |           NULL | NULL             | NULL                |
|  4 | Dustin |  4000.00 | 2018-02-20 | F      |           NULL | NULL             | NULL                |
|  5 | Millie | 10000.00 | 2018-05-01 | F      |           NULL | NULL             | NULL                |
|  6 | Jack   |  9000.00 | 2019-10-05 | M      |           NULL | NULL             | NULL                |
|  7 | Vecna  | 12000.00 | 2020-03-25 | F      |           NULL | NULL             | NULL                |
+----+--------+----------+------------+--------+----------------+------------------+---------------------+
7 rows in set (0.00 sec)
mysql> update employee_payroll set employee_phone=982818182 where name='sam';
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update employee_payroll set employee_phone=9143768998 where name='Bill';
ERROR 1264 (22003): Out of range value for column 'employee_phone' at row 2
mysql> update employee_payroll set employee_phone=914376899 where name='Bill';
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update employee_payroll set employee_phone=924576231 where name='Mike';
Query OK, 1 row affected (0.05 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update employee_payroll set employee_phone=956786432 where name='Dustin';
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update employee_payroll set employee_phone=945678455 where name='Millie';
Query OK, 1 row affected (0.07 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update employee_payroll set employee_phone=954698341 where name='Jack';
Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update employee_payroll set employee_phone=967534214 where name='Vecna';
Query OK, 1 row affected (0.07 sec)
Rows matched: 1  Changed: 1  Warnings: 0
mysql> select * from employee_payroll;
+----+--------+----------+------------+--------+----------------+------------------+---------------------+
| id | name   | salary   | date       | gender | employee_phone | employee_address | employee_department |
+----+--------+----------+------------+--------+----------------+------------------+---------------------+
|  1 | Sam    |  5000.00 | 2017-02-01 | M      |      982818182 | NULL             | NULL                |
|  2 | Bill   |  5000.00 | 2017-06-15 | M      |      914376899 | NULL             | NULL                |
|  3 | Mike   |  8000.00 | 2018-01-10 | M      |      924576231 | NULL             | NULL                |
|  4 | Dustin |  4000.00 | 2018-02-20 | F      |      956786432 | NULL             | NULL                |
|  5 | Millie | 10000.00 | 2018-05-01 | F      |      945678455 | NULL             | NULL                |
|  6 | Jack   |  9000.00 | 2019-10-05 | M      |      954698341 | NULL             | NULL                |
|  7 | Vecna  | 12000.00 | 2020-03-25 | F      |      967534214 | NULL             | NULL                |
+----+--------+----------+------------+--------+----------------+------------------+---------------------+
7 rows in set (0.00 sec)

mysql>  update employee_payroll set employee_address='Banglore' where name='Bill';
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update employee_payroll set employee_address='Pune' where name='Sam';
Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update employee_payroll set employee_address='Dhule' where name='Mike';
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update employee_payroll set employee_address='Hyderabad' where name='Dustin';
Query OK, 1 row affected (0.13 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update employee_payroll set employee_address='Mysore' where name='Millie';
Query OK, 1 row affected (0.06 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update employee_payroll set employee_address='Pune' where name='Jack';
Query OK, 1 row affected (0.05 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update employee_payroll set employee_address='Hyderabad' where name='Vecna';
Query OK, 1 row affected (0.06 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql>  update employee_payroll set employee_department='Finance' where name='Bill';
Query OK, 1 row affected (0.06 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql>  update employee_payroll set employee_department='Marketing' where name='Sam';
Query OK, 1 row affected (0.05 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql>  update employee_payroll set employee_department='Sales' where name='Vecna';
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql>  update employee_payroll set employee_department='Development' where name='Jack';
Query OK, 1 row affected (0.08 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql>  update employee_payroll set employee_department='Sales' where name='Mike';
Query OK, 1 row affected (0.07 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql>  update employee_payroll set employee_department='Marketing' where name='Millie';
Query OK, 1 row affected (0.05 sec)
Rows matched: 1  Changed: 1  Warnings: 0
mysql> select * FROM employee_payroll;
+----+--------+----------+------------+--------+----------------+------------------+---------------------+
| id | name   | salary   | date       | gender | employee_phone | employee_address | employee_department |
+----+--------+----------+------------+--------+----------------+------------------+---------------------+
|  1 | Sam    |  5000.00 | 2017-02-01 | M      |      982818182 | Pune             | Marketing           |
|  2 | Bill   |  5000.00 | 2017-06-15 | M      |      914376899 | Banglore         | Finance             |
|  3 | Mike   |  8000.00 | 2018-01-10 | M      |      924576231 | Dhule            | Sales               |
|  4 | Dustin |  4000.00 | 2018-02-20 | F      |      956786432 | Hyderabad        | Sales               |
|  5 | Millie | 10000.00 | 2018-05-01 | F      |      945678455 | Mysore           | Marketing           |
|  6 | Jack   |  9000.00 | 2019-10-05 | M      |      954698341 | Pune             | Development         |
|  7 | Vecna  | 12000.00 | 2020-03-25 | F      |      967534214 | Hyderabad        | Sales               |
+----+--------+----------+------------+--------+----------------+------------------+---------------------+
7 rows in set (0.00 sec)