$data modify storage temp data set value $(v)

data modify storage temp data set from storage temp data.split

execute store result score COMMA VAR if data storage temp {data:{comma:","}}

execute store result score PAR VAR if data storage temp {data:{par:")"}}

execute store result score A VAR run data get storage temp data.a
execute store result score B VAR run data get storage temp data.b

execute if score ENABLED VAR matches 1 if score END_CORRECT VAR matches 1.. if score A VAR matches 1.. if score B VAR matches 1.. if score COMMA VAR matches 1 if score PAR VAR matches 1 run scoreboard players operation A VAR *= B VAR
execute if score ENABLED VAR matches 1 if score END_CORRECT VAR matches 1.. if score A VAR matches 1.. if score B VAR matches 1.. if score COMMA VAR matches 1 if score PAR VAR matches 1 run scoreboard players operation SOL VAR += A VAR

data modify storage temp full set from storage temp data.raw
scoreboard players set END_CORRECT VAR 0
execute if score END_CORRECT VAR matches 0 run data modify storage temp mul set string storage temp full -3
execute if score END_CORRECT VAR matches 0 store result score END_CORRECT VAR if data storage temp {mul:"mul"}

execute if score PART AOC matches 1 run return 0
#Part 2

data modify storage temp par set string storage temp full 0 1
execute store result score PAR VAR if data storage temp {par:")"}
execute if score LAST_INS VAR matches 1 if score PAR VAR matches 1 run scoreboard players set ENABLED VAR 1
execute if score LAST_INS VAR matches 2 if score PAR VAR matches 1 run scoreboard players set ENABLED VAR 0

scoreboard players set LAST_INS VAR 0
data modify storage temp do set string storage temp full -2
execute if data storage temp {do:"do"} run scoreboard players set LAST_INS VAR 1
data modify storage temp dont set string storage temp full -5
execute if data storage temp {dont:"don't"} run scoreboard players set LAST_INS VAR 2
