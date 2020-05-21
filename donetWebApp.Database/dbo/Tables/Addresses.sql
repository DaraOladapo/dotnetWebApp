CREATE TABLE [dbo].[Addresses] (
    [Id]          BIGINT         IDENTITY (1, 1) NOT NULL,
    [HomeAddress] NVARCHAR (MAX) NULL,
    [StateId]     BIGINT         NULL,
    [City]        NVARCHAR (MAX) NULL,
    [IsDefault]   BIT            NOT NULL,
    [UserId]      BIGINT         NULL,
    CONSTRAINT [PK_Addresses] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Addresses_States_StateId] FOREIGN KEY ([StateId]) REFERENCES [dbo].[States] ([StateId]) ON DELETE CASCADE,
    CONSTRAINT [FK_Addresses_Users_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users] ([UserId]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_Addresses_StateId]
    ON [dbo].[Addresses]([StateId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Addresses_UserId]
    ON [dbo].[Addresses]([UserId] ASC);

