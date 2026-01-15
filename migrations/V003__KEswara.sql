SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
PRINT N'Creating [dbo].[Products]'
GO
CREATE TABLE [dbo].[Products]
(
[ProductID] [int] NOT NULL IDENTITY(1, 1),
[ProductName] [nvarchar] (100) NOT NULL,
[Price] [decimal] (10, 2) NULL,
[Quantity] [int] NULL,
[CreatedDate] [datetime] NULL DEFAULT (getdate()),
[Category] [nvarchar] (50) NULL
)
GO
PRINT N'Creating primary key [PK__Products__365C2D7F] on [dbo].[Products]'
GO
ALTER TABLE [dbo].[Products] ADD PRIMARY KEY CLUSTERED ([ProductID])
GO
PRINT N'Creating [dbo].[InsertProduct]'
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

