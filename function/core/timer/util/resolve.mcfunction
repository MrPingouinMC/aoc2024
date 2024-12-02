execute store result score WTIMER TIME run worldborder get 
scoreboard players operation WSTEP TIME = WFULL TIME
scoreboard players operation WSTEP TIME -= WTIMER TIME
scoreboard players operation S TIME = WSTEP TIME
scoreboard players operation SD TIME = WSTEP TIME

scoreboard players operation S TIME /= 1000 CONST
scoreboard players operation SD TIME %= 1000 CONST

data modify storage aoc time_trail set value ["",""]
execute if score SD TIME matches ..99 run data modify storage aoc time_trail[0] set value "0"
execute if score SD TIME matches ..9 run data modify storage aoc time_trail[1] set value "0"