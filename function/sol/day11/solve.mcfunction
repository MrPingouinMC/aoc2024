#function aoc:core/load_test {test:"day11"}

function token:parselines {out:"aoc out",in:"aoc input",model:"@( )]N*"}
scoreboard players set SOL VAR 0
scoreboard players set MULTK VAR 2024

function math:long/build/strv {data:"sol",v:"0"}
#tellraw @a ["", {"nbt":"out", "storage":"aoc"}]

data modify storage temp mem set value {}
data modify storage temp line set from storage aoc out[0]

execute if score PART AOC matches 1 run scoreboard players set ITER VAR 25
execute if score PART AOC matches 2 run scoreboard players set ITER VAR 75

#Old, non DP solution
#execute if score PART AOC matches 1 run function iter:tool/for/range {in:"temp line",f:"aoc:sol/day11/step",a:0,b:25}
#execute if score PART AOC matches 1 store result score SOL VAR run data get storage temp line

function iter:array {in:"temp line",f:"aoc:sol/day11/rf"}
function math:long/build/to_str {data:"sol",out:"temp sol"}
function aoc:core/submit_path {path:"temp sol"}