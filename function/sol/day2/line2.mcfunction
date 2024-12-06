$data modify storage temp line set value $(v)

scoreboard players set ANYSAFE VAR 0
execute store result score SAFE VAR run function aoc:sol/day2/is_safe {in:"temp line"}
scoreboard players operation ANYSAFE VAR += SAFE VAR

execute store result score BUFF VAR run data get storage temp line[0]
data remove storage temp line[0]

execute store result score SAFE VAR run function aoc:sol/day2/is_safe {in:"temp line"}
scoreboard players operation ANYSAFE VAR += SAFE VAR
function iter:array {in:"temp line",f:"aoc:sol/day2/damper"}

execute if score ANYSAFE VAR matches 1.. run scoreboard players add SOL VAR 1
