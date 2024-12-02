#function aoc:core/timer/step {name:""}
execute if score STATE TIME matches 0 run return fail

$function aoc:core/timer/util/add_step {name:"$(name)"}