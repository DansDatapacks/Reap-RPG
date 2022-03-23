scoreboard players set z_min rc_lib.var 32
scoreboard players set z_max rc_lib.var 64
function rc_lib:special/1/z
execute if block ~ ~ ~ #rc_lib:stairs[facing=south,shape=inner_left] run function rc_lib:special/branch1/stairs/east
execute if block ~ ~ ~ #rc_lib:stairs[facing=south,shape=inner_right] run function rc_lib:special/branch1/stairs/west