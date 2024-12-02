
data modify storage aoc macro.time_display set from storage aoc time_step[0]

data remove storage aoc time_step[0]
function aoc:core/timer/util/display_macro with storage aoc macro.time_display

scoreboard players remove result.size TIME 1
execute if score result.size TIME matches 1.. run function aoc:core/timer/util/display_loop
