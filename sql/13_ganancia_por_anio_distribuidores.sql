SELECT d.CalendarYear, SUM(f.SalesAmount - f.TotalProductCost) AS Ganancia
FROM dbo.FactResellerSales f
JOIN dbo.DimDate d ON f.OrderDateKey = d.DateKey
GROUP BY d.CalendarYear
ORDER BY d.CalendarYear;
