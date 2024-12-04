gamerule maxCommandChainLength 2147483647
gamerule maxCommandChainLength 20000000

gamerule commandModificationBlockLimit 32768
gamerule commandModificationBlockLimit 100000

#Used for general solving
scoreboard objectives add VAR dummy
scoreboard objectives add CONST dummy

#Use for data on the problem (day, year, part, ...)
scoreboard objectives add AOC dummy
#Worldborder timing system
scoreboard objectives add TIME dummy

#TODO add an initialization step that dynamically generate these?
scoreboard players set -4 CONST -4
scoreboard players set -1 CONST -1
scoreboard players set 1 CONST 1
scoreboard players set 2 CONST 2
scoreboard players set 3 CONST 3
scoreboard players set 4 CONST 4
scoreboard players set 5 CONST 5
scoreboard players set 7 CONST 7
scoreboard players set 8 CONST 8
scoreboard players set 10 CONST 10
scoreboard players set 11 CONST 11
scoreboard players set 13 CONST 13
scoreboard players set 16 CONST 16
scoreboard players set 17 CONST 17
scoreboard players set 31 CONST 31
scoreboard players set 32 CONST 32
scoreboard players set 40 CONST 40
scoreboard players set 64 CONST 64
scoreboard players set 100 CONST 100
scoreboard players set 250 CONST 250
scoreboard players set 256 CONST 256
scoreboard players set 1000 CONST 1000
scoreboard players set 10000 CONST 10000
scoreboard players set 20000 CONST 20000
scoreboard players set MAX_INT CONST 2147483647

scoreboard players set BINT CONST 1000

scoreboard players set DAY AOC 1000
scoreboard players set YEAR AOC 1000
scoreboard players add STAR AOC 0

#TODO find a place to initialize library 
scoreboard objectives add LIB dummy
scoreboard objectives add TYPE dummy
scoreboard objectives add CONST dummy
function type:init
function iter:init
function token:init