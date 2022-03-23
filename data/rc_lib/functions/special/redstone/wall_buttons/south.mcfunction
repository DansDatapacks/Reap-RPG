scoreboard players set x_min rc_lib.var 20
scoreboard players set x_max rc_lib.var 44
scoreboard players set z_min rc_lib.var 0
scoreboard players set z_max rc_lib.var 8
execute if block ~ ~ ~ #rc_lib:buttons[powered=true] run scoreboard players set z_max rc_lib.var 4