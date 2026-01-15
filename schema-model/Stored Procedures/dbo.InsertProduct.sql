SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROCEDURE [dbo].[InsertProduct]
    @ProductName NVARCHAR(100),
    @Price DECIMAL(10, 2),
    @Quantity INT
AS
BEGIN
    SET NOCOUNT ON;
    
    INSERT INTO dbo.Products (ProductName, Price, Quantity, CreatedDate)
    VALUES (@ProductName, @Price, @Quantity, GETDATE());
    
    SELECT SCOPE_IDENTITY() AS NewProductID;
END;
GO
