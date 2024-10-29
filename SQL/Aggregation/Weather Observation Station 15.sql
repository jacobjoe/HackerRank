/*
| Mode  | Category       | Max Score | Author       | Link                                                                                             |
|-------|----------------|-----------|--------------|--------------------------------------------------------------------------------------------------|
| Easy  | SQL (Basic)    | 15        | Henry Jacob  | https://www.hackerrank.com/challenges/weather-observation-station-15/problem?isFullScreen=true   |


Problem

Query the Western Longitude (LONG_W) for the largest Northern Latitude (LAT_N) in STATION that is less than 137.2345. 
Round your answer to 4 decimal places.

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

SELECT 
    CAST(LONG_W AS DECIMAL(10, 4)) AS RESULT
FROM
    STATION
WHERE
    LAT_N = (
        SELECT
            MAX(LAT_N)
        FROM
            STATION
        WHERE
            LAT_N < 137.2345
        );
        