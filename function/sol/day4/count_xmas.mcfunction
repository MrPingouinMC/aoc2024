
#{"X":"red_wool","M":"lime_wool","A":"cyan_wool","S":"yellow_wool"}
execute unless block ~ ~ ~ red_wool run return 0
execute if block ~ ~1 ~ lime_wool if block ~ ~2 ~ cyan_wool if block ~ ~3 ~ yellow_wool run scoreboard players add SOL VAR 1
execute if block ~ ~ ~1 lime_wool if block ~ ~ ~2 cyan_wool if block ~ ~ ~3 yellow_wool run scoreboard players add SOL VAR 1
execute if block ~ ~-1 ~ lime_wool if block ~ ~-2 ~ cyan_wool if block ~ ~-3 ~ yellow_wool run scoreboard players add SOL VAR 1
execute if block ~ ~ ~-1 lime_wool if block ~ ~ ~-2 cyan_wool if block ~ ~ ~-3 yellow_wool run scoreboard players add SOL VAR 1
execute if block ~ ~1 ~1 lime_wool if block ~ ~2 ~2 cyan_wool if block ~ ~3 ~3 yellow_wool run scoreboard players add SOL VAR 1
execute if block ~ ~-1 ~1 lime_wool if block ~ ~-2 ~2 cyan_wool if block ~ ~-3 ~3 yellow_wool run scoreboard players add SOL VAR 1
execute if block ~ ~1 ~-1 lime_wool if block ~ ~2 ~-2 cyan_wool if block ~ ~3 ~-3 yellow_wool run scoreboard players add SOL VAR 1
execute if block ~ ~-1 ~-1 lime_wool if block ~ ~-2 ~-2 cyan_wool if block ~ ~-3 ~-3 yellow_wool run scoreboard players add SOL VAR 1
