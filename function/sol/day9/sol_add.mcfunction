scoreboard players operation VR VAR = V VAR
scoreboard players operation VR VAR *= VI VAR
scoreboard players operation SOL VAR += VR VAR

function math:long/build/score {data:"v",score:"V VAR"}
function math:long/multk {data:"v",score:"VI VAR"}
function math:long/add {data:"sol",data2:"v"}
scoreboard players add VI VAR 1