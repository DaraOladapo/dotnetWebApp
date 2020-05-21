CREATE TABLE [dbo].[Payments] (
    [PaymentId]   BIGINT          IDENTITY (1, 1) NOT NULL,
    [Amount]      DECIMAL (18, 2) NOT NULL,
    [Reference]   NVARCHAR (MAX)  NULL,
    [ReceiptNo]   NVARCHAR (MAX)  NULL,
    [PaymentDate] DATETIME2 (7)   NOT NULL,
    [OrderId]     BIGINT          NULL,
    CONSTRAINT [PK_Payments] PRIMARY KEY CLUSTERED ([PaymentId] ASC),
    CONSTRAINT [FK_Payments_Orders_OrderId] FOREIGN KEY ([OrderId]) REFERENCES [dbo].[Orders] ([OrderId]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_Payments_OrderId]
    ON [dbo].[Payments]([OrderId] ASC);

