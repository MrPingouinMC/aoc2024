

execute if block ~2 ~1 ~ minecraft:redstone_lamp[lit=true] run scoreboard players remove STAR AOC 1 
execute if block ~2 ~1 ~ minecraft:redstone_lamp[lit=false] run scoreboard players add STAR AOC 1

execute if block ~2 ~1 ~ minecraft:redstone_lamp[lit=true] run fill ~2 ~ ~ ~2 ~ ~ red_wool
execute if block ~2 ~1 ~ minecraft:redstone_lamp[lit=false] run fill ~2 ~ ~ ~2 ~ ~ redstone_torch