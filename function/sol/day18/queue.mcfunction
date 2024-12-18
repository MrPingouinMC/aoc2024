execute unless data storage temp q[] run return fail
#tellraw @a ["q : ", {"nbt":"q", "storage":"temp"}]
data modify storage temp qc set from storage temp q[0]
data remove storage temp q[0] 

#tellraw @a ["curr : ", {"nbt":"qc", "storage":"temp"}]


execute store result score V VAR run function aoc:sol/day18/can_move with storage temp qc
#execute if score V VAR matches 0 run tellraw @a ["Already visited"]
#execute if score V VAR matches 0 run tellraw @a ["Visited"]
execute if score V VAR matches 0 run return run function aoc:sol/day18/queue


execute store result score X VAR run data get storage temp qc.x
execute store result score Y VAR run data get storage temp qc.y
execute store result score D VAR run data get storage temp qc.d

#execute unless score X VAR matches 0..6 run tellraw @a ["out x"]
#execute unless score Y VAR matches 0..6 run tellraw @a ["out y"]
execute if score TEST VAR matches 0 unless score X VAR matches 0..70 run return run function aoc:sol/day18/queue
execute if score TEST VAR matches 0 unless score Y VAR matches 0..70 run return run function aoc:sol/day18/queue
execute if score TEST VAR matches 1 unless score X VAR matches 0..6 run return run function aoc:sol/day18/queue
execute if score TEST VAR matches 1 unless score Y VAR matches 0..6 run return run function aoc:sol/day18/queue

execute if score X VAR = EX VAR if score Y VAR = EY VAR run return run scoreboard players operation SOL VAR = D VAR
scoreboard players add D VAR 1

scoreboard players add X VAR 1
data modify storage temp q append value {x:0,y:0,d:0}
execute store result storage temp q[-1].x int 1 run scoreboard players get X VAR
execute store result storage temp q[-1].y int 1 run scoreboard players get Y VAR
execute store result storage temp q[-1].d int 1 run scoreboard players get D VAR

scoreboard players remove X VAR 2
data modify storage temp q append value {x:0,y:0,d:0}
execute store result storage temp q[-1].x int 1 run scoreboard players get X VAR
execute store result storage temp q[-1].y int 1 run scoreboard players get Y VAR
execute store result storage temp q[-1].d int 1 run scoreboard players get D VAR
scoreboard players add X VAR 1


scoreboard players add Y VAR 1
data modify storage temp q append value {x:0,y:0,d:0}
execute store result storage temp q[-1].x int 1 run scoreboard players get X VAR
execute store result storage temp q[-1].y int 1 run scoreboard players get Y VAR
execute store result storage temp q[-1].d int 1 run scoreboard players get D VAR


scoreboard players remove Y VAR 2
data modify storage temp q append value {x:0,y:0,d:0}
execute store result storage temp q[-1].x int 1 run scoreboard players get X VAR
execute store result storage temp q[-1].y int 1 run scoreboard players get Y VAR
execute store result storage temp q[-1].d int 1 run scoreboard players get D VAR



execute if score SOL VAR matches 0 run function aoc:sol/day18/queue