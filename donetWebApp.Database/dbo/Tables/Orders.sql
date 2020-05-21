CREATE TABLE [dbo].[Orders] (
    [OrderId]          BIGINT          IDENTITY (1, 1) NOT NULL,
    [CreatedDate]      DATETIME2 (7)   NOT NULL,
    [CustomerUserId]   BIGINT          NULL,
    [Total]            DECIMAL (18, 2) NOT NULL,
    [OrderDeliveryId]  BIGINT          NULL,
    [DeliveryMethod]   NVARCHAR (MAX)  NULL,
    [PaymentMethod]    NVARCHAR (MAX)  NULL,
    [OrderCompleted]   BIT             DEFAULT (CONVERT([bit],(0))) NOT NULL,
    [PaymentCompleted] BIT             NULL,
    [PaymentProve]     NVARCHAR (MAX)  NULL,
    CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED ([OrderId] ASC),
    CONSTRAINT [FK_Orders_OrderDeliveries_OrderDeliveryId] FOREIGN KEY ([OrderDeliveryId]) REFERENCES [dbo].[OrderDeliveries] ([OrderDeliveryId]) ON DELETE CASCADE,
    CONSTRAINT [FK_Orders_Users_CustomerUserId] FOREIGN KEY ([CustomerUserId]) REFERENCES [dbo].[Users] ([UserId]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_Orders_CustomerUserId]
    ON [dbo].[Orders]([CustomerUserId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Orders_OrderDeliveryId]
    ON [dbo].[Orders]([OrderDeliveryId] ASC);

