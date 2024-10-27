/*
| Mode  | Category       | Max Score | Author       | Link                                                                                                     |
|-------|----------------|-----------|--------------|----------------------------------------------------------------------------------------------------------|
| Easy  | SQL (Basic)    | 10        | Henry Jacob  | https://www.hackerrank.com/challenges/revising-aggregations-the-count-function/problem?isFullScreen=true |


Problem

Query a count of the number of cities in CITY having a Population larger than 100,000.

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
    COUNT(NAME) AS CITIES
FROM
    CITY
WHERE
    POPULATION > 100000;
    