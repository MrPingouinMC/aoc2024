$scoreboard players set A VAR $(v)

scoreboard players set B VAR 0
$execute store result score B VAR run data get storage temp obj.b.$(v)

scoreboard players operation A VAR *= B VAR
scoreboard players operation SOL VAR += A VAR
