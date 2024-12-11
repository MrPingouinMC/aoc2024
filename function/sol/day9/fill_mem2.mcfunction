
execute store result score V VAR run data get storage temp files[-1].id
execute store result score VI VAR run data get storage temp files[-1].i
execute store result score VD VAR run data get storage temp files[-1].d
data remove storage temp files[-1]

#FIND NEXT FREE
scoreboard players set VF VAR 0
execute if score V VAR matches 0.. run function aoc:sol/day9/pop_mem2

#Sum mem part
execute if score V VAR matches 0.. run function iter:tool/fors {f:"aoc:sol/day9/sol_add",score:"VD VAR"}

scoreboard players remove SIZE VAR 1
execute if score SIZE VAR matches 1.. run function aoc:sol/day9/fill_mem2