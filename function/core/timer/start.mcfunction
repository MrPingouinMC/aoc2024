
execute if score STATE TIME matches 1 run tellraw @a ["Timer is already running!, stopping and restarting"]
execute if score STATE TIME matches 1 run function aoc:core/timer/util/clear

scoreboard players set STATE TIME 1
data modify storage aoc time_step set value []
function aoc:core/timer/util/init
