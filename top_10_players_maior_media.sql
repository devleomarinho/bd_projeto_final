SELECT 
    season,
    player,
    team,
    ROUND(CAST(points AS DECIMAL) / games_played, 2) as ppg,
    games_played
FROM nba_players_stats
WHERE games_played >= 10  
ORDER BY ppg DESC
LIMIT 10;