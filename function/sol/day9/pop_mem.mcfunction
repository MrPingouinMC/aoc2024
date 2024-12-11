execute if score SIZE VAR matches 0 run return 0
execute store result score V2 VAR run data get storage temp mem[-1]
scoreboard players remove SIZE VAR 1
data remove storage temp mem[-1]

execute if score V2 VAR matches -1 run return run function aoc:sol/day9/pop_mem
return run scoreboard players get V2 VAR