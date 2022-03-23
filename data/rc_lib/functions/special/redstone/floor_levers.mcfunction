execute if block ~ ~ ~ minecraft:lever[face=floor] run scoreboard players set y_min rc_lib.var 0
execute if block ~ ~ ~ minecraft:lever[face=floor] run scoreboard players set y_max rc_lib.var 24
execute if block ~ ~ ~ minecraft:lever[face=ceiling] run scoreboard players set y_min rc_lib.var 40
execute if block ~ ~ ~ minecraft:lever[face=ceiling] run scoreboard players set y_max rc_lib.var 64
execute unless block ~ ~ ~ minecraft:lever[facing=north] unless block ~ ~ ~ minecraft:lever[facing=south] run function rc_lib:special/redstone/floor_levers/x
execute unless block ~ ~ ~ minecraft:lever[facing=east] unless block ~ ~ ~ minecraft:lever[facing=west] run function rc_lib:special/redstone/floor_levers/z
function rc_lib:special/3