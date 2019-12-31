--------------------------------------------------------------------------------
--------------------------------------Create Tables-----------------------------
--------------------------------------------------------------------------------

-- Example Table 
CREATE TABLE [dbo].[sx080229sggrp](
 [#Date] [int] NULL,
 [Instrument Code] [varchar](50) NULL,
 [Description] [varchar](50) NULL,
 [SEDOL code] [varchar](50) NULL,
 [Country_ISO] [varchar](50) NULL,
 [Industry Level 1] [varchar](50) NULL,
 [Industry Level 2] [varchar](50) NULL,
 [Currency] [varchar](50) NULL,
 [Shares] [varchar](50) NULL,
[RowNo] int null ) ON [PRIMARY]

-- Example table to create Clustered Index (Same as previous one)
CREATE TABLE [dbo].[sx080229sggrp_CI](
 [#Date] [int] NOT NULL,
 [Instrument Code] [varchar](50) NOT NULL,
 [Description] [varchar](50) NULL,
 [SEDOL code] [varchar](50) NULL,
 [Country_ISO] [varchar](50) NULL,
 [Industry Level 1] [varchar](50) NULL,
 [Industry Level 2] [varchar](50) NULL,
 [Currency] [varchar](50) NULL,
 [Shares] [varchar](50) NULL,
[RowNo] int null ) ON [PRIMARY]

-- -- Example table to create Non-Clustered Index (Same)
CREATE TABLE [dbo].[sx080229sggrp_NCI](
 [#Date] [int] NOT NULL,
 [Instrument Code] [varchar](50) NOT NULL,
 [Description] [varchar](50) NULL,
 [SEDOL code] [varchar](50) NULL,
 [Country_ISO] [varchar](50) NULL,
 [Industry Level 1] [varchar](50) NULL,
 [Industry Level 2] [varchar](50) NULL,
 [Currency] [varchar](50) NULL,
 [Shares] [varchar](50) NULL,
[RowNo] int null ) ON [PRIMARY]

-----------------------------------------------------------------------------------------------------
----------------------------------------Make Cluster index-------------------------------------------
-----------------------------------------------------------------------------------------------------
ALTER TABLE [dbo].[sx080229sggrp_CI] ADD  CONSTRAINT [PK_sx080229sggrp_CI] PRIMARY KEY CLUSTERED 
(
        [#Date] ASC,
        [Instrument Code] ASC
) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]

-----------------------------------------------------------------------------------------------------
----------------------------------------Make Non-Cluster index---------------------------------------
-----------------------------------------------------------------------------------------------------

ALTER TABLE sx080229sggrp_NCI ADD CONSTRAINT PK_DateInst_NCI PRIMARY KEY NONCLUSTERED 
(
       #Date ASC, 
       [Instrument code] ASC
)


-----------------------------------------------------------------------------------------------------
----------------------------------------Data Population----------------------------------------------
-----------------------------------------------------------------------------------------------------
--  Inserting more records (from existing) for making a huge table

INSERT  INTO sx080229sggrp 
        (   #Date, [Instrument Code], [Description], [SEDOL code], Country_ISO, [Industry Level 1], 
        [Industry Level 2], Currency, Shares    )
SELECT  REPLACE(CONVERT(VARCHAR(10), #Date) ,8,7) NewDate , 
        REPLACE(CONVERT(VARCHAR(10), [Instrument Code] ) ,'S','M')  [New Instrument Code]
        , 'Old ' + [Description] Description , [SEDOL code], Country_ISO, [Industry Level 1]
        ,[Industry Level 2], Currency, Shares       -- #Date, [Instrument Code]      
FROM    sx080229sggrp

INSERT  INTO sx080229sggrp 
         (   #Date, [Instrument Code], [Description], [SEDOL code], Country_ISO, [Industry Level 1], 
         [Industry Level 2], Currency, Shares    )
SELECT  REPLACE(CONVERT(VARCHAR(10), #Date) ,8,9) NewDate , 
        REPLACE(CONVERT(VARCHAR(10), [Instrument Code] ) ,'M','N')  [New Instrument Code]
        , 'New ' + [Description] Description , [SEDOL code], Country_ISO, [Industry Level 1]
        ,[Industry Level 2], Currency, Shares        -- #Date, [Instrument Code]      
FROM    sx080229sggrp

INSERT  INTO sx080229sggrp 
        (   #Date, [Instrument Code], [Description], [SEDOL code], Country_ISO, [Industry Level 1], 
        [Industry Level 2], Currency, Shares    )
SELECT  REPLACE(CONVERT(VARCHAR(10), #Date) ,8,5) NewDate , 
        REPLACE(CONVERT(VARCHAR(10), [Instrument Code] ) ,'S','R')  [New Instrument Code]
        , 'Int ' + [Description] Description , [SEDOL code], Country_ISO, [Industry Level 1]
        ,[Industry Level 2], Currency, Shares        -- #Date, [Instrument Code]      
FROM    sx080229sggrp
WHERE   #Date LIKE '%2008%'

-----------------------------------------------------------------------------------------------------
---------------------------------2. Deleting duplicate records --------------------------------------
-----------------------------------------------------------------------------------------------------
DELETE  A
-- SELECT  A.[#Date], A.[Instrument Code], A.Description, B.[#Date], B.[Instrument Code]
FROM    sx080229sggrp A
        INNER JOIN 
        (  SELECT [#Date], [Instrument Code]
            FROM    sx080229sggrp
            group   BY [#Date], [Instrument Code]
            HAVING  COUNT(#Date) > 1
        )B        ON A.[#Date]= B.[#Date] AND A.[Instrument Code]= B.[Instrument Code]
  
      
--3. Poluating same data from sx080229sggrp to sx080229sggrp_CI and sx080229sggrp_NCI 
INSERT  INTO sx080229sggrp_CI
         (   #Date, [Instrument Code], [Description], [SEDOL code], Country_ISO, [Industry Level 1], 
         [Industry Level 2], Currency, Shares    )
SELECT  #Date, [Instrument Code], [Description], [SEDOL code], Country_ISO, [Industry Level 1], 
        [Industry Level 2], Currency, Shares   
FROM    sx080229sggrp

INSERT  INTO sx080229sggrp_NCI
        (   #Date, [Instrument Code], [Description], [SEDOL code], Country_ISO, [Industry Level 1], 
        [Industry Level 2], Currency, Shares    )
SELECT  #Date, [Instrument Code], [Description], [SEDOL code], Country_ISO, [Industry Level 1], 
        [Industry Level 2], Currency, Shares   
FROM    sx080229sggrp 


-----------------------------------------------------------------------------------------------------
--------------------------------------- Queries: Execution Plan -------------------------------------
-----------------------------------------------------------------------------------------------------

----------*************************Table without Index *******************---------------------------

SELECT  *       -- Table Scan (14s)
FROM    sx080229sggrp

SELECT  *   -- Table Scan
FROM    sx080229sggrp
WHERE   [#Date]=20080201  AND  [Instrument Code] = 'S80323'

SELECT  *   -- Table Scan
FROM    sx080229sggrp
WHERE   [#Date] BETWEEN 20080201  AND 20080206
        AND  [Instrument Code] BETWEEN 'S80323' AND 'S90907'

----------*************************Clustered Index Table *******************---------------------------

SELECT  *       -- Clustered Index Scan (14s)
FROM    sx080229sggrp_CI

SELECT  #Date, [Instrument Code]   -- Clustered Index Seek
FROM    sx080229sggrp_CI
WHERE   [#Date]=20080201  AND  [Instrument Code] = 'S80323'

SELECT  #Date, [Instrument Code]    -- Clustered Index Seek
FROM    sx080229sggrp_CI
WHERE   [#Date] BETWEEN 20080201  AND 20080206
        AND  [Instrument Code] BETWEEN 'S80323' AND 'S90907'

SELECT  *   -- Clustered Index Seek
FROM    sx080229sggrp_CI
WHERE   [#Date]=20080201  AND  [Instrument Code] = 'S80323'

SELECT  *   -- Clustered Index Seek
FROM    sx080229sggrp_CI
WHERE   [#Date] BETWEEN 20080201  AND 20080206
        AND  [Instrument Code] BETWEEN 'S80323' AND 'S90907'

----------*************************Non Clustered Index Table *******************-----------------------

SELECT  #Date, [Instrument Code]   -- Index Seek 
FROM    sx080229sggrp_nCI
WHERE   [#Date]=20080201  AND  [Instrument Code] = 'S80323'

SELECT  #Date, [Instrument Code]  -- Index Seek 
FROM    sx080229sggrp_NCI
WHERE   [#Date] BETWEEN 20080201  AND 20080206
        AND  [Instrument Code] BETWEEN 'S80323' AND 'S90907'

SELECT  *   -- Index Seek + RIDLookup (Nested Loops Inner join)
FROM    sx080229sggrp_nCI
WHERE   [#Date]=20080201  AND  [Instrument Code] = 'S80323'

SELECT  *   --Table Scan 
FROM    sx080229sggrp_NCI
WHERE   [#Date] BETWEEN 20080201  AND 20080206
        AND  [Instrument Code] BETWEEN 'S80323' AND 'S90907'


-----------------------------------------------------------------------------------------------------
--------------------------------------- Queries: Single Join  ---------------------------------------
-----------------------------------------------------------------------------------------------------
-- Without Index
SELECT  *   -- 26 SEC
FROM    sx080229sggrp A
        INNER JOIN sx080229sggrp B 
        ON A.#Date= B.#Date AND A.[Instrument Code]= B.[Instrument Code]

-- Clustered Index
SELECT  *   -- 24S
FROM    sx080229sggrp_CI A
        INNER JOIN sx080229sggrp_CI B 
        ON A.#Date= B.#Date AND A.[Instrument Code]= B.[Instrument Code]

SELECT  *   -- 24S
FROM    sx080229sggrp_NCI A
        INNER JOIN sx080229sggrp_NCI B 
        ON A.#Date= B.#Date AND A.[Instrument Code]= B.[Instrument Code]

---------------------- Double Join  -------------------------
-- Without Index
SELECT  *   --31 SEC
FROM    sx080229sggrp A
        INNER JOIN sx080229sggrp B 
        ON A.#Date= B.#Date AND A.[Instrument Code]= B.[Instrument Code]
        INNER JOIN sx080229sggrp C 
        ON A.#Date= C.#Date AND A.[Instrument Code]= C.[Instrument Code]

-- Clustered Index
SELECT  *   -- 30S
FROM    sx080229sggrp_CI A
        INNER JOIN sx080229sggrp_CI B 
        ON A.#Date= B.#Date AND A.[Instrument Code]= B.[Instrument Code]
        INNER JOIN sx080229sggrp_CI C 
        ON A.#Date= C.#Date AND A.[Instrument Code]= C.[Instrument Code]

SELECT  *   -- 30S
FROM    sx080229sggrp_NCI A
        INNER JOIN sx080229sggrp_NCI B 
        ON A.#Date= B.#Date AND A.[Instrument Code]= B.[Instrument Code]
        INNER JOIN sx080229sggrp_CI C 
        ON A.#Date= C.#Date AND A.[Instrument Code]= C.[Instrument Code]


---------------------- Tripple Join  -------------------------
-- Without Index
SELECT  *   --1 MIN 10 SEC
FROM    sx080229sggrp A
        INNER JOIN sx080229sggrp B 
        ON A.#Date= B.#Date AND A.[Instrument Code]= B.[Instrument Code]
        INNER JOIN sx080229sggrp C 
        ON A.#Date= C.#Date AND A.[Instrument Code]= C.[Instrument Code]  
        INNER JOIN sx080229sggrp D 
        ON A.#Date= D.#Date AND A.[Instrument Code]= D.[Instrument Code] 
                
-- Clustered Index
SELECT  *   --38S
FROM    sx080229sggrp_CI A
        INNER JOIN sx080229sggrp_CI B 
        ON A.#Date= B.#Date AND A.[Instrument Code]= B.[Instrument Code]
        INNER JOIN sx080229sggrp_CI C 
        ON A.#Date= C.#Date AND A.[Instrument Code]= C.[Instrument Code]
        INNER JOIN sx080229sggrp_CI D 
        ON A.#Date= D.#Date AND A.[Instrument Code]= D.[Instrument Code]
        
SELECT  *   --38S
FROM    sx080229sggrp_NCI A
        INNER JOIN sx080229sggrp_NCI B 
        ON A.#Date= B.#Date AND A.[Instrument Code]= B.[Instrument Code]
        INNER JOIN sx080229sggrp_CI C 
        ON A.#Date= C.#Date AND A.[Instrument Code]= C.[Instrument Code]
        INNER JOIN sx080229sggrp_CI D 
        ON A.#Date= D.#Date AND A.[Instrument Code]= D.[Instrument Code]
        
        