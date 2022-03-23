scoreboard players set y_min rc_lib.var 40
scoreboard players set y_max rc_lib.var 64
function rc_lib:special/1/y
scoreboard players set x_min rc_lib.var 16
scoreboard players set x_max rc_lib.var 48
scoreboard players set y_min rc_lib.var 16
scoreboard players set y_max rc_lib.var 40
scoreboard players set z_min rc_lib.var 16
scoreboard players set z_max rc_lib.var 48
function rc_lib:special/3
scoreboard players set y_min rc_lib.var 16
scoreboard players set y_max rc_lib.var 32
execute if block ~ ~ ~ minecraft:hopper[facing=down] run function rc_lib:special/redstone/hopper/down
execute if block ~ ~ ~ minecraft:hopper[facing=east] run function rc_lib:special/redstone/hopper/east
execute if block ~ ~ ~ minecraft:hopper[facing=north] run function rc_lib:special/redstone/hopper/north
execute if block ~ ~ ~ minecraft:hopper[facing=west] run function rc_lib:special/redstone/hopper/west
execute if block ~ ~ ~ minecraft:hopper[facing=south] run function rc_lib:special/redstone/hopper/south