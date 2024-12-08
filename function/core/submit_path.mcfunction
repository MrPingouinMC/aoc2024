#Macro input : 
#   path : a storage path reference

function aoc:core/timer/end

$data modify storage aoc macro.submit.solution set from storage $(path)

function aoc:core/submit with storage aoc macro.submit