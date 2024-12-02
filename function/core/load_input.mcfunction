
data modify storage aoc input set value []
$execute store result score RUN AOC run function aoc:input/$(input)

execute store result score INPUT_SIZE AOC run data get storage aoc input 
$execute if score INPUT_SIZE AOC matches 0 run tellraw @a ["Failed to run function $(input), are you sure such input exist?"]