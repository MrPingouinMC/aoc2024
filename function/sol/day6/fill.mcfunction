$function iter:util/setblock_map {map:"temp bmap",v:"$(v)"}
setblock ~ ~-1 ~ black_concrete
$execute if block ~ ~ ~ red_wool run data modify storage macro temp.day6.context set value "~$(i) ~ ~$(j)"