DEFINE USER_NAME = &&1
DEFINE IDX_TABLESPACE_NAME = '&&USER_NAME._IDX'

CREATE INDEX IX_COACHES_HISTORY_STAGE_ID ON "COACHES_HISTORY" (STAGE_ID) TABLESPACE &&IDX_TABLESPACE_NAME
/
CREATE INDEX IX_COACHES_HISTORY_TEAM_ID ON "COACHES_HISTORY" (TEAM_ID) TABLESPACE &&IDX_TABLESPACE_NAME
/
CREATE INDEX IX_COACHES_HISTORY_COACH_ID ON "COACHES_HISTORY" (COACH_ID) TABLESPACE &&IDX_TABLESPACE_NAME
/
CREATE INDEX IX_EVENTS_PLAYER_ID ON "EVENTS" (PLAYER_ID) TABLESPACE &&IDX_TABLESPACE_NAME
/
CREATE INDEX IX_EVENTS_MATCH_ID ON "EVENTS" (MATCH_ID) TABLESPACE &&IDX_TABLESPACE_NAME
/
CREATE INDEX IX_MATCHES_STADIUM_ID ON "MATCHES" (STADIUM_ID) TABLESPACE &&IDX_TABLESPACE_NAME
/
CREATE INDEX IX_MATCHES_STAGE_ID ON "MATCHES" (STAGE_ID) TABLESPACE &&IDX_TABLESPACE_NAME
/
CREATE INDEX IX_PLAYERS_HISTORY_PLAYER_ID ON "PLAYERS_HISTORY" (PLAYER_ID) TABLESPACE &&IDX_TABLESPACE_NAME
/
CREATE INDEX IX_PLAYERS_HISTORY_STAGE_ID ON "PLAYERS_HISTORY" (STAGE_ID) TABLESPACE &&IDX_TABLESPACE_NAME
/
CREATE INDEX IX_PLAYERS_HISTORY_TEAM_ID ON "PLAYERS_HISTORY" (TEAM_ID) TABLESPACE &&IDX_TABLESPACE_NAME
/
CREATE INDEX IX_STAGES_LEAGUE_ID ON "STAGES" (LEAGUE_ID) TABLESPACE &&IDX_TABLESPACE_NAME
/
CREATE INDEX IX_TEAMS_STADIUM_ID ON "TEAMS" (STADIUM_ID) TABLESPACE &&IDX_TABLESPACE_NAME
/
CREATE INDEX IX_TEAMS_IN_MATCHES_TEAM_ID ON "TEAMS_IN_MATCHES" (TEAM_ID) TABLESPACE &&IDX_TABLESPACE_NAME
/
CREATE INDEX IX_TEAMS_IN_MATCHES_MATCH_ID ON "TEAMS_IN_MATCHES" (MATCH_ID) TABLESPACE &&IDX_TABLESPACE_NAME
/
CREATE INDEX IX_TICKETS_INFO_MATCH_ID ON "TICKETS_INFO" (MATCH_ID) TABLESPACE &&IDX_TABLESPACE_NAME
/