SELECT ia_horse_running_database.records.ID as id,
       ia_horse_running_database.records.Place as finishing_position,
       ia_horse_running_database.records.Horse_rate as horse_number, 
       ia_horse_running_database.records.Horse_ID as horse_id, 
       ia_horse_running_database.horses.name as horse_name, 
       ia_horse_running_database.records.weight as declared_horse_weight, 
       ia_horse_running_database.records.Draw as draw, 
       ia_horse_running_database.records.Age as age,
       ia_horse_running_database.records.jockey_ID as jockey_id, 
       ia_horse_running_database.records.jockey as jockey,
       ia_horse_running_database.jockeys_stats.Total_races as total_races_j,
       ia_horse_running_database.jockeys_stats.Wins as jockey_wins,
       ia_horse_running_database.jockeys_stats.Percentage_wins as jockey_percentage_wins,
       ia_horse_running_database.records.trainer_ID as trainer_id,  
       ia_horse_running_database.records.trainer as trainer,
       ia_horse_running_database.trainers_stats.Total_races as total_races_t,
       ia_horse_running_database.trainers_stats.Wins as trainer_wins,
       ia_horse_running_database.trainers_stats.Percentage_wins as trainer_percentage_wins,
       ia_horse_running_database.records.fav as fav,
       ia_horse_running_database.records.SP as sp,
       ia_horse_running_database.records.Distance_btn as length_behind_winner,
       ia_horse_running_database.records.Distance_btn_total as length_behind_winner_total,
       ia_horse_running_database.jockeys_stats.Hurdle_rate as win_odds,
       ia_horse_running_database.records.Race_ID as race_id
FROM 
    (((ia_horse_running_database.records
	 inner join ia_horse_running_database.horses on ia_horse_running_database.records.Horse_ID = ia_horse_running_database.horses.id)
     inner join ia_horse_running_database.jockeys_stats on ia_horse_running_database.records.jockey_ID = ia_horse_running_database.jockeys_stats.Jockey_ID)
     inner join ia_horse_running_database.trainers_stats on ia_horse_running_database.records.trainer_ID = ia_horse_running_database.trainers_stats.trainer_ID)
where ia_horse_running_database.records.ID between 4925843 and 5064056
order by id ASC
