/*
| Mode  | Category       | Max Score | Author       | Link                                                                                             |
|-------|----------------|-----------|--------------|--------------------------------------------------------------------------------------------------|
| Easy  | SQL (Basic)    | 15        | Henry Jacob  | https://www.hackerrank.com/challenges/weather-observation-station-1/problem?isFullScreen=true    |


Problem

Query a list of CITY and STATE from the STATION table.

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
    CITY,
    STATE
FROM
    STATION;
    