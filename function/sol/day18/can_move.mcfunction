$execute if data storage temp map."$(x)_$(y)" run return 0
$execute store result score CV VAR run data get storage temp v."$(x)_$(y)"
$data modify storage temp v."$(x)_$(y)" set value 1b
execute if score CV VAR matches 1 run return 0
return 1