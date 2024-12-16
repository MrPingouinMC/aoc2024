


scoreboard players operation I VAR += DX VAR
scoreboard players operation J VAR += DY VAR

data modify storage temp macro.pos set value {x:0,y:0}
execute store result storage temp macro.pos.x int 1 run scoreboard players get I VAR
execute store result storage temp macro.pos.y int 1 run scoreboard players get J VAR
execute store result score V VAR run function aoc:sol/day15/get with storage temp macro.pos

scoreboard players add COUNT VAR 1

execute if score V VAR matches 1 run return run scoreboard players set MOVE VAR 0
execute if score V VAR matches 2 run function aoc:sol/day15/try_move with storage temp macro.move