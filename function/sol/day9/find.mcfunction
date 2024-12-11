$scoreboard players set T VAR $(i)

data modify storage temp macro.day9 set value {i:-1}
execute store result storage temp macro.day9.i int 1 run scoreboard players get T VAR
function aoc:sol/day9/findm with storage temp macro.day9
execute if score TV VAR matches 0 run return 1

execute if score TV VAR < VI VAR if score TV VAR < TMIN VAR run scoreboard players set VF VAR 1
execute if score TV VAR < VI VAR if score TV VAR < TMIN VAR run scoreboard players operation DMIN VAR = T VAR
execute if score TV VAR < VI VAR if score TV VAR < TMIN VAR run scoreboard players operation TMIN VAR = TV VAR