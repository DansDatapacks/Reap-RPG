scoreboard players set y_min rc_lib.var 0
scoreboard players set y_max rc_lib.var 40
execute if block ~ ~ ~ minecraft:tripwire_hook[facing=east] run function rc_lib:special/redstone/wall_levers/east
execute if block ~ ~ ~ minecraft:tripwire_hook[facing=north] run function rc_lib:special/redstone/wall_levers/north
execute if block ~ ~ ~ minecraft:tripwire_hook[facing=west] run function rc_lib:special/redstone/wall_levers/west
execute if block ~ ~ ~ minecraft:tripwire_hook[facing=south] run function rc_lib:special/redstone/wall_levers/south
function rc_lib:special/3