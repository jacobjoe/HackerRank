/*
| Mode  | Category       | Max Score | Author       | Link                                                                                                       |
|-------|----------------|-----------|--------------|------------------------------------------------------------------------------------------------------------|
| Easy  | SQL (Basic)    | 20        | Henry Jacob  | https://www.hackerrank.com/challenges/earnings-of-employees?isFullScreen=true                              |


Problem

We define an employee's total earnings to be their monthly salary * months worked, 
and the maximum total earnings to be the maximum total earnings for any employee in the Employee table. 
Write a query to find the maximum total earnings for all employees 
as well as the total number of employees who have maximum total earnings. 
Then print these values as 2 space-separated integers.

Input Format

The Employee table containing employee data for a company is described as follows:

| Column      | Type    |
|-------------|---------|
| employee_id | Integer |
| name        | String  |
| months      | Integer |
| salary      | Integer |

# have to update details
*/

-- Solution
-- MS SQL Server

SELECT
    CONCAT(MAX(TOTAL_EARNINGS), '  ', COUNT(*)) AS RESULT
FROM(
    SELECT
        EMPLOYEE_ID,
        MONTHS * SALARY AS TOTAL_EARNINGS
    FROM
        EMPLOYEE
    ) SUB_QUERY
WHERE
    TOTAL_EARNINGS = (SELECT MAX(MONTHS * SALARY) FROM EMPLOYEE);
    