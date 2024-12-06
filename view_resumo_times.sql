create or replace view resumo_times as
select
	season,
	team,
	count(distinct player) as num_players,
	round(avg(points::decimal / games_played), 2) as avg_team_ppg,
    round(avg(total_rebounds::decimal / games_played), 2) as avg_team_rpg,
    round(avg(assists::decimal / games_played), 2) as avg_team_apg
from nba_players_stats nps 
group by season, team;

select * 
from resumo_times;