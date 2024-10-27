/*
| Mode  | Category       | Max Score | Author       | Link                                                                                                     |
|-------|----------------|-----------|--------------|----------------------------------------------------------------------------------------------------------|
| Easy  | SQL (Basic)    | 10        | Henry Jacob  | https://www.hackerrank.com/challenges/average-population/problem?isFullScreen=true                       |


Problem

Query the average population for all cities in CITY, rounded down to the nearest integer.

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
    FLOOR(AVG(POPULATION)) AS AVG_POPULATION
FROM
    CITY;
    