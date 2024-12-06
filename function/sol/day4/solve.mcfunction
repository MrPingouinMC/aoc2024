#function aoc:core/load_test {test:"day4"}

function token:parselines {out:"aoc out",in:"aoc input",model:"C-"}
scoreboard players set SOL VAR 0

function aoc:core/timer/step {name:"Input parsing"}

fill 20 57 12 21 200 200 stone
data modify storage temp bmap set value {"X":"red_wool","M":"lime_wool","A":"cyan_wool","S":"yellow_wool"}
function iter:array2d {in:"aoc out",f:"aoc:sol/day4/fill"}
fill 20 57 12 21 200 200 air replace stone

function aoc:core/timer/step {name:"Place blocks"}

function iter:array2d {in:"aoc out",f:"aoc:sol/day4/count"}


function aoc:core/submit_score {path:"SOL VAR"}

