SELECT d.CalendarYear AS Anio, SUM(f.SalesAmount) AS Ventas
FROM dbo.FactInternetSales f
JOIN dbo.DimDate d ON f.OrderDateKey = d.DateKey
GROUP BY d.CalendarYear
ORDER BY d.CalendarYear;
