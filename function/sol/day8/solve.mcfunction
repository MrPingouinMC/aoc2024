#function aoc:core/load_test {test:"day8"}

function token:parselines {out:"aoc out",in:"aoc input",model:"A-"}
scoreboard players set SOL VAR 0

data modify storage temp coords set value {}
data modify storage temp occ set value []

execute positioned -5 56 12 run function iter:area/2d {in:"aoc out",f:"aoc:sol/day8/fill",sx:100,sz:100}
execute positioned -5 56 12 run function iter:array {f:"aoc:sol/day8/place_loop",in:"temp occ"}


function aoc:core/submit_score {path:"SOL VAR"}