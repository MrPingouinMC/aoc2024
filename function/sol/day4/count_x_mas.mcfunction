
#{"X":"red_wool","M":"lime_wool","A":"cyan_wool","S":"yellow_wool"}
execute unless block ~ ~ ~ cyan_wool run return 0
scoreboard players set MAS VAR 0
execute if block ~ ~1 ~1 yellow_wool if block ~ ~-1 ~-1 lime_wool run scoreboard players add MAS VAR 1
execute if block ~ ~1 ~1 lime_wool if block ~ ~-1 ~-1 yellow_wool run scoreboard players add MAS VAR 1

execute if block ~ ~-1 ~1 yellow_wool if block ~ ~1 ~-1 lime_wool run scoreboard players add MAS VAR 1
execute if block ~ ~-1 ~1 lime_wool if block ~ ~1 ~-1 yellow_wool run scoreboard players add MAS VAR 1

execute if score MAS VAR matches 2 run scoreboard players add SOL VAR 1

