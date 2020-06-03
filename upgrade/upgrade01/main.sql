SET TIMING ON

DEFINE USER_NAME = &&1

SPOOL UPGRADE01.LOG

SET SERVEROUTPUT ON

connect &&USER_NAME/oracle 

PROMPT Creating tables
PROMPT ---------------

PROMPT Call to @create_table_coaches.sql
@create_table_coaches.sql &&USER_NAME

PROMPT Call to @create_table_coaches_history.sql
@create_table_coaches_history.sql &&USER_NAME

PROMPT Call to @create_table_events.sql
@create_table_events.sql &&USER_NAME

PROMPT Call to @create_table_leagues.sql
@create_table_leagues.sql &&USER_NAME

PROMPT Call to @create_table_matches.sql
@create_table_matches.sql &&USER_NAME

PROMPT Call to @create_table_players.sql
@create_table_players.sql &&USER_NAME

PROMPT Call to @create_table_players_history.sql
@create_table_players_history.sql &&USER_NAME

PROMPT Call to @create_table_stadiums.sql
@create_table_stadiums.sql &&USER_NAME

PROMPT Call to @create_table_stages.sql
@create_table_stages.sql &&USER_NAME

PROMPT Call to @create_table_teams.sql
@create_table_teams.sql &&USER_NAME

PROMPT Call to @create_table_teams_in_matches.sql
@create_table_teams_in_matches.sql &&USER_NAME

PROMPT Call to @create_table_tickets_info.sql
@create_table_tickets_info.sql &&USER_NAME

PROMPT ---------------
PROMPT Creating indexes
PROMPT ---------------

PROMPT Call to @create_indexes.sql
@create_indexes.sql &&USER_NAME

PROMPT ---------------
PROMPT Creating constraints
PROMPT ---------------

PROMPT Call to @create_constraints.sql
@create_constraints.sql &&USER_NAME

PROMPT ---------------

SET SERVEROUTPUT OFF
SPOOL OFF

UNDEFINE USER_NAME