/*
| Mode  | Category       | Max Score | Author       | Link                                                                                             |
|-------|----------------|-----------|--------------|--------------------------------------------------------------------------------------------------|
| Easy  | SQL (Basic)    | 10        | Henry Jacob  | https://www.hackerrank.com/challenges/weather-observation-station-7/problem?isFullScreen=true    |


Problem

Query the list of CITY names ending with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.

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
    LOWER(RIGHT(CITY, 1)) IN ('a', 'e', 'i', 'o', 'u');
    