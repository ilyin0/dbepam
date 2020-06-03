DEFINE USER_NAME = &&1
DEFINE TBS_LOCATION = &&2
DEFINE DATA_TBS_NAME = '&&USER_NAME._DATA'
DEFINE DATA_FILENAME =  '&&TBS_LOCATION.&&DATA_TBS_NAME..DBF'
DEFINE INDEX_NAME = '&&USER_NAME._IDX'
DEFINE INDEX_FILENAME = '&&TBS_LOCATION.&&INDEX_NAME..DBF'

PROMPT &&DATA_TBS_NAME
PROMPT &&DATA_FILENAME

CREATE TABLESPACE  "&&DATA_TBS_NAME"
    DATAFILE 
        '&&DATA_FILENAME' SIZE 10M AUTOEXTEND ON NEXT 10M MAXSIZE 10G;

CREATE TABLESPACE "&&INDEX_NAME"
    DATAFILE 
        '&&INDEX_FILENAME' SIZE 10M AUTOEXTEND ON NEXT 10M MAXSIZE 10G;

UNDEFINE TBS_LOCATION;
UNDEFINE DATA_TBS_NAME;
UNDEFINE DATA_FILENAME;
UNDEFINE INDEX_NAME;
UNDEFINE INDEX_FILENAME;