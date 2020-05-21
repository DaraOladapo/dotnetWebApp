CREATE TABLE [dbo].[Products] (
    [ProductId]         BIGINT          IDENTITY (1, 1) NOT NULL,
    [Name]              NVARCHAR (MAX)  NULL,
    [UnitPrice]         DECIMAL (18, 2) NOT NULL,
    [Image]             NVARCHAR (MAX)  NULL,
    [CreatedDate]       DATETIME2 (7)   NOT NULL,
    [CategoryId]        BIGINT          NULL,
    [BrandId]           BIGINT          NULL,
    [QuantityAvailable] INT             NOT NULL,
    [Description]       NVARCHAR (MAX)  NULL,
    [Status]            NVARCHAR (MAX)  NULL,
    [Video]             NVARCHAR (MAX)  NULL,
    [CostPrice]         DECIMAL (18, 2) DEFAULT ((0.0)) NOT NULL,
    CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED ([ProductId] ASC),
    CONSTRAINT [FK_Products_Brands_BrandId] FOREIGN KEY ([BrandId]) REFERENCES [dbo].[Brands] ([Id]) ON DELETE CASCADE,
    CONSTRAINT [FK_Products_Categories_CategoryId] FOREIGN KEY ([CategoryId]) REFERENCES [dbo].[Categories] ([CategoryId]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_Products_BrandId]
    ON [dbo].[Products]([BrandId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Products_CategoryId]
    ON [dbo].[Products]([CategoryId] ASC);

