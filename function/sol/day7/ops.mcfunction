#$scoreboard players set QV VAR $(v)
#$say v : $(v)
$function math:long/build/arrv {data:"a",v:$(v)}
$function math:long/build/arrv {data:"b",v:$(v)}
$execute if score PART AOC matches 2 run function math:long/build/arrv {data:"c",v:$(v)}
#tellraw @a ["qv : ", {"nbt":"long.a", "storage":"data"}]


function math:long/multk {data:"a",score:"V VAR"}
function math:long/addk {data:"b",score:"V VAR"}
execute if score PART AOC matches 2 run function aoc:sol/day7/part2
#tellraw @a ["mult : ", {"nbt":"long.a", "storage":"data"}]
#tellraw @a ["add : ", {"nbt":"long.b", "storage":"data"}]
#tellraw @a ["t : ", {"nbt":"long.t", "storage":"data"}]

#scoreboard players operation Q1 VAR = QV VAR
#scoreboard players operation Q2 VAR = QV VAR
#scoreboard players operation Q1 VAR += V VAR
#scoreboard players operation Q2 VAR *= V VAR

#function math:long/exact {data:"a",data2:"t"}
execute store result score F1 VAR run function math:long/comp {data:"a",data2:"t"}
execute store result score F2 VAR run function math:long/comp {data:"b",data2:"t"}

execute if score SIZE VAR matches 1 if score F1 VAR matches 0 run scoreboard players set F VAR 1
execute if score SIZE VAR matches 1 if score F2 VAR matches 0 run scoreboard players set F VAR 1

#tellraw @a ["matches : " ,{"score":{"name":"F1", "objective":"VAR"}}, " ", {"score":{"name":"F2", "objective":"VAR"}}]

execute if score F1 VAR matches ..0 run data modify storage temp q2 append value []
execute if score F1 VAR matches ..0 run data modify storage temp q2[-1] set from storage data long.a.arr

execute if score F2 VAR matches ..0 run data modify storage temp q2 append value []
execute if score F2 VAR matches ..0 run data modify storage temp q2[-1] set from storage data long.b.arr

#execute store result storage temp q2[-2] int 1 run scoreboard players get Q1 VAR
#execute store result storage temp q2[-1] int 1 run scoreboard players get Q2 VAR