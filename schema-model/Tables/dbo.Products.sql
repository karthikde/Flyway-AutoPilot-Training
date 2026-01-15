CREATE TABLE [dbo].[Products]
(
[ProductID] [int] NOT NULL IDENTITY(1, 1),
[ProductName] [nvarchar] (100) NOT NULL,
[Price] [decimal] (10, 2) NULL,
[Quantity] [int] NULL,
[CreatedDate] [datetime] NULL DEFAULT (getdate())
)
GO
ALTER TABLE [dbo].[Products] ADD PRIMARY KEY CLUSTERED ([ProductID])
GO
