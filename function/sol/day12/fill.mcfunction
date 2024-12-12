$execute unless data storage temp occm.$(v) run data modify storage temp occ append value $(v)
$execute unless data storage temp occm.$(v) run data modify storage temp occm.$(v) set value 1b
$data modify storage temp map.$(i)_$(j) set value $(v)

