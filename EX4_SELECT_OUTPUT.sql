SET LINESIZE 32000;


SPOOL C:\Users\aniruddhar\Desktop\SP_DQ_TRASH\Out.txt;

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
