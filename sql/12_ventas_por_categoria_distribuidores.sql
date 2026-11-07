SELECT c.EnglishProductCategoryName AS Categoria,
       SUM(f.SalesAmount) AS Ventas
FROM dbo.FactResellerSales f
JOIN dbo.DimProduct p ON f.ProductKey = p.ProductKey
JOIN dbo.DimProductSubcategory s ON p.ProductSubcategoryKey = s.ProductSubcategoryKey
JOIN dbo.DimProductCategory c ON s.ProductCategoryKey = c.ProductCategoryKey
GROUP BY c.EnglishProductCategoryName
ORDER BY Ventas DESC;
