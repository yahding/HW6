﻿CREATE TABLE [dbo].[Table]
(
	[ID] INT NOT NULL PRIMARY KEY IDENTITY, 
    [recipyName] NVARCHAR(50) NOT NULL, 
    [subBy] NVARCHAR(50) NOT NULL, 
    [ing1] NVARCHAR(50) NOT NULL, 
    [ing2] NVARCHAR(50) NULL, 
    [ing3] NVARCHAR(50) NULL, 
    [ing4] NVARCHAR(50) NULL, 
    [ing5] NVARCHAR(50) NULL, 
    [prep] NVARCHAR(50) NULL, 
    [note] NVARCHAR(MAX) NULL
)
