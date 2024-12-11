execute if block ~ ~ ~ red_wool run scoreboard players add SOL VAR 1
execute if score PART AOC matches 1 if block ~ ~ ~ red_wool run return run setblock ~ ~ ~ pink_wool
execute if block ~ ~ ~ gray_wool run return 1
execute if block ~ ~ ~ pink_wool run return 1

execute if score PART AOC matches 1 run setblock ~ ~ ~ gray_wool
execute if block ~1 ~1 ~ #minecraft:wool positioned ~1 ~1 ~ if block ~ ~1 ~ air run function aoc:sol/day10/start_loop
execute if block ~-1 ~1 ~ #minecraft:wool positioned ~-1 ~1 ~ if block ~ ~1 ~ air run function aoc:sol/day10/start_loop
execute if block ~ ~1 ~1 #minecraft:wool positioned ~ ~1 ~1 if block ~ ~1 ~ air run function aoc:sol/day10/start_loop
execute if block ~ ~1 ~-1 #minecraft:wool positioned ~ ~1 ~-1 if block ~ ~1 ~ air run function aoc:sol/day10/start_loop
