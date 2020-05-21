CREATE TABLE [dbo].[OrderDeliveries] (
    [OrderDeliveryId] BIGINT          IDENTITY (1, 1) NOT NULL,
    [FirstName]       NVARCHAR (MAX)  NULL,
    [LastName]        NVARCHAR (MAX)  NULL,
    [Email]           NVARCHAR (MAX)  NULL,
    [PhoneNumber]     NVARCHAR (MAX)  NULL,
    [HomeAddress]     NVARCHAR (MAX)  NULL,
    [StateId]         BIGINT          NULL,
    [City]            NVARCHAR (MAX)  NULL,
    [CreatedDate]     DATETIME2 (7)   NOT NULL,
    [ShippingAmount]  DECIMAL (18, 2) DEFAULT ((0.0)) NOT NULL,
    CONSTRAINT [PK_OrderDeliveries] PRIMARY KEY CLUSTERED ([OrderDeliveryId] ASC),
    CONSTRAINT [FK_OrderDeliveries_States_StateId] FOREIGN KEY ([StateId]) REFERENCES [dbo].[States] ([StateId]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_OrderDeliveries_StateId]
    ON [dbo].[OrderDeliveries]([StateId] ASC);

