Create Database Stocks;
select * from `stock data1`;

#Daily Return Calculation which give daily percent changes and trend directions
SELECT 
    *,
    ROUND(
        (Close - LAG(Close) OVER (ORDER BY Date)) /
        LAG(Close) OVER (ORDER BY Date), 6
    ) AS Daily_Return
FROM `stock data1`;

SELECT
    Date,
    Close,
    AVG(Close) OVER (
        ORDER BY Date
        ROWS BETWEEN 6 PRECEDING AND CURRENT ROW
    ) AS MA_7,
    AVG(Close) OVER (
        ORDER BY Date
        ROWS BETWEEN 29 PRECEDING AND CURRENT ROW
    ) AS MA_30
FROM `stock data1`;

WITH ma AS (
    SELECT
        Date,
        Close,
        AVG(Close) OVER (
            ORDER BY Date 
            ROWS BETWEEN 6 PRECEDING AND CURRENT ROW
        ) AS MA_7,
        AVG(Close) OVER (
            ORDER BY Date 
            ROWS BETWEEN 29 PRECEDING AND CURRENT ROW
        ) AS MA_30
    FROM `stock data1`
)
SELECT
    *,
    CASE
        WHEN MA_7 > MA_30 THEN 'BUY'
        WHEN MA_7 < MA_30 THEN 'SELL'
        ELSE 'HOLD'
    END AS 'signal'
FROM ma;

SELECT 
    Date,
    STDDEV(Close) OVER (
        ORDER BY Date
        ROWS BETWEEN 29 PRECEDING AND CURRENT ROW
    ) AS Volatility_30
FROM `stock data1`;

SELECT
    DATE_FORMAT(Date, '%Y-%m') AS Month,
    ROUND(
        (MAX(Close) - MIN(Close)) / MIN(Close),
        4
    ) AS Monthly_Return
FROM `stock data1`
GROUP BY Month
ORDER BY Month;

SELECT
    YEAR(Date) AS Year,
    ROUND(
        (MAX(Close) - MIN(Close)) / MIN(Close),
        4
    ) AS Yearly_Return
FROM `stock data1`
GROUP BY Year
ORDER BY Year;

SELECT 
    Date, Close, Volume
FROM `stock data1`
ORDER BY Volume DESC
LIMIT 10;

WITH returns AS (
    SELECT 
        Date,
        Close,
        (Close - LAG(Close) OVER (ORDER BY Date)) /
        LAG(Close) OVER (ORDER BY Date) AS Daily_Return
    FROM `stock data1`
)
SELECT *
FROM returns
ORDER BY Daily_Return DESC
LIMIT 5;

SELECT *
FROM returns
ORDER BY Daily_Return ASC
LIMIT 5;

SELECT
    MIN(Close) AS Min_Close,
    MAX(Close) AS Max_Close,
    AVG(Close) AS Avg_Close,
    STDDEV(Close) AS StdDev_Close
FROM `stock data1`;





