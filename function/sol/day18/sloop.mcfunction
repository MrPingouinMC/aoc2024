
data modify storage temp q set value [{x:0,y:0,d:0}]
data modify storage temp v set value {}
scoreboard players set SOL VAR 0
function aoc:sol/day18/queue

execute if score PART AOC matches 1 run return 0
execute if score SOL VAR matches 0 run return 0

function aoc:sol/day18/set with storage temp st[0]
data modify storage temp last set from storage temp st[0]
data remove storage temp st[0]

function aoc:sol/day18/sloop