
$data modify storage temp safe set from storage $(in)
function iter:tool/map_cons {in:"temp safe",f:"aoc:sol/day2/diff"}
scoreboard players set RSAFE VAR 1
scoreboard players set SIGN VAR 0
function iter:array_fast {in:"temp safe",f:"aoc:sol/day2/tendency"}

return run scoreboard players get RSAFE VAR