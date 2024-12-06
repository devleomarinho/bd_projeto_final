CREATE TABLE nba_players_stats(
    id SERIAL PRIMARY KEY,
    season VARCHAR(7),
    player_id INTEGER,
    rank INTEGER,
    player VARCHAR(100),
    team_id INTEGER,
    team VARCHAR(3),
    games_played INTEGER,
    minutes INTEGER,
    field_goals_made INTEGER,
    field_goals_attempted INTEGER,
    field_goal_percentage DECIMAL(4,3),
    three_points_made INTEGER,
    three_points_attempted INTEGER,
    three_point_percentage DECIMAL(4,3),
    free_throws_made INTEGER,
    free_throws_attempted INTEGER,
    free_throw_percentage DECIMAL(4,3),
    offensive_rebounds INTEGER,
    defensive_rebounds INTEGER,
    total_rebounds INTEGER,
    assists INTEGER,
    steals INTEGER,
    blocks INTEGER,
    turnovers INTEGER,
    personal_fouls INTEGER,
    points INTEGER,
    efficiency DECIMAL(6,2),
    assist_to_turnover_ratio DECIMAL(4,2),
    steal_to_turnover_ratio DECIMAL(4,2)     
);


CREATE INDEX idx_player ON nba_players_stats(player);
CREATE INDEX idx_season ON nba_players_stats(season);
CREATE INDEX idx_team ON nba_players_stats(team);