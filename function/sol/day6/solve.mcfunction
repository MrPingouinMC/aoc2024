
#function aoc:core/load_test {test:"day6"}

function token:parselines {out:"aoc out",in:"aoc input",model:"C-"}
scoreboard players set SOL VAR 0

function aoc:core/timer/step {name:"Input parsing"}

scoreboard players set FLAG VAR 0

data modify storage macro temp.day6.context set value "~ ~ ~"
execute if score PART AOC matches 1 run scoreboard players add SOL VAR 1
execute if score PART AOC matches 1 run data modify storage macro temp.day6.f set value "aoc:sol/day6/loop"
execute if score PART AOC matches 2 run data modify storage macro temp.day6.f set value "aoc:sol/day6/loop2"

data modify storage temp bmap set value {".":"gray_wool","^":"red_wool","#":"black_wool"}
execute positioned -5 56 12 run function iter:area/2d {in:"aoc out",f:"aoc:sol/day6/fill",sx:200,sy:1,sz:200}
execute positioned -5 56 12 rotated 180 0 run function iter:util/run_at with storage macro temp.day6

function aoc:core/submit_score {path:"SOL VAR"}

