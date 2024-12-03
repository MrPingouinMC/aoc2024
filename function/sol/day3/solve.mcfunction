
#function aoc:core/load_test {test:"day3"}

function token:parselines {out:"aoc out",in:"aoc input",model:"%{(}N{a}a{comma}+N{b}A{end}+"}
scoreboard players set SOL VAR 0

function aoc:core/timer/step {name:"Input parsing"}

data modify storage temp out set value []
data modify storage temp out append from storage aoc out[].split
function iter:tool/flatten {in:"temp out"}

scoreboard players set ENABLED VAR 1
scoreboard players set LAST_INS VAR 0
scoreboard players set END_CORRECT VAR 0
function iter:array {in:"temp out",f:"aoc:sol/day3/line"}

function aoc:core/submit_score {path:"SOL VAR"}
