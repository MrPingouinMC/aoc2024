#function aoc:core/load_test {test:"day18"}

scoreboard players set TEST VAR 0

data modify storage aoc out set value []

function token:parselines {out:"aoc out",in:"aoc input",model:"N(x)rN(y)"}
scoreboard players set SOL VAR 0
scoreboard players set SX VAR 0
scoreboard players set SY VAR 0

scoreboard players set EX VAR 70
scoreboard players set EY VAR 70
execute if score TEST VAR matches 1 run scoreboard players set EX VAR 6
execute if score TEST VAR matches 1 run scoreboard players set EY VAR 6


scoreboard players set COUNT VAR 0
scoreboard players set LIM VAR 1024
execute if score TEST VAR matches 1 run scoreboard players set LIM VAR 12

data modify storage temp st set value []
data modify storage temp map set value {} 
function iter:array {in:"aoc out",f:"aoc:sol/day18/make_map"}

function aoc:sol/day18/sloop

execute if score PART AOC matches 2 run tellraw @a ["SOL : ", {"nbt":"last.x", "storage":"temp"}, ",", {"nbt":"last.y", "storage":"temp"}]

function aoc:core/submit_score {path:"SOL VAR"}
