DEFINE USER_NAME = &&1
DEFINE DATA_TABLESPACE_NAME = '&&USER_NAME._DATA'

CREATE TABLE "COACHES_HISTORY" (
	"ID" NUMBER GENERATED ALWAYS AS IDENTITY INCREMENT BY 1 START WITH 1 MINVALUE 1 NOT NULL,
	"STAGE_ID" NUMBER NOT NULL,
	"TEAM_ID" NUMBER NOT NULL,
	"COACH_ID" NUMBER NOT NULL) TABLESPACE &&DATA_TABLESPACE_NAME
/