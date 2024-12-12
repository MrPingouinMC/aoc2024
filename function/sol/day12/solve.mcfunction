#function aoc:core/load_test {test:"day12"}


function token:parselines {out:"aoc out",in:"aoc input",model:"A-"}
scoreboard players set SOL VAR 0

data modify storage temp count set value {}
data modify storage temp v set value {}
data modify storage temp occ set value []
data modify storage temp occm set value {}
data modify storage temp map set value {}
data modify storage temp stack set value []

function iter:array2d {in:"aoc out",f:"aoc:sol/day12/fill"}
function iter:array2d {in:"aoc out",f:"aoc:sol/day12/count"}


function aoc:core/submit_score {path:"SOL VAR"}