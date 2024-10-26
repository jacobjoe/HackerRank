/*
| Mode   | Category           | Max Score | Author       | Link                                                                                             |
|--------|--------------------|-----------|--------------|--------------------------------------------------------------------------------------------------|
| Medium | SQL (Intermediate) | 30        | Henry Jacob  | https://www.hackerrank.com/challenges/the-company/problem?isFullScreen=true                      |


Probelem

Amber's conglomerate corporation just acquired some new companies. Each of the companies follows this hierarchy:

Founder
   |
Lead Manager
   |
Senior Manager
   |
Manager
   |
Employee

Given the table schemas below, write a query to print the company_code, founder name, total number of lead managers, total number of senior managers, total number of managers, and total number of employees. Order your output by ascending company_code.

Note:

The tables may contain duplicate records.
The company_code is string, so the sorting should not be numeric. For example, if the company_codes are C_1, C_2, and C_10, then the ascending company_codes will be C_1, C_10, and C_2.

---

Input Format

The following tables contain company data:

Company: The company_code is the code of the company and founder is the founder of the company.

# have to update details
*/

-- Solution
-- MS SQL Server

SELECT 
    C.COMPANY_CODE, 
    C.FOUNDER, 
    COUNT(DISTINCT L.LEAD_MANAGER_CODE) AS LEADMANAGERCOUNT, 
    COUNT(DISTINCT S.SENIOR_MANAGER_CODE) AS SENIORMANAGERCOUNT, 
    COUNT(DISTINCT M.MANAGER_CODE) AS MANAGERCOUNT, 
    COUNT(DISTINCT E.EMPLOYEE_CODE) AS EMPLOYEECONT
FROM 
    COMPANY C
JOIN 
    LEAD_MANAGER L ON C.COMPANY_CODE = L.COMPANY_CODE
JOIN 
    SENIOR_MANAGER S ON L.LEAD_MANAGER_CODE = S.LEAD_MANAGER_CODE
JOIN 
    MANAGER M ON S.SENIOR_MANAGER_CODE = M.SENIOR_MANAGER_CODE
JOIN 
    EMPLOYEE E ON M.MANAGER_CODE = E.MANAGER_CODE
GROUP BY 
    C.COMPANY_CODE, 
    C.FOUNDER 
ORDER BY 
    C.COMPANY_CODE;
    