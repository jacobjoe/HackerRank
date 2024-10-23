/*
| Mode  | Category       | Max Score | Author       | Link                                                                                             |
|-------|----------------|-----------|--------------|--------------------------------------------------------------------------------------------------|
| Easy  | SQL (Basic)    | 10        | Henry Jacob  | https://www.hackerrank.com/challenges/japanese-cities-attributes/problem?isFullScreen=true       |


Problem

Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN.

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
    COUNTRYCODE = 'JPN';
    