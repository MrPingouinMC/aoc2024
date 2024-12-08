

scoreboard players set MULT VAR 1
execute if score V VAR matches 1..9 run scoreboard players set MULT VAR 10
execute if score V VAR matches 10..99 run scoreboard players set MULT VAR 100
execute if score V VAR matches 100..999 run scoreboard players set MULT VAR 1000
execute if score V VAR matches 1000..9999 run scoreboard players set MULT VAR 10000
function math:long/multk {data:"c",score:"MULT VAR"}
function math:long/addk {data:"c",score:"V VAR"}

execute store result score F3 VAR run function math:long/comp {data:"c",data2:"t"}

execute if score SIZE VAR matches 1 if score F3 VAR matches 0 run scoreboard players set F VAR 1

execute if score F3 VAR matches ..0 run data modify storage temp q2 append value []
execute if score F3 VAR matches ..0 run data modify storage temp q2[-1] set from storage data long.c.arr