DEFINE USER_NAME = &&1
DEFINE DATA_TABLESPACE_NAME = '&&USER_NAME._DATA'

CREATE TABLE "STADIUMS" (
	"ID" NUMBER GENERATED ALWAYS AS IDENTITY INCREMENT BY 1 START WITH 1 MINVALUE 1 NOT NULL,
	"STADIUM_NAME" VARCHAR2(255) NOT NULL,
	"STADIUM_CAPACITY" NUMBER NOT NULL,
	"CITY_NAME" VARCHAR2(255) NOT NULL) TABLESPACE &&DATA_TABLESPACE_NAME
/