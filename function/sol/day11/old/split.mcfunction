
data modify storage temp linen append value "#"
$data modify storage temp linen[-1] set string storage temp n 0 $(h)

data modify storage temp z set string storage temp linen[-1] 0 1
execute if data storage temp {z:"0"} run function aoc:sol/day11/fixz

data modify storage temp linen append value "$"
$data modify storage temp linen[-1] set string storage temp n $(h)

data modify storage temp z set string storage temp linen[-1] 0 1
execute if data storage temp {z:"0"} run function aoc:sol/day11/fixz