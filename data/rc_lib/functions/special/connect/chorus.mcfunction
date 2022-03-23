scoreboard players set x_min rc_lib.var 12
scoreboard players set x_max rc_lib.var 52
scoreboard players set y_min rc_lib.var 12
scoreboard players set y_max rc_lib.var 52
scoreboard players set z_min rc_lib.var 12
scoreboard players set z_max rc_lib.var 52
function rc_lib:special/3
execute if block ~ ~ ~ minecraft:chorus_plant[down=true] run function rc_lib:special/connect/chorus/down
execute if block ~ ~ ~ minecraft:chorus_plant[up=true] run function rc_lib:special/connect/chorus/up
execute if block ~ ~ ~ minecraft:chorus_plant[east=true] run function rc_lib:special/connect/chorus/east
execute if block ~ ~ ~ minecraft:chorus_plant[north=true] run function rc_lib:special/connect/chorus/north
execute if block ~ ~ ~ minecraft:chorus_plant[west=true] run function rc_lib:special/connect/chorus/west
execute if block ~ ~ ~ minecraft:chorus_plant[south=true] run function rc_lib:special/connect/chorus/south