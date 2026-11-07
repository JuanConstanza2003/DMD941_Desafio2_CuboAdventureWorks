SELECT TOP 10 p.EnglishProductName AS Producto,
       SUM(f.SalesAmount) AS Ventas,
       SUM(f.OrderQuantity) AS Unidades
FROM dbo.FactInternetSales f
JOIN dbo.DimProduct p ON f.ProductKey = p.ProductKey
GROUP BY p.EnglishProductName
ORDER BY Ventas DESC;
