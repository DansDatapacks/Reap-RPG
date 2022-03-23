execute if block ~ ~ ~ #rc_lib:walls[up=true] run function rc_lib:special/connect/walls/up
scoreboard players set y_min rc_lib.var 0
scoreboard players set y_max rc_lib.var 56
execute if block ~ ~ ~ #rc_lib:walls[east=true] run function rc_lib:special/connect/walls/east
execute if block ~ ~ ~ #rc_lib:walls[north=true] run function rc_lib:special/connect/walls/north
execute if block ~ ~ ~ #rc_lib:walls[west=true] run function rc_lib:special/connect/walls/west
execute if block ~ ~ ~ #rc_lib:walls[south=true] run function rc_lib:special/connect/walls/south