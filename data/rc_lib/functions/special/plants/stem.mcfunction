scoreboard players set x_min rc_lib.var 28
scoreboard players set x_max rc_lib.var 36
scoreboard players set y_min rc_lib.var 0
scoreboard players set z_min rc_lib.var 28
scoreboard players set z_max rc_lib.var 36
execute if block ~ ~ ~ #rc_lib:stems[age=0] run scoreboard players set y_max rc_lib.var 8
execute if block ~ ~ ~ #rc_lib:stems[age=1] run scoreboard players set y_max rc_lib.var 16
execute if block ~ ~ ~ #rc_lib:stems[age=2] run scoreboard players set y_max rc_lib.var 24
execute if block ~ ~ ~ #rc_lib:stems[age=3] run scoreboard players set y_max rc_lib.var 32
execute if block ~ ~ ~ #rc_lib:stems[age=4] run scoreboard players set y_max rc_lib.var 40
execute if block ~ ~ ~ #rc_lib:stems[age=5] run scoreboard players set y_max rc_lib.var 48
execute if block ~ ~ ~ #rc_lib:stems[age=6] run scoreboard players set y_max rc_lib.var 56
execute if block ~ ~ ~ #rc_lib:stems[age=7] run scoreboard players set y_max rc_lib.var 64
function rc_lib:special/3