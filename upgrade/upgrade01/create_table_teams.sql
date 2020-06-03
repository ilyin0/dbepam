CREATE TABLE "TEAMS" (
	"ID" NUMBER GENERATED ALWAYS AS IDENTITY INCREMENT BY 1 START WITH 1 MINVALUE 1 NOT NULL,
	"TEAM_NAME" VARCHAR2(255) NOT NULL,
	"TEAM_FOUNDATION_YEAR" VARCHAR2(255) NOT NULL,
	"STADIUM_ID" NUMBER NOT NULL);