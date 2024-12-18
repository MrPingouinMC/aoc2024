
scoreboard players set DX VAR 0
scoreboard players set DY VAR 0
execute if score D VAR matches 0 run scoreboard players set DX VAR 1
execute if score D VAR matches 1 run scoreboard players set DX VAR -1
execute if score D VAR matches 2 run scoreboard players set DY VAR 1
execute if score D VAR matches 3 run scoreboard players set DY VAR -1

scoreboard players operation X VAR += DX VAR
scoreboard players operation Y VAR += DY VAR
data modify storage temp q append value {x:0,y:0,c:0,d:0,p:[]}
execute store result storage temp q[-1].x int 1 run scoreboard players get X VAR
execute store result storage temp q[-1].y int 1 run scoreboard players get Y VAR
execute store result storage temp q[-1].c int 1 run scoreboard players get C VAR
execute store result storage temp q[-1].d int 1 run scoreboard players get D VAR
data modify storage temp q[-1].p set from storage temp qc.p


execute if score PART AOC matches 2 run data modify storage temp q[-1].p append value [0,0]
execute if score PART AOC matches 2 run execute store result storage temp q[-1].p[-1][0] int 1 run scoreboard players get X VAR
execute if score PART AOC matches 2 run execute store result storage temp q[-1].p[-1][1] int 1 run scoreboard players get Y VAR

scoreboard players operation X VAR -= DX VAR
scoreboard players operation Y VAR -= DY VAR



scoreboard players add D VAR 1
execute if score D VAR matches 4 run scoreboard players set D VAR 0