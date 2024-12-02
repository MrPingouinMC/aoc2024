#function aoc:core/timer/util/add_step {name:""}

function aoc:core/timer/util/resolve
$data modify storage aoc time_step append value {name:"$(name)",s:-1,sd:-1,t0:"",t1:[]}
data modify storage aoc time_step[-1].t0 set from storage aoc time_trail[0]
data modify storage aoc time_step[-1].t1 set from storage aoc time_trail[1]
execute store result storage aoc time_step[-1].s int 1 run scoreboard players get S TIME
execute store result storage aoc time_step[-1].sd int 1 run scoreboard players get SD TIME