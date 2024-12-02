#Macro input : 
#   path : a score path reference       
#   part : 1 or 2 

function aoc:core/timer_end

$scoreboard players operation SOL AOC = $(path)
execute store result storage aoc macro.submit.solution int 1 run scoreboard players get SOL AOC
function aoc:core/submit with storage aoc macro.submit