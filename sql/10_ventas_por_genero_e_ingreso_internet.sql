SELECT c.Gender AS Genero,
       CASE WHEN c.YearlyIncome < 40000 THEN 'Bajo (<40k)'
            WHEN c.YearlyIncome < 80000 THEN 'Medio (40k-80k)'
            ELSE 'Alto (>80k)' END AS NivelIngreso,
       SUM(f.SalesAmount) AS Ventas
FROM dbo.FactInternetSales f
JOIN dbo.DimCustomer c ON f.CustomerKey = c.CustomerKey
GROUP BY c.Gender,
       CASE WHEN c.YearlyIncome < 40000 THEN 'Bajo (<40k)'
            WHEN c.YearlyIncome < 80000 THEN 'Medio (40k-80k)'
            ELSE 'Alto (>80k)' END
ORDER BY Ventas DESC;
