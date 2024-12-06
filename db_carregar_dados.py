
#%%
import pandas as pd
from sqlalchemy import create_engine
import os

DATABASE_URL = os.getenv('DATABASE_URL', 'postgresql://postgres:postgres@localhost:5432/nba_stats')
engine = create_engine(DATABASE_URL)

df = pd.read_csv('nba_players_stats_20years.csv')

column_mapping = {
    'SEASON': 'season',
    'PLAYER_ID': 'player_id',
    'RANK': 'rank',
    'PLAYER': 'player',
    'TEAM_ID': 'team_id',
    'TEAM': 'team',
    'GP': 'games_played',
    'MIN': 'minutes',
    'FGM': 'field_goals_made',
    'FGA': 'field_goals_attempted',
    'FG_PCT': 'field_goal_percentage',
    'FG3M': 'three_points_made',
    'FG3A': 'three_points_attempted',
    'FG3_PCT': 'three_point_percentage',
    'FTM': 'free_throws_made',
    'FTA': 'free_throws_attempted',
    'FT_PCT': 'free_throw_percentage',
    'OREB': 'offensive_rebounds',
    'DREB': 'defensive_rebounds',
    'REB': 'total_rebounds',
    'AST': 'assists',
    'STL': 'steals',
    'BLK': 'blocks',
    'TOV': 'turnovers',
    'PF': 'personal_fouls',
    'PTS': 'points',
    'EFF': 'efficiency',
    'AST_TOV': 'assist_to_turnover_ratio',
    'STL_TOV': 'steal_to_turnover_ratio'
}
#%%

df['id'] = df.index	
df
#%%
df.drop(columns=['Unnamed: 0'], axis=1)
#%%
df = df.rename(columns=column_mapping)
#%%
cols = ['id'] + [col for col in df.columns if col != 'id']
df = df[cols]
#%%

#%%
df
#%%
df.drop(columns=['Unnamed: 0'], axis=1)
df.to_sql('nba_players_stats', engine, if_exists='replace', index=False)


