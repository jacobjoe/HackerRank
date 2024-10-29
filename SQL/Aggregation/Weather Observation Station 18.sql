/*
| Mode    | Category       | Max Score | Author       | Link                                                                                             |
|---------|----------------|-----------|--------------|--------------------------------------------------------------------------------------------------|
| Medium  | SQL (Basic)    | 25        | Henry Jacob  | https://www.hackerrank.com/challenges/weather-observation-station-18/problem?isFullScreen=true   |


Problem

Consider P1(a, b) and P2(c, d) to be two points on a 2D plane.

 a happens to equal the minimum value in Northern Latitude (LAT_N in STATION).
 b happens to equal the minimum value in Western Longitude (LONG_W in STATION).
 c happens to equal the maximum value in Northern Latitude (LAT_N in STATION).
 d happens to equal the maximum value in Western Longitude (LONG_W in STATION).
Query the Manhattan Distance between points P1 and P2 and round it to a scale of 4 decimal places.

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
    CAST(ABS(A - C) + ABS(B - D) AS DECIMAL(10, 4)) AS MANHATTAN_DISTANCE
FROM(
    SELECT
        MIN(LAT_N) AS A,
        MIN(LONG_W) AS B,
        MAX(LAT_N) AS C,
        MAX(LONG_W) AS D
    FROM
        STATION
    ) AS SUBQUERY;
    