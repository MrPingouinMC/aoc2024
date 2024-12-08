$data modify storage temp line set value $(v)

#tellraw @a ["line", {"nbt":"line", "storage":"temp"}]

#data modify storage temp target set from storage temp line.test
execute store result score TSIZE VAR run data get storage temp line.target
function math:long/build/arr {data:"t",arr:"temp line.target"}
scoreboard players set TARGET VAR -1

data modify storage temp ops set from storage temp line.split
data modify storage temp q set value [[]]
data modify storage temp q[0] set from storage temp ops[0]
data remove storage temp ops[0]

execute store result score SIZE VAR run data get storage temp ops
#tellraw @a ["q", {"nbt":"q", "storage":"temp"}]

function iter:array {in:"temp ops",f:"aoc:sol/day7/loop"}

#execute if score F VAR matches 1 run scoreboard players operation SOL VAR += TARGET VAR

#tellraw @a ["q", {"nbt":"q", "storage":"temp"}]

execute if score F VAR matches 1 run tellraw @a ["sol : ", {"nbt":"long.t.arr", "storage":"data"}]
execute if score F VAR matches 1 run function math:long/add {data:"sol",data2:"t"}