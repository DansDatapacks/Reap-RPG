scoreboard players set z_min rc_lib.var 0
scoreboard players set z_max rc_lib.var 32
function rc_lib:special/1/z
execute if block ~ ~ ~ #rc_lib:stairs[facing=north,shape=inner_left] run function rc_lib:special/branch1/stairs/west
execute if block ~ ~ ~ #rc_lib:stairs[facing=north,shape=inner_right] run function rc_lib:special/branch1/stairs/east