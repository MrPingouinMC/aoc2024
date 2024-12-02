$data modify storage temp raw set value $(v)
data modify storage temp line set value []
data modify storage temp line append from storage temp raw.split[].i

function iter:tool/map_cons {in:"temp line",f:"aoc:sol/day2/diff"}

scoreboard players set SAFE VAR 1
scoreboard players set SIGN VAR 0
data modify storage temp line2 set from storage temp line
function iter:array_fast {in:"temp line2",f:"aoc:sol/day2/tendency"}

execute if score SAFE VAR matches 1 run scoreboard players add SOL VAR 1
