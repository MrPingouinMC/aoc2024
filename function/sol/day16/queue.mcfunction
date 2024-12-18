execute unless data storage temp q[] run return fail
#tellraw @a ["q : ", {"nbt":"q", "storage":"temp"}]

data modify storage temp qc set from storage temp q[0]
data remove storage temp q[0] 

#tellraw @a ["curr : ", {"nbt":"qc", "storage":"temp"}]

execute store result score V VAR run function aoc:sol/day16/visited with storage temp qc
#execute if score V VAR matches 0 run tellraw @a ["Already visited"]
execute if score V VAR matches 0 run return run function aoc:sol/day16/queue

execute store result score W VAR run function aoc:sol/day16/get with storage temp qc
#execute if score W VAR matches 1 run tellraw @a ["wall"]
execute if score W VAR matches 1 run return run function aoc:sol/day16/queue

execute store result score X VAR run data get storage temp qc.x
execute store result score Y VAR run data get storage temp qc.y
execute store result score C VAR run data get storage temp qc.c
execute store result score D VAR run data get storage temp qc.d


execute if score X VAR = EX VAR if score Y VAR = EY VAR if score C VAR < SOL VAR run data modify storage temp bp set from storage temp qc.p
execute if score X VAR = EX VAR if score Y VAR = EY VAR if score C VAR = SOL VAR run data modify storage temp bp append from storage temp qc.p[]
execute if score X VAR = EX VAR if score Y VAR = EY VAR run scoreboard players operation SOL VAR < C VAR

#execute if score X VAR = EX VAR if score Y VAR = EY VAR run tellraw @a ["sol : " ,{"score":{"name":"C", "objective":"VAR"}}]
execute if score X VAR = EX VAR if score Y VAR = EY VAR run return run function aoc:sol/day16/queue

scoreboard players add C VAR 1
function aoc:sol/day16/enqueue

scoreboard players add C VAR 1000

function aoc:sol/day16/enqueue
function aoc:sol/day16/enqueue
function aoc:sol/day16/enqueue


function aoc:sol/day16/queue