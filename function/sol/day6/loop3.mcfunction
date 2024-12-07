
execute if block ^ ^ ^ #minecraft:wool if block ^ ^ ^1 red_wool run return 0
execute if block ^ ^ ^1 black_wool run return 0
execute if block ^ ^-1 ^1 blue_wool run return 0
execute unless block ^ ^ ^1 #minecraft:wool run return 0
scoreboard players set FLAG VAR 1
scoreboard players set F VAR 0
execute positioned ^ ^ ^1 run setblock ~ ~2 ~ cyan_wool

execute positioned ^ ^ ^1 run clone ~ ~ ~ ~ ~ ~ ~ ~1 ~
execute positioned ^ ^ ^1 run setblock ~ ~ ~ black_wool

execute rotated ~90 ~ run function aoc:sol/day6/loop2

execute positioned ^ ^ ^1 run clone ~ ~1 ~ ~ ~1 ~ ~ ~ ~
execute positioned ^ ^ ^1 run fill ~ ~1 ~ ~ ~2 ~ air

setblock ^ ^-1 ^1 blue_wool

execute if score F VAR matches 1 run scoreboard players add SOL VAR 1

scoreboard players set FLAG VAR 0