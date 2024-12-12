$execute unless data storage temp sidem."$(v)" run return 1
$data remove storage temp sidem."$(v)"
execute if score DF VAR matches 0 run scoreboard players add P VAR 1
scoreboard players add DF VAR 1
$data modify storage temp s set value $(v)

execute store result score A VAR run data get storage temp s[0]
execute store result score B VAR run data get storage temp s[1]
execute store result score C VAR run data get storage temp s[2]
execute store result score D VAR run data get storage temp s[3]

scoreboard players operation DX VAR = C VAR
scoreboard players operation DX VAR -= A VAR

scoreboard players operation DY VAR = D VAR
scoreboard players operation DY VAR -= B VAR
execute if score DX VAR matches -1 run scoreboard players set DX VAR 1
execute if score DY VAR matches -1 run scoreboard players set DY VAR 1

function iter:stack/add_multi {scores:["A VAR","B VAR","C VAR","D VAR","DX VAR","DY VAR"]}
scoreboard players operation A VAR += DY VAR
scoreboard players operation B VAR += DX VAR
scoreboard players operation C VAR += DY VAR
scoreboard players operation D VAR += DX VAR
data modify storage temp macro.v set value [-999, -999, -999, -999]
execute store result storage temp macro.v[0] int 1 run scoreboard players get A VAR
execute store result storage temp macro.v[1] int 1 run scoreboard players get B VAR
execute store result storage temp macro.v[2] int 1 run scoreboard players get C VAR
execute store result storage temp macro.v[3] int 1 run scoreboard players get D VAR

function aoc:sol/day12/count_sides with storage temp macro

function iter:stack/pop_multi {scores:["A VAR","B VAR","C VAR","D VAR","DX VAR","DY VAR"]}
scoreboard players operation A VAR -= DY VAR
scoreboard players operation B VAR -= DX VAR
scoreboard players operation C VAR -= DY VAR
scoreboard players operation D VAR -= DX VAR
data modify storage temp macro.v set value [-999, -999, -999, -999]
execute store result storage temp macro.v[0] int 1 run scoreboard players get A VAR
execute store result storage temp macro.v[1] int 1 run scoreboard players get B VAR
execute store result storage temp macro.v[2] int 1 run scoreboard players get C VAR
execute store result storage temp macro.v[3] int 1 run scoreboard players get D VAR
function aoc:sol/day12/count_sides with storage temp macro

scoreboard players remove DF VAR 1