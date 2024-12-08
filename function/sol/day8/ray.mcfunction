data modify storage temp macro set value {i:0,j:0}
execute store result storage temp macro.i int 1 run scoreboard players get AX VAR
execute store result storage temp macro.j int 1 run scoreboard players get AY VAR

execute store result score F VAR run function aoc:sol/day8/place with storage temp macro

scoreboard players operation AX VAR -= DX VAR
scoreboard players operation AY VAR -= DY VAR

execute if score PART AOC matches 2 if score F VAR matches 1 run function aoc:sol/day8/ray