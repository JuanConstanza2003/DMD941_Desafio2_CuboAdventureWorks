SELECT t.SalesTerritoryCountry AS Pais,
       SUM(f.SalesAmount) AS Ventas
FROM dbo.FactInternetSales f
JOIN dbo.DimSalesTerritory t ON f.SalesTerritoryKey = t.SalesTerritoryKey
GROUP BY t.SalesTerritoryCountry
ORDER BY Ventas DESC;
