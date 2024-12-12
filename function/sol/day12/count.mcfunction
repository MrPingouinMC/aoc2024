$scoreboard players set V VAR $(v)

scoreboard players set AREA VAR 0
scoreboard players set P VAR 0

data modify storage temp sides set value []
data modify storage temp sidem set value {}
$function aoc:sol/day12/check {i:$(i),j:$(j),dx:0,dy:0}

scoreboard players set DF VAR 0
execute if score PART AOC matches 2 run function iter:array {in:"temp sides",f:"aoc:sol/day12/count_sides"}
scoreboard players operation AREA VAR *= P VAR
scoreboard players operation SOL VAR += AREA VAR


