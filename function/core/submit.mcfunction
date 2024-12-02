#Macro input : 
#   solution : raw solution value

function aoc:core/timer/end

tellraw @a [""]
tellraw @a ["Solution year ", {"score":{"objective":"AOC","name":"YEAR"},"color":"aqua"}, " day ", {"score":{"objective":"AOC","name":"DAY"},"color":"aqua"}, " part ", {"score":{"objective":"AOC","name":"PART"},"color":"aqua"}]
function aoc:core/timer/display
tellraw @a [""]
tellraw @a ["Solution :"]
$tellraw @a ["$(solution)"]


