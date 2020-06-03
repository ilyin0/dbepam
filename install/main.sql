SET TIME ON
SET TIMING ON
SET APPINFO ON

DEFINE USER_NAME = &&1
DEFINE TBS_LOCATION =  &&2
 
SPOOL INSTALL_SCHEMA.LOG

SET SERVEROUTPUT ON

PROMPT ----------
PROMPT User to create: &&USER_NAME
PROMPT
PROMPT Datafile location: &&TBS_LOCATION
PROMPT 
PROMPT Executing create_tablespace.sql for data tablespace
PROMPT ----------
@create_tablespace.sql &&USER_NAME &&TBS_LOCATION  
PROMPT

PROMPT ----------
PROMPT Executing create_user.sql 
PROMPT ----------
@create_user.sql &&USER_NAME '&&USER_NAME._DATA' 

PROMPT ----------
PROMPT Calling grant.sql for &&USER_NAME
PROMPT ----------
@grants.sql &&USER_NAME

SET SERVEROUTPUT OFF

UNDEFINE USER_NAME;
UNDEFINE TBS_LOCATION;

SPOOL OFF