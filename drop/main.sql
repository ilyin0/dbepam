SET TIME ON
SET TIMING ON

PROMPT Enter username
DEFINE USER_NAME = &&1

SPOOL DROP_SCHEMA.LOG

SET SERVEROUTPUT ON
PROMPT Username calling to drop_user: &&USER_NAME
PROMPT

@drop_user.sql &&USER_NAME

PROMPT Username caling to drop_tablspace: '&&USER_NAME._DATA'
PROMPT

@drop_tablespace.sql &&USER_NAME

SET SERVEROUTPUT OFF

UNDEFINE USER_NAME

SPOOL OFF