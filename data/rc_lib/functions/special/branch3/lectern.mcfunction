scoreboard players set y_min rc_lib.var 0
scoreboard players set y_max rc_lib.var 8
function rc_lib:special/1/y
scoreboard players set x_min rc_lib.var 16
scoreboard players set x_max rc_lib.var 48
scoreboard players set y_min rc_lib.var 8
scoreboard players set y_max rc_lib.var 56
scoreboard players set z_min rc_lib.var 16
scoreboard players set z_max rc_lib.var 48
function rc_lib:special/3
execute if block ~ ~ ~ minecraft:lectern[facing=east] run function rc_lib:special/branch3/lectern/east
execute if block ~ ~ ~ minecraft:lectern[facing=north] run function rc_lib:special/branch3/lectern/north
execute if block ~ ~ ~ minecraft:lectern[facing=west] run function rc_lib:special/branch3/lectern/west
execute if block ~ ~ ~ minecraft:lectern[facing=south] run function rc_lib:special/branch3/lectern/south