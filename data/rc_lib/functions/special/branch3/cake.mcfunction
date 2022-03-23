scoreboard players set x_max rc_lib.var 60
scoreboard players set y_min rc_lib.var 0
scoreboard players set y_max rc_lib.var 32
scoreboard players set z_min rc_lib.var 4
scoreboard players set z_max rc_lib.var 60
execute if block ~ ~ ~ minecraft:cake[bites=0] run scoreboard players set x_min rc_lib.var 4
execute if block ~ ~ ~ minecraft:cake[bites=1] run scoreboard players set x_min rc_lib.var 12
execute if block ~ ~ ~ minecraft:cake[bites=2] run scoreboard players set x_min rc_lib.var 20
execute if block ~ ~ ~ minecraft:cake[bites=3] run scoreboard players set x_min rc_lib.var 28
execute if block ~ ~ ~ minecraft:cake[bites=4] run scoreboard players set x_min rc_lib.var 36
execute if block ~ ~ ~ minecraft:cake[bites=5] run scoreboard players set x_min rc_lib.var 44
execute if block ~ ~ ~ minecraft:cake[bites=6] run scoreboard players set x_min rc_lib.var 52
function rc_lib:special/3