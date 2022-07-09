CREATE PROCEDURE [etl].[load_chart_from_staging]
AS
	
 MERGE dbo.chart AS chart_target
    USING dbo.chart_staging AS chart_source
        ON chart_source.[date] = chart_target.[date] 
			and chart_source.artist = chart_target.artist 
			and chart_source.[rank] = chart_target.[rank] 
			and chart_source.song = chart_target.song 
    WHEN MATCHED THEN UPDATE
        SET [date] = chart_source.[date]
		  ,[rank] = chart_source.[rank]
		  ,[song] = chart_source.[song]
		  ,[artist] = chart_source.[artist]
		  ,[last-week] = chart_source.[last-week]
		  ,[peak-rank] = chart_source.[peak-rank]
		  ,[weeks-on-board] = chart_source.[weeks-on-board]
    WHEN NOT MATCHED THEN 
        INSERT 
           ([date]
           ,[rank]
           ,[song]
           ,[artist]
           ,[last-week]
           ,[peak-rank]
           ,[weeks-on-board])
		 VALUES
			   (chart_source.[date],
			   chart_source.[rank],
			   chart_source.[song],
			   chart_source.[artist],
			   chart_source.[last-week],
			   chart_source.[peak-rank],
			   chart_source.[weeks-on-board]);


RETURN 0
