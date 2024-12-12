

$data modify storage temp macro.dpcall.v set string storage temp n 0 $(h)
$data modify storage temp macro.dpcall.v2 set string storage temp n $(h)

data modify storage temp z set string storage temp macro.dpcall.v 0 1
execute if data storage temp {z:"0"} run function aoc:sol/day11/fz

data modify storage temp stack append from storage temp macro.dpcall
#tellraw @a ["call 1 with :", {"nbt":"macro.dpcall", "storage":"temp"}]
function aoc:sol/day11/f with storage temp macro.dpcall

data modify storage temp macro.dpcall set from storage temp stack[-1]
data remove storage temp stack[-1]

data modify storage temp sstack append from storage temp r

data modify storage temp macro.dpcall.v set from storage temp macro.dpcall.v2
data modify storage temp z set string storage temp macro.dpcall.v 0 1
execute if data storage temp {z:"0"} run function aoc:sol/day11/fz

function aoc:sol/day11/f with storage temp macro.dpcall

data modify storage temp r2 set from storage temp sstack[-1]
data remove storage temp sstack[-1]


function math:long/build/arr {data:"r",arr:"temp r"}
function math:long/build/arr {data:"r2",arr:"temp r2"}
function math:long/add {data:"r",data2:"r2"}

data modify storage temp r set from storage data long.r.arr 
$function aoc:sol/day11/f_store $(m)