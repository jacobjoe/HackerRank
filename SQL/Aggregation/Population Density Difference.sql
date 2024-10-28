/*
| Mode  | Category       | Max Score | Author       | Link                                                                                                       |
|-------|----------------|-----------|--------------|------------------------------------------------------------------------------------------------------------|
| Easy  | SQL (Basic)    | 10        | Henry Jacob  | https://www.hackerrank.com/challenges/population-density-difference/problem?isFullScreen=true              |


Problem

Query the difference between the maximum and minimum populations in CITY.

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
    MAX(POPULATION) - MIN(POPULATION) AS POPULATION_DIFFERENCE
FROM
    CITY;
    