SELECT d.CalendarYear AS Anio, 'Internet' AS Canal,
       SUM(f.SalesAmount) AS Ventas
FROM dbo.FactInternetSales f
JOIN dbo.DimDate d ON f.OrderDateKey = d.DateKey
GROUP BY d.CalendarYear
UNION ALL
SELECT d.CalendarYear, 'Distribuidores',
       SUM(f.SalesAmount)
FROM dbo.FactResellerSales f
JOIN dbo.DimDate d ON f.OrderDateKey = d.DateKey
GROUP BY d.CalendarYear
ORDER BY Anio, Canal;
