
#function aoc:core/load_test {test:"day1_sample"}

function token:parselines {out:"aoc out",in:"aoc input",model:"N{a}SN{b}"}

function aoc:core/timer/step {name:"Input parsing"}

scoreboard players set SOL VAR 0

data modify storage temp arr.a set value []
data modify storage temp arr.b set value []


function iter:array_fast {in:"aoc out",f:"aoc:sol/day1/fill_array"}

function iter:util/sort_int {in:"temp arr.a"}
execute if score PART AOC matches 1 run function iter:util/sort_int {in:"temp arr.b"}
execute if score PART AOC matches 2 run function iter:tool/counter {in:"temp arr.b",out:"temp obj.b"}

execute if score PART AOC matches 1 run function iter:tool/zip {in:"temp arr.a", in2:"temp arr.b",f:"aoc:sol/day1/sum_dist"}
execute if score PART AOC matches 2 run function iter:array_fast {in:"temp arr.a", f:"aoc:sol/day1/similarity"}

function aoc:core/submit_score {path:"SOL VAR"}

