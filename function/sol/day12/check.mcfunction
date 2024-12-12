

$execute store result score V2 VAR run data get storage temp map.$(i)_$(j)
execute if score PART AOC matches 1 unless score V VAR = V2 VAR run return run scoreboard players add P VAR 1
$execute if score PART AOC matches 2 unless score V VAR = V2 VAR run return run function aoc:sol/day12/add_side {i:$(i),j:$(j)}
$execute if data storage temp v.$(i)_$(j) run return 1

scoreboard players add AREA VAR 1

$data modify storage temp v.$(i)_$(j) set value 1b

$scoreboard players set I VAR $(i)
$scoreboard players set J VAR $(j)

function iter:stack/add2 {s1:"I VAR",s2:"J VAR"}

scoreboard players add I VAR 1
execute store result storage temp macro.pos.i int 1 run scoreboard players get I VAR
execute store result storage temp macro.pos.j int 1 run scoreboard players get J VAR
function aoc:sol/day12/check with storage temp macro.pos
function iter:stack/peek2 {s1:"I VAR",s2:"J VAR"}

scoreboard players remove I VAR 1
execute store result storage temp macro.pos.i int 1 run scoreboard players get I VAR
execute store result storage temp macro.pos.j int 1 run scoreboard players get J VAR
function aoc:sol/day12/check with storage temp macro.pos
function iter:stack/peek2 {s1:"I VAR",s2:"J VAR"}

scoreboard players add J VAR 1
execute store result storage temp macro.pos.i int 1 run scoreboard players get I VAR
execute store result storage temp macro.pos.j int 1 run scoreboard players get J VAR
function aoc:sol/day12/check with storage temp macro.pos
function iter:stack/peek2 {s1:"I VAR",s2:"J VAR"}
scoreboard players remove J VAR 1
execute store result storage temp macro.pos.i int 1 run scoreboard players get I VAR
execute store result storage temp macro.pos.j int 1 run scoreboard players get J VAR
function aoc:sol/day12/check with storage temp macro.pos
function iter:stack/void {s1:"I VAR",s2:"J VAR"}




