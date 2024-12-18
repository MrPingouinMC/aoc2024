$scoreboard players set V VAR $(v)

#wall
scoreboard players set M VAR 1

#free space
execute if score V VAR matches 46 run scoreboard players set M VAR 0

#box
execute if score V VAR matches 79 run scoreboard players set M VAR 2

#player
execute if score V VAR matches 69 run scoreboard players set M VAR 0
$execute if score V VAR matches 69 run scoreboard players set EX VAR $(i) 
$execute if score V VAR matches 69 run scoreboard players set EY VAR $(j) 

execute if score V VAR matches 83 run scoreboard players set M VAR 0
$execute if score V VAR matches 83 run scoreboard players set SX VAR $(i) 
$execute if score V VAR matches 83 run scoreboard players set SY VAR $(j) 

#$data modify storage temp map."$(i)_$(j)" set value M VAR
$execute store result storage temp map."$(i)_$(j)" int 1 run scoreboard players get M VAR