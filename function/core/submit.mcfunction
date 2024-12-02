#Macro input : 
#   solution : raw solution value

function aoc:core/timer_end

tellraw @a [""]
tellraw @a ["Solution year ", {"score":{"objective":"AOC","name":"YEAR"},"color":"aqua"}, " day ", {"score":{"objective":"AOC","name":"DAY"},"color":"aqua"}, " part ", {"score":{"objective":"AOC","name":"PART"},"color":"aqua"}]
function aoc:core/timer_display
tellraw @a [""]
$tellraw @a ["$(solution)"]


