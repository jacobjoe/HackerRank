/*
| Mode  | Category       | Max Score | Author       | Link                                                                                                       |
|-------|----------------|-----------|--------------|------------------------------------------------------------------------------------------------------------|
| Easy  | SQL (Basic)    | 10        | Henry Jacob  | https://www.hackerrank.com/challenges/revising-aggregations-the-average-function/problem?isFullScreen=true |


Problem

Query the average population of all cities in CITY where District is California.

Input Format

The CITY table is described as follows:

| Field        | Type        |
|--------------|-------------|
| ID           | NUMBER      |
| NAME         | VARCHAR2(17)|
| COUNTRYCODE  | VARCHAR2(3) |
| DISTRICT     | VARCHAR2(20)|
| POPULATION   | NUMBER      |
*/

-- Solution
-- MS SQL Server

SELECT
    AVG(POPULATION) AS AVG_POPULATION
FROM
    CITY
WHERE
    LOWER(DISTRICT) = 'California';
    