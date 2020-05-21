CREATE TABLE [dbo].[ShippingAmounts] (
    [Id]      BIGINT          IDENTITY (1, 1) NOT NULL,
    [From]    DECIMAL (18, 2) NOT NULL,
    [To]      DECIMAL (18, 2) NOT NULL,
    [StateId] BIGINT          NULL,
    [Amount]  DECIMAL (18, 2) NOT NULL,
    CONSTRAINT [PK_ShippingAmounts] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ShippingAmounts_States_StateId] FOREIGN KEY ([StateId]) REFERENCES [dbo].[States] ([StateId]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_ShippingAmounts_StateId]
    ON [dbo].[ShippingAmounts]([StateId] ASC);

