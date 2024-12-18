function aoc:core/load_test {test:"day16"}

data modify storage aoc out set value []

function token:parselines {out:"aoc out",in:"aoc input",model:"A-"}
scoreboard players set SOL VAR 100000000

#tellraw @a ["", {"nbt":"out", "storage":"aoc"}]

scoreboard players set SX VAR 0
scoreboard players set SY VAR 0
scoreboard players set EX VAR 0
scoreboard players set EY VAR 0

function iter:array2d {in:"aoc out",f:"aoc:sol/day16/make_map"}
data modify storage temp q set value [{x:0,y:0,c:0,d:0,p:[]}]
data modify storage temp v set value {}
data modify storage temp bp set value []

execute store result storage temp q[-1].x int 1 run scoreboard players get SX VAR
execute store result storage temp q[-1].y int 1 run scoreboard players get SY VAR

function aoc:sol/day16/queue

#tellraw @a ["best path :", {"nbt":"bp", "storage":"temp"}]

execute if score PART AOC matches 2 run function iter:util/set {in:"temp bp"}
execute if score PART AOC matches 2 store result score SOL VAR run data get storage temp bp
execute if score PART AOC matches 2 run scoreboard players add SOL VAR 1

function aoc:core/submit_score {path:"SOL VAR"}
