CREATE TABLE [dbo].[Users] (
    [UserId]           BIGINT         IDENTITY (1, 1) NOT NULL,
    [FirstName]        NVARCHAR (MAX) NULL,
    [LastName]         NVARCHAR (MAX) NULL,
    [Email]            NVARCHAR (MAX) NULL,
    [PasswordHash]     NVARCHAR (MAX) NULL,
    [IsVerified]       BIT            NOT NULL,
    [PhoneNumber]      NVARCHAR (MAX) NULL,
    [Role]             NVARCHAR (MAX) NULL,
    [CreatedDate]      DATETIME2 (7)  NOT NULL,
    [LastLogin]        DATETIME2 (7)  NOT NULL,
    [VerificationCode] NVARCHAR (MAX) NULL,
    [ProfilePicture]   NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED ([UserId] ASC)
);

