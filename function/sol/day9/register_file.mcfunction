$execute unless data storage temp filem.$(d) run data modify storage temp filem.$(d) set value []
$data modify storage temp filem.$(d) append value -1
$execute store result storage temp filem.$(d)[-1] int 1 run scoreboard players get I VAR
