SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

-- Create the updated stored procedure with the new column
CREATE PROCEDURE [dbo].[InsertProduct]
    @ProductName NVARCHAR(100),
    @Price DECIMAL(10, 2),
    @Quantity INT,
    @Category NVARCHAR(50) = NULL  -- New parameter with default NULL
AS
BEGIN
    SET NOCOUNT ON;
    
    INSERT INTO dbo.Products (ProductName, Price, Quantity, Category, CreatedDate)
    VALUES (@ProductName, @Price, @Quantity, @Category, GETDATE());
    
    SELECT SCOPE_IDENTITY() AS NewProductID;
END;
GO
