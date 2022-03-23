execute if block ~ ~ ~ #rc_lib:stairs[facing=east] run scoreboard players set temp rc_lib.var 0
execute if block ~ ~ ~ #rc_lib:stairs[facing=north] run scoreboard players set temp rc_lib.var 1
execute if block ~ ~ ~ #rc_lib:stairs[facing=west] run scoreboard players set temp rc_lib.var 2
execute if block ~ ~ ~ #rc_lib:stairs[facing=south] run scoreboard players set temp rc_lib.var 3
execute if block ~ ~ ~ #rc_lib:stairs[shape=outer_left] run scoreboard players add temp rc_lib.var 1
scoreboard players operation temp rc_lib.var %= 4 rc_lib.con
scoreboard players set x_min rc_lib.var 0
scoreboard players set x_max rc_lib.var 32
execute if score temp rc_lib.var matches 0..1 run scoreboard players set x_min rc_lib.var 32
execute if score temp rc_lib.var matches 0..1 run scoreboard players set x_max rc_lib.var 64
scoreboard players set z_min rc_lib.var 32
scoreboard players set z_max rc_lib.var 64
execute if score temp rc_lib.var matches 1..2 run scoreboard players set z_min rc_lib.var 0
execute if score temp rc_lib.var matches 1..2 run scoreboard players set z_max rc_lib.var 32
function rc_lib:special/2/y