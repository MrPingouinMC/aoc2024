#function aoc:core/load_test {test:"day2"}

function token:parselines {out:"aoc out",in:"aoc input",model:"%{ }N{i}"}

function aoc:core/timer/step {name:"Input parsing"}

scoreboard players set SOL VAR 0
function iter:array {in:"aoc out",f:"aoc:sol/day2/line"}

function aoc:core/submit_score {path:"SOL VAR"}
