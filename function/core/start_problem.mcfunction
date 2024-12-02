
#Load input
$scoreboard players set PART AOC $(part)
$scoreboard players set DAY AOC $(day)
$scoreboard players set YEAR AOC $(year)

$function aoc:core/load_input {input:"$(year)_$(day)"}

function aoc:core/timer/start