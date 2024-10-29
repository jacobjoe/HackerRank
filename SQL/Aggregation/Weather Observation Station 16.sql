/*
| Mode  | Category       | Max Score | Author       | Link                                                                                             |
|-------|----------------|-----------|--------------|--------------------------------------------------------------------------------------------------|
| Easy  | SQL (Basic)    | 10        | Henry Jacob  | https://www.hackerrank.com/challenges/weather-observation-station-16/problem?isFullScreen=true   |


Problem

Query the smallest Northern Latitude (LAT_N) from STATION that is greater than 38.7780. 
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
    CAST(MIN(LAT_N) AS DECIMAL(10, 4)) AS LAT_N
FROM
    STATION
WHERE
    LAT_N > 38.7780;
    