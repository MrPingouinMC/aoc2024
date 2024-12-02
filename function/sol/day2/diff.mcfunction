
$scoreboard players set A VAR $(v)
$scoreboard players set B VAR $(v2)
scoreboard players operation B VAR -= A VAR
function iter:return/score {"r":"B VAR"}