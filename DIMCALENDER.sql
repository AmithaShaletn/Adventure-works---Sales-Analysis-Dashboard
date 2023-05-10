/****** Cleanse DIM DateTable ******/
--SELECT  [DateKey]
      ,[FullDateAlternateKey]
      --[DayNumberOfWeek]
      ,[EnglishDayNameOfWeek]
      --[SpanishDayNameOfWeek]
      --[FrenchDayNameOfWeek]
      --[DayNumberOfMonth]
      --[DayNumberOfYear]
      ,[WeekNumberOfYear]
      ,[EnglishMonthName]
      --[SpanishMonthName]
      --[FrenchMonthName]
      ,[MonthNumberOfYear]
      ,[CalendarQuarter]
      ,[CalendarYear]
      --[CalendarSemester]
      --[FiscalQuarter]
      --[FiscalYear]
      --[FiscalSemester]
  --FROM [AdventureWorksDW2019].[dbo].[DimDate]--

  ---use codebeautifies and rerun---

  SELECT [DateKey] ,
  [FullDateAlternateKey] As Date,
  [EnglishDayNameOfWeek] As Day,
  [WeekNumberOfYear] As WeekNr,
  [EnglishMonthName] As Month,
  Left ([EnglishMonthName],3) As MonthShort,
  [MonthNumberOfYear] As MonthNo ,
  [CalendarQuarter] As Quarter,
  [CalendarYear] As Year
  FROM 
  [AdventureWorksDW2019].[dbo].[DimDate]
  -- Request was 2021 to 2 years back in time---
  Where CalendarYear >=2019
  