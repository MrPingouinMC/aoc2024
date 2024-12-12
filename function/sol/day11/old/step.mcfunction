data modify storage temp linen set value []
function iter:array {f:"aoc:sol/day11/old/num",in:"temp line"}

execute store result score SIZ VAR run data get storage temp linen
data modify storage temp line set from storage temp linen