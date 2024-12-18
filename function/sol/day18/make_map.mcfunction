$data modify storage temp pos set value $(v)
execute if score COUNT VAR < LIM VAR run function aoc:sol/day18/set with storage temp pos
$execute if score COUNT VAR >= LIM VAR run data modify storage temp st append value $(v)
scoreboard players add COUNT VAR 1