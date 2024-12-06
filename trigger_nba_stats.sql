create or replace function validar_status_jogadores()
returns trigger as $$
begin 
	if new.three_point_percentage < 0 or new.three_point_percentage > 1 then
		raise exception 'Coluna three_point_percentage deve ter valores entre 0 e 1';
	end if;
	if new.three_points_attemped < three_points_made then
		raise exception 'Os valores da coluna three_points_attemped tem que ser maiores ou iguais à coluna three_points_made';
	end if;
	return new;	
end;
$$ language plpgsql;

create or replace trigger trigger_validar_colunas
before insert or update on nba_players_stats
for each row 
execute function validar_status_jogadores();
