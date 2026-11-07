SELECT d.CalendarYear AS Anio,
       SUM(f.SalesAmount) AS Ventas,
       SUM(f.TotalProductCost) AS Costo,
       SUM(f.SalesAmount - f.TotalProductCost) AS Ganancia
FROM dbo.FactInternetSales f
JOIN dbo.DimDate d ON f.OrderDateKey = d.DateKey
GROUP BY d.CalendarYear
ORDER BY d.CalendarYear;
