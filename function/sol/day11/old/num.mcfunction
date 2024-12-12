$data modify storage temp n set value "$(v)"
execute store result score NSIZE VAR run data get storage temp n
scoreboard players operation W VAR = NSIZE VAR
scoreboard players operation H VAR = NSIZE VAR
scoreboard players operation W VAR %= 2 CONST
scoreboard players operation H VAR /= 2 CONST

execute if data storage temp {n:"0"} run return run data modify storage temp linen append value "1"

execute if score W VAR matches 0 store result storage temp macro.day11.h int 1 run scoreboard players get H VAR
execute if score W VAR matches 0 run return run function aoc:sol/day11/old/split with storage temp macro.day11

data modify storage temp linen append value "?"
function math:long/build/str {data:"day11",str:"temp n"}
function math:long/multk {data:"day11",score:"MULTK VAR"}
function math:long/build/to_str {data:"day11",out:"temp linen[-1]"}