/*
| Mode  | Category       | Max Score | Author       | Link                                                                                             |
|-------|----------------|-----------|--------------|--------------------------------------------------------------------------------------------------|
| Easy  | SQL (Basic)    | 10        | Henry Jacob  | https://www.hackerrank.com/challenges/revising-the-select-query-2/problem?isFullScreen=true      |


Problem

Query the NAME field for all American cities in the CITY table with populations larger than 120000. The CountryCode for America is USA.

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
    NAME
FROM
    CITY
WHERE
    POPULATION > 120000
    AND COUNTRYCODE = 'USA';
    