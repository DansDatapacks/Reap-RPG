scoreboard players set x_min rc_lib.var 4
scoreboard players set x_max rc_lib.var 60
scoreboard players set y_min rc_lib.var 0
scoreboard players set y_max rc_lib.var 56
scoreboard players set z_min rc_lib.var 4
scoreboard players set z_max rc_lib.var 60
execute if block ~ ~ ~ #rc_lib:chests[facing=east,type=left] run scoreboard players set z_max rc_lib.var 64
execute if block ~ ~ ~ #rc_lib:chests[facing=east,type=right] run scoreboard players set z_min rc_lib.var 0
execute if block ~ ~ ~ #rc_lib:chests[facing=north,type=left] run scoreboard players set x_max rc_lib.var 64
execute if block ~ ~ ~ #rc_lib:chests[facing=north,type=right] run scoreboard players set x_min rc_lib.var 0
execute if block ~ ~ ~ #rc_lib:chests[facing=west,type=left] run scoreboard players set z_min rc_lib.var 0
execute if block ~ ~ ~ #rc_lib:chests[facing=west,type=right] run scoreboard players set z_max rc_lib.var 64
execute if block ~ ~ ~ #rc_lib:chests[facing=south,type=left] run scoreboard players set x_min rc_lib.var 0
execute if block ~ ~ ~ #rc_lib:chests[facing=south,type=right] run scoreboard players set x_max rc_lib.var 64
function rc_lib:special/3