USE master;
CREATE LOGIN [NT Service\MSSQLServerOLAPService] FROM WINDOWS;
GO
USE AdventureWorksDW2022;
CREATE USER [NT Service\MSSQLServerOLAPService] FOR LOGIN [NT Service\MSSQLServerOLAPService];
ALTER ROLE db_datareader ADD MEMBER [NT Service\MSSQLServerOLAPService];
GO
