$data modify storage temp line set value $(v)

execute store result score MID VAR run data get storage temp line
scoreboard players operation MID VAR /= 2 CONST
scoreboard players set VALID VAR 1
function iter:pairs {in:"temp line",f:"aoc:sol/day5/pair"}

execute if score PART AOC matches 2 if score VALID VAR matches 0 run function iter:util/sort {in:"temp line",comp:"comp_day5"}

scoreboard players set PAGE VAR 0
execute store result score PAGE VAR run function iter:util/index {in:"temp line",i:"MID VAR"}

execute if score PART AOC matches 1 if score VALID VAR matches 0 run scoreboard players set PAGE VAR 0
execute if score PART AOC matches 2 if score VALID VAR matches 1 run scoreboard players set PAGE VAR 0
scoreboard players operation SOL VAR += PAGE VAR