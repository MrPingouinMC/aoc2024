
execute if block ^ ^ ^1 black_wool rotated ~90 ~ run return run function aoc:sol/day6/loop
execute if block ~ ~ ~ gray_wool run scoreboard players add SOL VAR 1
execute if block ~ ~ ~ gray_wool run setblock ~ ~ ~ yellow_wool
execute if block ~ ~ ~ #minecraft:wool positioned ^ ^ ^1 run function aoc:sol/day6/loop