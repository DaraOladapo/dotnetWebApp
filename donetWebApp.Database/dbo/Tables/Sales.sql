CREATE TABLE [dbo].[Sales] (
    [SaleId]        BIGINT         IDENTITY (1, 1) NOT NULL,
    [DateSold]      DATETIME2 (7)  NOT NULL,
    [PaymentMethod] NVARCHAR (MAX) NULL,
    [UserId]        BIGINT         NULL,
    CONSTRAINT [PK_Sales] PRIMARY KEY CLUSTERED ([SaleId] ASC),
    CONSTRAINT [FK_Sales_Users_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users] ([UserId]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_Sales_UserId]
    ON [dbo].[Sales]([UserId] ASC);

