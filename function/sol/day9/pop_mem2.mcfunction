
scoreboard players set TMIN VAR 9999999 
scoreboard players set DMIN VAR 9999999
function iter:tool/for/range_sv {f:"aoc:sol/day9/find",a:"VD VAR",b:10}

execute if score VF VAR matches 0 run return 1
execute if score TMIN VAR >= VI VAR run return 1

data modify storage temp macro.day9 set value {i:-1}
execute store result storage temp macro.day9.i int 1 run scoreboard players get DMIN VAR
execute if score TMIN VAR matches 0.. run function aoc:sol/day9/remove with storage temp macro.day9


scoreboard players operation NINDEX VAR = TMIN VAR
scoreboard players operation NSIZE VAR = DMIN VAR

scoreboard players operation NINDEX VAR += VD VAR
scoreboard players operation NSIZE VAR -= VD VAR

scoreboard players operation VI VAR = TMIN VAR
execute if score NSIZE VAR matches 0 run return 1 

data modify storage temp macro.day9 set value {index:-1,size:-1}
execute store result storage temp macro.day9.index int 1 run scoreboard players get NINDEX VAR
execute store result storage temp macro.day9.size int 1 run scoreboard players get NSIZE VAR
execute if score NSIZE VAR matches 1.. run function aoc:sol/day9/push with storage temp macro.day9
