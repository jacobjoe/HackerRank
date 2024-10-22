/*
| Mode  | Category       | Max Score | Author       | Link                                                                                             |
|-------|----------------|-----------|--------------|--------------------------------------------------------------------------------------------------|
| Easy  | SQL (Basic)    | 10        | Henry Jacob  | https://www.hackerrank.com/challenges/revising-the-select-query/problem?isFullScreen=true        |


Problem

Query all columns for all American cities in the CITY table with populations larger than 100000. The CountryCode for America is USA.

The CITY table is described as follows:


| Field        | Type          |
|--------------|---------------|
| ID           | NUMBER        |
| NAME         | VARCHAR2(17)  |
| COUNTRYCODE  | VARCHAR2(3)   |
| DISTRICT     | VARCHAR2(20)  |
| POPULATION   | NUMBER        |
*/

-- Solution
-- MS SQL Server

SELECT
    *
FROM
    CITY
WHERE
    POPULATION > 100000
    AND COUNTRYCODE = 'USA';
    