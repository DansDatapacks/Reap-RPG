scoreboard players set x_min rc_lib.var 24
scoreboard players set x_max rc_lib.var 40
scoreboard players set z_min rc_lib.var 24
scoreboard players set z_max rc_lib.var 40
function rc_lib:special/2/y
execute if block ~ ~ ~ #rc_lib:fences[east=true] run function rc_lib:special/connect/fences/east
execute if block ~ ~ ~ #rc_lib:fences[north=true] run function rc_lib:special/connect/fences/north
execute if block ~ ~ ~ #rc_lib:fences[west=true] run function rc_lib:special/connect/fences/west
execute if block ~ ~ ~ #rc_lib:fences[south=true] run function rc_lib:special/connect/fences/south