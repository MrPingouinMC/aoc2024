$data modify storage temp line set value $(v)

execute store result score SAFE VAR run function aoc:sol/day2/is_safe {in:"temp line"}
execute if score SAFE VAR matches 1 run scoreboard players add SOL VAR 1