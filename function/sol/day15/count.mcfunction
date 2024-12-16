$execute store result score V VAR run data get storage temp map."$(i)_$(j)"


$scoreboard players set I VAR $(i)
$scoreboard players set J VAR $(j)
scoreboard players operation J VAR *= 100 CONST

scoreboard players operation J VAR += I VAR

execute if score V VAR matches 2 run scoreboard players operation SOL VAR += J VAR

