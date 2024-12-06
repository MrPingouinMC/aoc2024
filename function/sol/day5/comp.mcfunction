
scoreboard players set R VAR 0
$execute if data storage temp order.$(a).pre.$(b) run scoreboard players set R VAR -1
$execute if data storage temp order.$(a).post.$(b) run scoreboard players set R VAR 1

$execute if data storage temp order.$(b).pre.$(a) run scoreboard players set R VAR -1
$execute if data storage temp order.$(b).post.$(a) run scoreboard players set R VAR 1

function iter:return/score {r:"R VAR"}