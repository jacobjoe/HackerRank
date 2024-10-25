/*
| Mode  | Category       | Max Score | Author       | Link                                                                                             |
|-------|----------------|-----------|--------------|--------------------------------------------------------------------------------------------------|
| Easy  | SQL (Basic)    | 10        | Henry Jacob  | https://www.hackerrank.com/challenges/name-of-employees/problem?isFullScreen=true                |


Problem

Write a query that prints a list of employee names (i.e.: the name attribute) from the Employee table in alphabetical order.

Input Format

The Employee table containing employee data for a company is described as follows:

| Column Type  | Data Type |
|--------------|-----------|
| employee_id  | Integer   |
| name         | String    |
| months       | Integer   |
| salary       | Integer   |

where employee_id is an employee's ID number, name is their name, 
months is the total number of months they've been working for the company, 
and salary is their monthly salary.


Sample Input

| employee_id | name      | months | salary |
|-------------|-----------|--------|--------|
| 12228       | Rose      | 15     | 1968   |
| 33645       | Angela    | 1      | 3443   |
| 45892       | Frank     | 17     | 1608   |
| 56118       | Patrick   | 7      | 1345   |
| 59725       | Lisa      | 11     | 2330   |
| 74197       | Kimberly  | 16     | 4372   |
| 78454       | Bonnie    | 8      | 1771   |
| 83565       | Michael   | 6      | 2017   |
| 98607       | Todd      | 5      | 3396   |
| 99989       | Joe       | 9      | 3573   |

Sample Output

Angela
Bonnie
Frank
Joe
Kimberly
Lisa
Michael
Patrick
Rose
Todd
*/

-- Solution
-- MS SQL Server

SELECT
    NAME
FROM
    EMPLOYEE
ORDER BY
    NAME ASC;
    