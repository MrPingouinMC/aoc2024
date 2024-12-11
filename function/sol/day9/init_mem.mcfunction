$scoreboard players set D VAR $(v)

execute if score FLAG VAR matches 0 run scoreboard players operation FILL VAR = ID VAR
execute if score FLAG VAR matches 1 run scoreboard players set FILL VAR -1 

execute if score D VAR matches 1.. run data modify storage temp files append value {id:-1,i:-1,d:-1}
execute if score D VAR matches 1.. run execute store result storage temp files[-1].id int 1 run scoreboard players get FILL VAR
execute if score D VAR matches 1.. run execute store result storage temp files[-1].i int 1 run scoreboard players get I VAR
execute if score D VAR matches 1.. run execute store result storage temp files[-1].d int 1 run scoreboard players get D VAR

execute if score FILL VAR matches -1 if score D VAR matches 1.. run function aoc:sol/day9/register_file with storage temp files[-1]

function iter:tool/for/range_vs {f:"aoc:sol/day9/init_fill",a:0,b:"D VAR"}
scoreboard players operation I VAR += D VAR

execute if score FLAG VAR matches 0 run scoreboard players add ID VAR 1
execute store result score FLAG VAR if score FLAG VAR matches 0