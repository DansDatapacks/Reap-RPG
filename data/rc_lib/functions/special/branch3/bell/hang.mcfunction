scoreboard players set x_min rc_lib.var 16
scoreboard players set x_max rc_lib.var 48
scoreboard players set y_min rc_lib.var 16
scoreboard players set y_max rc_lib.var 24
scoreboard players set z_min rc_lib.var 16
scoreboard players set z_max rc_lib.var 48
function rc_lib:special/3
scoreboard players set x_min rc_lib.var 20
scoreboard players set x_max rc_lib.var 44
scoreboard players set y_min rc_lib.var 24
scoreboard players set y_max rc_lib.var 52
scoreboard players set z_min rc_lib.var 20
scoreboard players set z_max rc_lib.var 44
function rc_lib:special/3
execute if block ~ ~ ~ minecraft:bell[attachment=ceiling] run function rc_lib:special/branch3/bell/up
execute if block ~ ~ ~ minecraft:bell[facing=east] unless block ~ ~ ~ minecraft:bell[attachment=ceiling] run function rc_lib:special/branch3/bell/east
execute if block ~ ~ ~ minecraft:bell[facing=north] unless block ~ ~ ~ minecraft:bell[attachment=ceiling] run function rc_lib:special/branch3/bell/north
execute if block ~ ~ ~ minecraft:bell[facing=west] unless block ~ ~ ~ minecraft:bell[attachment=ceiling] run function rc_lib:special/branch3/bell/west
execute if block ~ ~ ~ minecraft:bell[facing=south] unless block ~ ~ ~ minecraft:bell[attachment=ceiling] run function rc_lib:special/branch3/bell/south
function rc_lib:special/3