scoreboard players set x_min rc_lib.var 4
scoreboard players set x_max rc_lib.var 60
scoreboard players set y_min rc_lib.var 0
scoreboard players set y_max rc_lib.var 4
execute if block ~ ~ ~ #rc_lib:pressure_plates[powered=true] run scoreboard players set y_max rc_lib.var 2
scoreboard players set z_min rc_lib.var 4
scoreboard players set z_max rc_lib.var 60
function rc_lib:special/3