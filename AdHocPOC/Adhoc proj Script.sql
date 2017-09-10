CREATE TABLE [dbo].[Transactions] (
    [Id]          INT            NOT NULL,
    [Dataset]     NVARCHAR (50)  NOT NULL,
    [TranFile]    NVARCHAR (500) NOT NULL,
    [RefFile]     NVARCHAR (500) NOT NULL,
    [Amount]      DECIMAL (18)   NOT NULL,
    [CreatedDate] DATETIME       NOT NULL,
    [EmplyeeName] NVARCHAR (200) NOT NULL,
    [SalesTerri]  NVARCHAR (50)  NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

INSERT INTO [dbo].[Transactions] ([Id], [Dataset], [TranFile], [RefFile], [Amount], [CreatedDate], [EmplyeeName], [SalesTerri]) VALUES (1, N'Data Sourcing', N'Enriched', N'Business Area Hierarchy', CAST(100 AS Decimal(18, 0)), N'2017-09-08 00:00:00', N'John', N'TX')
INSERT INTO [dbo].[Transactions] ([Id], [Dataset], [TranFile], [RefFile], [Amount], [CreatedDate], [EmplyeeName], [SalesTerri]) VALUES (2, N'Data Sourcing', N'Held', N'Business Area Hierarchy', CAST(300 AS Decimal(18, 0)), N'2017-09-08 00:00:00', N'Mike', N'TX')
INSERT INTO [dbo].[Transactions] ([Id], [Dataset], [TranFile], [RefFile], [Amount], [CreatedDate], [EmplyeeName], [SalesTerri]) VALUES (3, N'Data Sourcing', N'Held', N'Business Area Hierarchy', CAST(500 AS Decimal(18, 0)), N'2017-09-08 00:00:00', N'Mosh', N'TX')
INSERT INTO [dbo].[Transactions] ([Id], [Dataset], [TranFile], [RefFile], [Amount], [CreatedDate], [EmplyeeName], [SalesTerri]) VALUES (4, N'Credit & Pay', N'Validated', N'Employee Hierarchy', CAST(900 AS Decimal(18, 0)), N'2017-09-08 00:00:00', N'Tim', N'SC')
INSERT INTO [dbo].[Transactions] ([Id], [Dataset], [TranFile], [RefFile], [Amount], [CreatedDate], [EmplyeeName], [SalesTerri]) VALUES (5, N'Credit & Pay', N'Validated', N'Sales Territery', CAST(100 AS Decimal(18, 0)), N'2017-09-08 00:00:00', N'Tim', N'NC')
INSERT INTO [dbo].[Transactions] ([Id], [Dataset], [TranFile], [RefFile], [Amount], [CreatedDate], [EmplyeeName], [SalesTerri]) VALUES (6, N'Credit & Pay', N'Enriched', N'Sales Territery', CAST(1000 AS Decimal(18, 0)), N'2017-09-08 00:00:00', N'Mark', N'NY')
INSERT INTO [dbo].[Transactions] ([Id], [Dataset], [TranFile], [RefFile], [Amount], [CreatedDate], [EmplyeeName], [SalesTerri]) VALUES (7, N'Data Sourcing', N'Enriched', N'Business Area Hierarchy', CAST(954 AS Decimal(18, 0)), N'2017-09-08 00:00:00', N'Jimmy', N'TX')
INSERT INTO [dbo].[Transactions] ([Id], [Dataset], [TranFile], [RefFile], [Amount], [CreatedDate], [EmplyeeName], [SalesTerri]) VALUES (8, N'Credit & Pay', N'Validated', N'Employee Hierarchy', CAST(752 AS Decimal(18, 0)), N'2017-09-08 00:00:00', N'Matt', N'SC')
INSERT INTO [dbo].[Transactions] ([Id], [Dataset], [TranFile], [RefFile], [Amount], [CreatedDate], [EmplyeeName], [SalesTerri]) VALUES (9, N'Data Sourcing', N'Held', N'Business Area Hierarchy', CAST(675 AS Decimal(18, 0)), N'2017-09-08 00:00:00', N'Paul', N'TN')
INSERT INTO [dbo].[Transactions] ([Id], [Dataset], [TranFile], [RefFile], [Amount], [CreatedDate], [EmplyeeName], [SalesTerri]) VALUES (10, N'Credit & Pay', N'Validated', N'Employee Hierarchy', CAST(555 AS Decimal(18, 0)), N'2017-09-08 00:00:00', N'Harry', N'LA')
