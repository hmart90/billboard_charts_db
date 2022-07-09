CREATE TABLE [dbo].[chart_staging]
(
	[chart_staging_id] INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    [date]           VARCHAR (500) NULL,
    [rank]           VARCHAR (500) NULL,
    [song]           VARCHAR (500) NULL,
    [artist]         VARCHAR (500) NULL,
    [last-week]      VARCHAR (500) NULL,
    [peak-rank]      VARCHAR (500) NULL,
    [weeks-on-board] VARCHAR (500) NULL
)
