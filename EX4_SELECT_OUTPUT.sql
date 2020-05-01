SET WRAP OFF;

SET LINESIZE 400;
SET PAGESIZE 50;

column HEALTHPLAN format a12;
column TABLE format a5;
column COLUMNNAME format a20;
column TEST_SCENARIO format a30;
column SOURCE_COUNT format a12;
column TARGET_COUNT format a12;
column STATUS_DESC format a150;
column DQ_REMARKS format a150;

SPOOL C:\Users\aniruddhar\Desktop\SP_DQ_TRASH\Out.csv;

SELECT
HEALTHPLAN,
TABLENAME ,
COLUMNNAME ,
TEST_SCENARIO ,
SOURCE_COUNT ,
TARGET_COUNT ,
STATUS,
STATUS_DESC,
DQ_REMARKS	
FROM SYSTEM.SP_Utility_DQ_OUTPUT; 

SPOOL OFF;
