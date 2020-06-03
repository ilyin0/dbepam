CREATE TABLE "PLAYERS" (
	"ID" NUMBER GENERATED ALWAYS AS IDENTITY INCREMENT BY 1 START WITH 1 MINVALUE 1 NOT NULL,
	"PLAYER_ROLE" VARCHAR2(255) NOT NULL,
	"PLAYER_NAME" VARCHAR2(255) NOT NULL,
	"PLAYER_NUMBER" VARCHAR2(255),
	"PLAYER_BIRTH_YEAR" NUMBER);