$execute unless block ~$(i) ~ ~$(j) light_gray_wool unless block ~$(i) ~ ~$(j) red_wool run return fail
$execute unless block ~$(i) ~1 ~$(j) yellow_stained_glass run scoreboard players add SOL VAR 1
$setblock ~$(i) ~1 ~$(j) yellow_stained_glass
return 1