CREATE TABLE [dbo].[WishLists] (
    [WishListId]     BIGINT IDENTITY (1, 1) NOT NULL,
    [CustomerUserId] BIGINT NULL,
    [ProductId]      BIGINT NULL,
    CONSTRAINT [PK_WishLists] PRIMARY KEY CLUSTERED ([WishListId] ASC),
    CONSTRAINT [FK_WishLists_Products_ProductId] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Products] ([ProductId]) ON DELETE CASCADE,
    CONSTRAINT [FK_WishLists_Users_CustomerUserId] FOREIGN KEY ([CustomerUserId]) REFERENCES [dbo].[Users] ([UserId]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_WishLists_CustomerUserId]
    ON [dbo].[WishLists]([CustomerUserId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_WishLists_ProductId]
    ON [dbo].[WishLists]([ProductId] ASC);

