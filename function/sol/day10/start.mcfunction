
$data modify storage macro temp.day10.context set value "$(v)"
data modify storage macro temp.day10.f set value "aoc:sol/day10/start_loop"

#Huge hack to prevent stacking position and clearing blocks
execute positioned -5 56 12 run fill ~ ~ ~ ~60 ~10 ~60 lime_wool replace gray_wool
execute positioned -5 56 12 run fill ~ ~ ~ ~60 ~10 ~60 red_wool replace pink_wool

execute positioned -5 56 12 rotated 180 0 run function iter:util/run_at with storage macro temp.day10