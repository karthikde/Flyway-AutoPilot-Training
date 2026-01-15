SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
PRINT N'Dropping constraints from [dbo].[Products]'
GO
ALTER TABLE [dbo].[Products] DROP CONSTRAINT [PK__Products__365C2D7F]
GO
PRINT N'Dropping constraints from [dbo].[Products]'
GO
ALTER TABLE [dbo].[Products] DROP CONSTRAINT [DF__Products__Creat__5D4D06F4]
GO
PRINT N'Dropping [dbo].[InsertProduct]'
GO
DROP PROCEDURE [dbo].[InsertProduct]
GO
PRINT N'Dropping [dbo].[Products]'
GO
DROP TABLE [dbo].[Products]
GO

