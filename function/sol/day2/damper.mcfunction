$execute store result storage temp line[$(i)] int 1 run scoreboard players get BUFF VAR
$scoreboard players set BUFF VAR $(v)

execute store result score SAFE VAR run function aoc:sol/day2/is_safe {in:"temp line"}
scoreboard players operation ANYSAFE VAR += SAFE VAR