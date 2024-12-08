

#function aoc:core/load_test {test:"day7"}

function token:parselines {out:"aoc out",in:"aoc input",model:"L(target)rs%( )]N*"}
scoreboard players set SOL VAR 0

tellraw @a ["", {"nbt":"out", "storage":"aoc"}]

function math:long/build/strv {data:"sol",v:"0"}

function aoc:core/timer/step {name:"Input parsing"}
scoreboard players set V VAR 0
function iter:array {in:"aoc out",f:"aoc:sol/day7/line"}

function math:long/build/to_str {data:"sol",out:"temp sol"}
function aoc:core/submit_path {path:"temp sol"}

