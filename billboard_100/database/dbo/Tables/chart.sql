CREATE TABLE [dbo].[chart]
(
	[chart_id] INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    [date]           DATE          NOT NULL,
    [rank]           INT           NOT NULL,
    [song]           VARCHAR (500) NOT NULL,
    [artist]         VARCHAR (500) NOT NULL,
    [last-week]      INT           NULL,
    [peak-rank]      INT           NOT NULL,
    [weeks-on-board] INT           NOT NULL 
)
