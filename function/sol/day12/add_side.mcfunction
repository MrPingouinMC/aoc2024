$data modify storage temp sides append value [$(i),$(j),-999, -999]

function iter:stack/peek2 {s1:"I VAR",s2:"J VAR"}
execute store result storage temp sides[-1][-2] int 1 run scoreboard players get I VAR
execute store result storage temp sides[-1][-1] int 1 run scoreboard players get J VAR
data modify storage temp macro.side.m set from storage temp sides[-1]
function aoc:sol/day12/add_sidem with storage temp macro.side