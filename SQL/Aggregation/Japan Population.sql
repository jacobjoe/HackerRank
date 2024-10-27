/*
| Mode  | Category       | Max Score | Author       | Link                                                                                                     |
|-------|----------------|-----------|--------------|----------------------------------------------------------------------------------------------------------|
| Easy  | SQL (Basic)    | 10        | Henry Jacob  | https://www.hackerrank.com/challenges/japan-population/problem?isFullScreen=true                         |


Problem

Query the sum of the populations for all Japanese cities in CITY. The COUNTRYCODE for Japan is JPN.

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
    SUM(POPULATION) AS TOTAL_POPULATION
FROM
    CITY
WHERE
    COUNTRYCODE = 'JPN';
    