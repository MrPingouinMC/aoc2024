execute unless block ~ ~ ~ #minecraft:wool run return 0

execute if score FLAG VAR matches 1 if block ^ ^ ^ brown_wool run return run scoreboard players set F VAR 1

execute if block ^ ^ ^ black_wool positioned ^ ^ ^-1 rotated ~90 ~ run return run function aoc:sol/day6/loop2

execute if score FLAG VAR matches 0 run function aoc:sol/day6/loop3

execute if score FLAG VAR matches 1 if block ~ ~ ~ pink_wool run setblock ~ ~ ~ brown_wool
execute if score FLAG VAR matches 1 if block ~ ~ ~ lime_wool run setblock ~ ~ ~ pink_wool
execute if score FLAG VAR matches 1 if block ~ ~ ~ orange_wool run setblock ~ ~ ~ lime_wool
execute if score FLAG VAR matches 1 if block ~ ~ ~ yellow_wool run setblock ~ ~ ~ orange_wool
execute if block ~ ~ ~ gray_wool run setblock ~ ~ ~ yellow_wool

execute positioned ^ ^ ^1 run function aoc:sol/day6/loop2

execute if score FLAG VAR matches 1 unless block ~ ~ ~ red_wool unless block ~ ~ ~ blue_wool run setblock ~ ~ ~ yellow_wool




