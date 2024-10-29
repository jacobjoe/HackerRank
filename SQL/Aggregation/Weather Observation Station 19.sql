/*
| Mode    | Category       | Max Score | Author       | Link                                                                                             |
|---------|----------------|-----------|--------------|--------------------------------------------------------------------------------------------------|
| Medium  | SQL (Basic)    | 30        | Henry Jacob  | https://www.hackerrank.com/challenges/weather-observation-station-19/problem?isFullScreen=true   |


Problem

Consider P1(a, c) and P2(b, d) to be two points on a 2D plane where (a, b) are the respective minimum and maximum values of Northern Latitude (LAT_N) 
and (c, d) are the respective minimum and maximum values of Western Longitude (LONG_W) in STATION.

Query the Euclidean Distance between points P1 and P2 and format your answer to display 4 decimal digits.

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
    CAST(SQRT(POWER(A - B, 2) + POWER(C - D, 2)) AS DECIMAL(10, 4)) AS EUCLIDEAN_DISTANCE
FROM(
    SELECT
        MIN(LAT_N) AS A,
        MAX(LAT_N) AS B,
        MIN(LONG_W) AS C,
        MAX(LONG_W) AS D
    FROM
        STATION
    ) AS SUBQUERY;
    