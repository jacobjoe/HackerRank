/*
| Mode  | Category           | Max Score | Author       | Link                                                                                             |
|-------|--------------------|-----------|--------------|--------------------------------------------------------------------------------------------------|
| Easy  | SQL (Basic)        | 15        | Henry Jacob  | https://www.hackerrank.com/challenges/weather-observation-station-12/problem?isFullScreen=true   |


Problem

Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. Your result cannot contain duplicates.

Input Format

The STATION table is described as follows:


| Field Type | Description   |
|------------|---------------|
| ID         | NUMBER        |
| CITY       | VARCHAR2(21)  |
| STATE      | VARCHAR2(2)   |
| LAT_N      | NUMBER        |
| LONG_W     | NUMBER        |

where LAT_N is the northern latitude and LONG_W is the western longitude.
*/

-- Solution
-- MS SQL Server

SELECT DISTINCT
    CITY
FROM
    STATION
WHERE
    LOWER(LEFT(CITY, 1)) NOT IN ('a', 'e', 'i', 'o', 'u')
    AND LOWER(RIGHT(CITY, 1)) NOT IN ('a', 'e', 'i', 'o', 'u');
    