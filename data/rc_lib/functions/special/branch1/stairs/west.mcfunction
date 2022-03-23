scoreboard players set x_min rc_lib.var 0
scoreboard players set x_max rc_lib.var 32
function rc_lib:special/1/x
execute if block ~ ~ ~ #rc_lib:stairs[facing=west,shape=inner_left] run function rc_lib:special/branch1/stairs/south
execute if block ~ ~ ~ #rc_lib:stairs[facing=west,shape=inner_right] run function rc_lib:special/branch1/stairs/north