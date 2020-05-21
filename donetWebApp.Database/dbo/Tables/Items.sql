CREATE TABLE [dbo].[Items] (
    [ItemId]      BIGINT        IDENTITY (1, 1) NOT NULL,
    [Quantity]    INT           NOT NULL,
    [CreatedDate] DATETIME2 (7) NOT NULL,
    [ProductId]   BIGINT        NULL,
    [OrderId]     BIGINT        NULL,
    CONSTRAINT [PK_Items] PRIMARY KEY CLUSTERED ([ItemId] ASC),
    CONSTRAINT [FK_Items_Orders_OrderId] FOREIGN KEY ([OrderId]) REFERENCES [dbo].[Orders] ([OrderId]) ON DELETE CASCADE,
    CONSTRAINT [FK_Items_Products_ProductId] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Products] ([ProductId]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_Items_OrderId]
    ON [dbo].[Items]([OrderId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Items_ProductId]
    ON [dbo].[Items]([ProductId] ASC);

