CREATE TABLE [dbo].[SaleItems] (
    [SaleItemId]  BIGINT        IDENTITY (1, 1) NOT NULL,
    [Quantity]    INT           NOT NULL,
    [SaleId]      BIGINT        NULL,
    [ProductId]   BIGINT        NULL,
    [CreatedDate] DATETIME2 (7) DEFAULT ('0001-01-01T00:00:00.0000000') NOT NULL,
    CONSTRAINT [PK_SaleItems] PRIMARY KEY CLUSTERED ([SaleItemId] ASC),
    CONSTRAINT [FK_SaleItems_Products_ProductId] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Products] ([ProductId]) ON DELETE CASCADE,
    CONSTRAINT [FK_SaleItems_Sales_SaleId] FOREIGN KEY ([SaleId]) REFERENCES [dbo].[Sales] ([SaleId]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_SaleItems_ProductId]
    ON [dbo].[SaleItems]([ProductId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_SaleItems_SaleId]
    ON [dbo].[SaleItems]([SaleId] ASC);

