scoreboard players set y_min rc_lib.var 16
scoreboard players set y_max rc_lib.var 48
execute if block ~ ~ ~ minecraft:lever[facing=east] run function rc_lib:special/redstone/wall_levers/east
execute if block ~ ~ ~ minecraft:lever[facing=north] run function rc_lib:special/redstone/wall_levers/north
execute if block ~ ~ ~ minecraft:lever[facing=west] run function rc_lib:special/redstone/wall_levers/west
execute if block ~ ~ ~ minecraft:lever[facing=south] run function rc_lib:special/redstone/wall_levers/south
function rc_lib:special/3