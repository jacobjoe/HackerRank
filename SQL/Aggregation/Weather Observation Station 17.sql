/*
| Mode  | Category       | Max Score | Author       | Link                                                                                             |
|-------|----------------|-----------|--------------|--------------------------------------------------------------------------------------------------|
| Easy  | SQL (Basic)    | 15        | Henry Jacob  | https://www.hackerrank.com/challenges/weather-observation-station-17/problem?isFullScreen=true   |


Problem

Query the Western Longitude (LONG_W)where the smallest Northern Latitude (LAT_N) in STATION is greater than 38.7780. 
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
    CAST(LONG_W AS DECIMAL(10, 4)) AS LONG_W
FROM
    STATION
WHERE
    LAT_N = (
        SELECT
            MIN(LAT_N)
        FROM
            STATION
        WHERE
            LAT_N > 38.7780
        );
        