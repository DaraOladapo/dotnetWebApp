CREATE TABLE [dbo].[Inventories] (
    [InventoryId] BIGINT        IDENTITY (1, 1) NOT NULL,
    [Quantity]    INT           NOT NULL,
    [Unit]        INT           NOT NULL,
    [CreatedDate] DATETIME2 (7) NOT NULL,
    [ProductId]   BIGINT        NULL,
    CONSTRAINT [PK_Inventories] PRIMARY KEY CLUSTERED ([InventoryId] ASC),
    CONSTRAINT [FK_Inventories_Products_ProductId] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Products] ([ProductId]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_Inventories_ProductId]
    ON [dbo].[Inventories]([ProductId] ASC);

