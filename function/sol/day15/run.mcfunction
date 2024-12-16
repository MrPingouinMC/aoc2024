$scoreboard players set V VAR $(v)

data modify storage temp macro.move set value {dx:0,dy:0}
execute if score V VAR matches 60 run data modify storage temp macro.move.dx set value -1
execute if score V VAR matches 94 run data modify storage temp macro.move.dy set value -1
execute if score V VAR matches 62 run data modify storage temp macro.move.dx set value 1
execute if score V VAR matches 118 run data modify storage temp macro.move.dy set value 1

execute store result score DX VAR run data get storage temp macro.move.dx
execute store result score DY VAR run data get storage temp macro.move.dy

scoreboard players operation I VAR = X VAR
scoreboard players operation J VAR = Y VAR

scoreboard players set MOVE VAR 1
scoreboard players set COUNT VAR 0

function aoc:sol/day15/try_move with storage temp macro.move

execute if score MOVE VAR matches 0 run return 0


scoreboard players operation X VAR += DX VAR
scoreboard players operation Y VAR += DY VAR

execute store result storage temp macro.m.x1 int 1 run scoreboard players get X VAR
execute store result storage temp macro.m.y1 int 1 run scoreboard players get Y VAR

scoreboard players operation X2 VAR = X VAR
scoreboard players operation Y2 VAR = Y VAR

execute if score COUNT VAR matches ..1 run return 0
scoreboard players remove COUNT VAR 1

scoreboard players operation DX VAR *= COUNT VAR
scoreboard players operation DY VAR *= COUNT VAR
scoreboard players operation X2 VAR += DX VAR
scoreboard players operation Y2 VAR += DY VAR

execute store result storage temp macro.m.x2 int 1 run scoreboard players get X2 VAR
execute store result storage temp macro.m.y2 int 1 run scoreboard players get Y2 VAR

function aoc:sol/day15/move with storage temp macro.m
