
function type:register_function {f:"aoc:sol/day5/comp",name:"comp_day5",in:"int",out:"int"}

function token:parselines {out:"aoc out",in:"aoc input",model:"N(a)rN(b);@](,)N*"}
scoreboard players set SOL VAR 0

function aoc:core/timer/step {name:"Input parsing"}

data modify storage temp order set value {}
function iter:array {in:"aoc out.sep1",f:"aoc:sol/day5/roder"}
function iter:array {in:"aoc out.sep2",f:"aoc:sol/day5/line"}

function aoc:core/submit_score {path:"SOL VAR"}

