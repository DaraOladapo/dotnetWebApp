CREATE TABLE [dbo].[HomeImages] (
    [Id]        BIGINT         IDENTITY (1, 1) NOT NULL,
    [ImageUrl]  NVARCHAR (MAX) NULL,
    [ProductId] BIGINT         NULL,
    CONSTRAINT [PK_HomeImages] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_HomeImages_Products_ProductId] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Products] ([ProductId]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_HomeImages_ProductId]
    ON [dbo].[HomeImages]([ProductId] ASC);

