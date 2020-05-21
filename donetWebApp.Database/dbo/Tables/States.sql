﻿CREATE TABLE [dbo].[States] (
    [StateId] BIGINT         IDENTITY (1, 1) NOT NULL,
    [Name]    NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_States] PRIMARY KEY CLUSTERED ([StateId] ASC)
);

