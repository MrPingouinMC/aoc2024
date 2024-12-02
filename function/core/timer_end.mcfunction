
execute if score STATE TIME matches 0 run return fail

execute store result score WTIMER TIME run worldborder get 
scoreboard players set STATE TIME 0
scoreboard players operation WFULL TIME -= WTIMER TIME
scoreboard players operation S TIME = WFULL TIME
scoreboard players operation SD TIME = WFULL TIME

scoreboard players operation S TIME /= 1000 CONST
scoreboard players operation SD TIME %= 1000 CONST

data modify storage buf trail set value []
execute if score SD TIME matches ..99 run data modify storage buf trail append value 0
execute if score SD TIME matches ..9 run data modify storage buf trail append value 0

worldborder set 6000000
worldborder center 0 0
