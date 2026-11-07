SELECT t.name AS Tabla, SUM(p.rows) AS Filas
FROM sys.tables t
JOIN sys.partitions p ON t.object_id = p.object_id
WHERE p.index_id IN (0,1)
GROUP BY t.name
ORDER BY Filas DESC;
