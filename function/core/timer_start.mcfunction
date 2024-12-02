
execute if score STATE TIME matches 1 run tellraw @a ["Timer is already running!, stopping and restarting"]
execute if score STATE TIME matches 1 run function aoc:core/timer_end

scoreboard players set STATE TIME 1
scoreboard players set WFULL TIME 6000000
worldborder center 0 0
worldborder set 6000000
worldborder add -600000 600
