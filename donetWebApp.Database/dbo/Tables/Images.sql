CREATE TABLE [dbo].[Images] (
    [ImageId]   BIGINT         IDENTITY (1, 1) NOT NULL,
    [URL]       NVARCHAR (MAX) NULL,
    [ProductId] BIGINT         NULL,
    CONSTRAINT [PK_Images] PRIMARY KEY CLUSTERED ([ImageId] ASC),
    CONSTRAINT [FK_Images_Products_ProductId] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Products] ([ProductId]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_Images_ProductId]
    ON [dbo].[Images]([ProductId] ASC);

