$scoreboard players set V VAR $(v)

$fill ~ ~ ~ ~ ~$(v) ~ lime_wool
execute if score V VAR matches 9 run setblock ~ ~9 ~ red_wool
execute if score V VAR matches 0 run setblock ~ ~ ~ blue_wool
$execute if score V VAR matches 0 run data modify storage temp starts append value "~$(i) ~ ~$(j)"
$data modify storage temp h."$(i)_$(j)" set value $(v)