#$execute if data storage temp v."$(x)_$(y)" run return 0
$scoreboard players set CC VAR $(c)
scoreboard players set NEW VAR 0
$execute store result score CV VAR run data get storage temp v."$(x)_$(y)_$(d)"
$execute unless data storage temp v."$(x)_$(y)_$(d)" run scoreboard players set NEW VAR 1
execute if score NEW VAR matches 1 run scoreboard players operation CV VAR = CC VAR
execute if score CC VAR > CV VAR run return 0
$execute store result storage temp v."$(x)_$(y)_$(d)" int 1 run scoreboard players get CC VAR
$data modify storage temp v."$(x)_$(y)_$(d)" set value $(c)
return 1

