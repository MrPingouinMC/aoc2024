data modify storage temp stack set value []
data modify storage temp sstack set value []
$data modify storage temp macro.f set value {v:$(v),s:0}
execute store result storage temp macro.f.s int 1 run scoreboard players get ITER VAR

function aoc:sol/day11/f with storage temp macro.f

function math:long/build/arr {data:"r",arr:"temp r"}
function math:long/add {data:"sol",data2:"r"}