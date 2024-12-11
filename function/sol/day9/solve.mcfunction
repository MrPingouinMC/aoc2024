#function aoc:core/load_test {test:"day9"}

function token:parselines {out:"aoc out",in:"aoc input",model:"D-"}

scoreboard players set SOL VAR 0
function math:long/build/strv {data:"sol",v:"0"}

scoreboard players set ID VAR 0
scoreboard players set I VAR 0
scoreboard players set FLAG VAR 0
data modify storage temp mem set value []
data modify storage temp files set value []
data modify storage temp filem set value {}
function math:long/build
function iter:array {f:"aoc:sol/day9/init_mem",in:"aoc out[]"}

scoreboard players set I VAR 0

execute store result score SIZE VAR run data get storage temp mem
execute if score PART AOC matches 1 if score SIZE VAR matches 1.. run function aoc:sol/day9/fill_mem

execute store result score SIZE VAR run data get storage temp files
execute if score PART AOC matches 2 if score SIZE VAR matches 1.. run function aoc:sol/day9/fill_mem2

function math:long/build/to_str {data:"sol",out:"temp sol"}
function aoc:core/submit_path {path:"temp sol"}