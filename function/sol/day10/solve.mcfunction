#function aoc:core/load_test {test:"day10_2"}

function aoc:visual/init

function token:parselines {out:"aoc out",in:"aoc input",model:"D-"}
scoreboard players set SOL VAR 0

data modify storage temp starts set value []
data modify storage temp h set value {}

execute positioned -5 56 12 run function iter:area/2d {in:"aoc out",f:"aoc:sol/day10/fill",sx:60,sy:10,sz:60}

execute positioned -5 56 12 run function iter:array {f:"aoc:sol/day10/start",in:"temp starts"}


function aoc:core/submit_score {path:"SOL VAR"}