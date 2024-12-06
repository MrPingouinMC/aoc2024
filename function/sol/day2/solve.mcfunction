#function aoc:core/load_test {test:"day2"}

function token:parselines {out:"aoc out",in:"aoc input",model:"@]( )N*"}

function aoc:core/timer/step {name:"Input parsing"}

#TODO implement exit of iterable to speed up things a lot

scoreboard players set SOL VAR 0
execute if score PART AOC matches 1 run function iter:array {in:"aoc out",f:"aoc:sol/day2/line"}
execute if score PART AOC matches 2 run function iter:array {in:"aoc out",f:"aoc:sol/day2/line2"}

function aoc:core/submit_score {path:"SOL VAR"}
