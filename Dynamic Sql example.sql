DECLARE @Query NVARCHAR(MAX);
DECLARE @Parameters NVARCHAR(MAX);
SET @Query=N'SELECT * FROM Employees WHERE name=@Name and Gender=@Gender';
SET @Parameters=N'@Name VARCHAR(30),@Gender VARCHAR(30)';
EXEC sp_executesql @Query,@Parameters,@Name='John',@Gender='Male'
