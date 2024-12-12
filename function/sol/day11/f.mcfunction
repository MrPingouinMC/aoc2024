$scoreboard players set STEP VAR $(s)
execute if score STEP VAR matches 0 run return run data modify storage temp r set value [1]

$execute if data storage temp mem."$(s)_$(v)" run return run data modify storage temp r set from storage temp mem."$(s)_$(v)"

$data modify storage temp macro.dp set value {v:$(v),s:$(s)}

scoreboard players remove STEP VAR 1
data modify storage temp macro.dpcall set value {v:-1,s:-1}
execute store result storage temp macro.dpcall.s int 1 run scoreboard players get STEP VAR

$data modify storage temp n set value "$(v)"
execute store result score NSIZE VAR run data get storage temp n
scoreboard players operation W VAR = NSIZE VAR
scoreboard players operation H VAR = NSIZE VAR
scoreboard players operation W VAR %= 2 CONST
scoreboard players operation H VAR /= 2 CONST

scoreboard players set F VAR 0
execute if data storage temp {n:"0"} run scoreboard players set F VAR 1
execute if score F VAR matches 1 run data modify storage temp macro.dpcall.v set value "1"

execute if score W VAR matches 0 store result storage temp macro.day11.h int 1 run scoreboard players get H VAR
execute if score W VAR matches 0 run data modify storage temp macro.day11.m set from storage temp macro.dp
execute if score W VAR matches 0 run return run return run function aoc:sol/day11/fs with storage temp macro.day11

execute if score F VAR matches 0 run function math:long/build/str {data:"day11",str:"temp n"}
execute if score F VAR matches 0 run function math:long/multk {data:"day11",score:"MULTK VAR"}
execute if score F VAR matches 0 run function math:long/build/to_str {data:"day11",out:"temp macro.dpcall.v"}


function aoc:sol/day11/f with storage temp macro.dpcall
$function aoc:sol/day11/f_store {v:$(v),s:$(s)}
