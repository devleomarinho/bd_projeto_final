with player_averages AS (
    SELECT 
        player,
        season,
        ROUND(CAST(points AS DECIMAL) / games_played, 2) as ppg,
        ROUND(CAST(total_rebounds AS DECIMAL) / games_played, 2) as rpg,
        ROUND(CAST(assists AS DECIMAL) / games_played, 2) as apg
    FROM nba_players_stats
    WHERE games_played >= 10
),
player_rankings AS (
    SELECT 
        player,
        season,
        ppg,
        RANK() OVER (PARTITION BY season ORDER BY ppg DESC) as ranking_pontuacao
    FROM player_averages
)
SELECT * FROM player_rankings
WHERE ranking_pontuacao <= 5
ORDER BY season, ranking_pontuacao