$scoreboard players set V VAR $(v)
execute if score V VAR matches 46 run setblock ~ ~ ~ light_gray_wool
execute if score V VAR matches 46 run return 1

setblock ~ ~ ~ red_wool

$execute unless data storage temp coords.$(v) run data modify storage temp occ append value $(v)
$execute unless data storage temp coords.$(v) run data modify storage temp coords.$(v) set value []
$data modify storage temp coords.$(v) append value [$(i),$(j)]