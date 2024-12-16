$data modify storage temp pos set value $(v)

execute store result score X VAR run data get storage temp pos.x
execute store result score Y VAR run data get storage temp pos.y
execute store result score VX VAR run data get storage temp pos.vx
execute store result score VY VAR run data get storage temp pos.vy

scoreboard players operation VX VAR *= ITER VAR
scoreboard players operation VY VAR *= ITER VAR

scoreboard players operation X VAR += VX VAR
scoreboard players operation Y VAR += VY VAR

scoreboard players operation X VAR %= MX VAR
scoreboard players operation Y VAR %= MY VAR

scoreboard players operation X VAR -= MIDX VAR
scoreboard players operation Y VAR -= MIDY VAR

execute if score X VAR matches ..-1 if score Y VAR matches ..-1 run scoreboard players add Q1 VAR 1
execute if score X VAR matches ..-1 if score Y VAR matches 1.. run scoreboard players add Q2 VAR 1
execute if score X VAR matches 1.. if score Y VAR matches ..-1 run scoreboard players add Q3 VAR 1
execute if score X VAR matches 1.. if score Y VAR matches 1.. run scoreboard players add Q4 VAR 1