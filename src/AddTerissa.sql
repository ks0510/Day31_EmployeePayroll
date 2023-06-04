insert into employee_payroll(name,salary,date,gender,employee_phone,employee_address,employee_department,Basic_Pay,Deductions,Taxable_Pay,Income_Tax,Net_Pay) values('Terissa',300000,'2019-10-05','F',98786545,'Nigdi','Sales',10000,20000,20000,25000,200000);
insert into employee_payroll(name,salary,date,gender,employee_phone,employee_address,employee_department,Basic_Pay,Deductions,Taxable_Pay,Income_Tax,Net_Pay) values('Terissa',300000,'2019-10-05','F',98786545,'Nigdi','Marketing',10000,20000,20000,25000,200000);
mysql> select*from employee_payroll;
+----+---------+-----------+------------+--------+----------------+------------------+---------------------+-----------+------------+-------------+------------+---------+
| id | name    | salary    | date       | gender | employee_phone | employee_address | employee_department | Basic_Pay | Deductions | Taxable_Pay | Income_Tax | Net_Pay |
+----+---------+-----------+------------+--------+----------------+------------------+---------------------+-----------+------------+-------------+------------+---------+
|  1 | Sam     |   5000.00 | 2017-02-01 | M      |      982818182 | Pune             | Marketing           |      3000 |       1000 |        1000 |       1000 |    4000 |
|  2 | Bill    |   5000.00 | 2017-06-15 | M      |      914376899 | Pune             | Finance             |      3000 |       1000 |        1000 |       1000 |    4000 |
|  3 | Mike    |   8000.00 | 2018-01-10 | M      |      924576231 | Pune             | Sales               |      3000 |       2000 |        1000 |       1500 |    5500 |
|  4 | Dustin  |   4000.00 | 2018-02-20 | F      |      956786432 | Pune             | Sales               |      3000 |        500 |        1000 |       2000 |    2500 |
|  5 | Millie  |  10000.00 | 2018-05-01 | F      |      945678455 | Pune             | Marketing           |      3000 |       3000 |        1000 |       2000 |    6000 |
|  6 | Jack    |   9000.00 | 2019-10-05 | M      |      954698341 | Pune             | Development         |      3000 |       3000 |        1000 |       3000 |    1000 |
|  7 | Vecna   |  12000.00 | 2020-03-25 | F      |      967534214 | Pune             | Sales               |      3000 |       4000 |        1000 |       3500 |    5500 |
|  8 | Terissa | 300000.00 | 2019-10-05 | F      |       98786545 | Nigdi            | Sales               |     10000 |      20000 |       20000 |      25000 |  200000 |
|  9 | Terissa | 300000.00 | 2019-10-05 | F      |       98786545 | Nigdi            | Sales               |     10000 |      20000 |       20000 |      25000 |  200000 |
| 10 | Terissa | 300000.00 | 2019-10-05 | F      |       98786545 | Nigdi            | Marketing           |     10000 |      20000 |       20000 |      25000 |  200000 |
+----+---------+-----------+------------+--------+----------------+------------------+---------------------+-----------+------------+-------------+------------+---------+
10 rows in set (0.00 sec)