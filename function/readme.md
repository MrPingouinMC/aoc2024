 # Advent of code 2024
 
 Here is my attempt to solve Advent of Code 2024 using minecraft datapack and functions with pure vanilla commands (no mods, external tool or pre-compiler).
 Minecraft version : Java 1.21.3
This goal this year is less axed toward speed but building around some strong library tools to help solve the problems.
It's a bet on algorithm superiority, so in the end, so solution should be quite efficient.

This repository only contains Advent of Code solution, but the solutions also use crucial library components.
Check out the release build that will contain a datapack (and eventually a map) with all these libraries, but keep in mind they are still under heavily development.

### Install

Requires [advent-of-code-data](https://github.com/wimglenn/advent-of-code-data) to download inputs : 
```sh
pip install advent-of-code-data
```
Also read [Quickstart](https://github.com/wimglenn/advent-of-code-data#quickstart) on how to bind you AOC session ID 

Run to download inputs for a single day
No argument default to current year and attempt to download new days.
Use `test` to only create test from text files in input\test
```sh
python update.py [year] [day]
python update.py test
```
Run ```/function aoc:init``` once to initialize.
Then, in game, you can run a solution with :
```/function aoc:sol/day1/part1```



### How to use
The repository must be placed at the base of the `function` folder, in an `aoc` namespace of the datapack.

Use `function aoc:run_solution {day:1,part:1}` to run a desired solution
Check out sol/day0 to see a template solution where you load input and submit a solution.

An input transformation is required to put input text file into a storage (achieved by update.py).
Past years we used array of array of character. But now that we have some way to manipulate strings, we can use the following format :

```
1,2,3
abc
123 -456
```
becomes
`data modify storage aoc input set value ['1,2,3', 'abc', '123 -456']`

