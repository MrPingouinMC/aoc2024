$scoreboard players set V VAR $(v)

execute if score V VAR matches ..-4 run scoreboard players set RSAFE VAR 0
execute if score V VAR matches 4.. run scoreboard players set RSAFE VAR 0
execute if score V VAR matches 0 run scoreboard players set RSAFE VAR 0

execute if score V VAR matches ..-1 run scoreboard players set SSIGN VAR -1
execute if score V VAR matches 1.. run scoreboard players set SSIGN VAR 1

execute if score SIGN VAR matches 0 run scoreboard players operation SIGN VAR = SSIGN VAR
execute unless score SIGN VAR = SSIGN VAR run scoreboard players set RSAFE VAR 0
