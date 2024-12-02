$scoreboard players set A VAR $(v)
$scoreboard players set B VAR $(v2)

scoreboard players operation A VAR -= B VAR
execute if score A VAR matches ..-1 run scoreboard players operation A VAR *= -1 CONST
scoreboard players operation SOL VAR += A VAR
