#function aoc:core/load_test {test:"day14"}

function token:parselines {out:"aoc out",in:"aoc input",model:"wrN(x)rN(y)swrN(vx)rN(vy)"}
scoreboard players set SOL VAR 0

#scoreboard players set MX VAR 11
#scoreboard players set MY VAR 7
scoreboard players set MX VAR 101
scoreboard players set MY VAR 103

scoreboard players set ITER VAR 100

scoreboard players add MIDX VAR 1
scoreboard players add MIDY VAR 1
scoreboard players operation MIDX VAR = MX VAR
scoreboard players operation MIDY VAR = MY VAR
scoreboard players operation MIDX VAR /= 2 CONST
scoreboard players operation MIDY VAR /= 2 CONST

scoreboard players set Q1 VAR 0
scoreboard players set Q2 VAR 0
scoreboard players set Q3 VAR 0
scoreboard players set Q4 VAR 0

function iter:array {in:"aoc out",f:"aoc:sol/day14/move"}

scoreboard players operation SOL VAR = Q1 VAR
scoreboard players operation SOL VAR *= Q2 VAR
scoreboard players operation SOL VAR *= Q3 VAR
scoreboard players operation SOL VAR *= Q4 VAR

function aoc:core/submit_score {path:"SOL VAR"}

