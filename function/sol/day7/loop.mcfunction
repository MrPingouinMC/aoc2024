$data modify storage temp value set value $(v)
execute store result score V VAR run data get storage temp value[0]

data modify storage temp q2 set value []
scoreboard players set F VAR 0
scoreboard players set F1 VAR 0
scoreboard players set F2 VAR 0
scoreboard players set F3 VAR 0

execute if score TARGET VAR matches 0.. run function iter:array {in:"temp q",f:"aoc:sol/day7/ops_score"}
execute if score TARGET VAR matches -1 run function iter:array {in:"temp q",f:"aoc:sol/day7/ops"}
data modify storage temp q set from storage temp q2

scoreboard players remove SIZE VAR 1