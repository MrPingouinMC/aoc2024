$data modify storage temp a set value $(a)
$data modify storage temp b set value $(b)

execute store result score AX VAR run data get storage temp a[0]
execute store result score AY VAR run data get storage temp a[1]
execute store result score BX VAR run data get storage temp b[0]
execute store result score BY VAR run data get storage temp b[1]

scoreboard players operation DX VAR = BX VAR
scoreboard players operation DX VAR -= AX VAR

scoreboard players operation DY VAR = BY VAR
scoreboard players operation DY VAR -= AY VAR

execute if score PART AOC matches 1 run scoreboard players operation AX VAR -= DX VAR
execute if score PART AOC matches 1 run scoreboard players operation AY VAR -= DY VAR
execute if score PART AOC matches 1 run scoreboard players operation BX VAR += DX VAR
execute if score PART AOC matches 1 run scoreboard players operation BY VAR += DY VAR

function aoc:sol/day8/ray
scoreboard players operation AX VAR = BX VAR
scoreboard players operation AY VAR = BY VAR
scoreboard players operation DX VAR *= -1 CONST
scoreboard players operation DY VAR *= -1 CONST

function aoc:sol/day8/ray