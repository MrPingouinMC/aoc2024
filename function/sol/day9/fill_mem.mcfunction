
execute store result score V VAR run data get storage temp mem[0]
data remove storage temp mem[0]

execute if score V VAR matches -1 store result score V VAR run function aoc:sol/day9/pop_mem

function math:long/build/score {data:"v",score:"V VAR"}
function math:long/multk {data:"v",score:"I VAR"}
function math:long/add {data:"sol",data2:"v"}

scoreboard players add I VAR 1
scoreboard players remove SIZE VAR 1
execute if score SIZE VAR matches 1.. run function aoc:sol/day9/fill_mem
