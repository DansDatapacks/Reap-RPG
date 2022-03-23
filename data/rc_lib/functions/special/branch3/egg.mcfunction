scoreboard players set y_min rc_lib.var 0
scoreboard players set y_max rc_lib.var 28
execute if block ~ ~ ~ minecraft:turtle_egg[eggs=1] run function rc_lib:special/branch3/egg/1
execute unless block ~ ~ ~ minecraft:turtle_egg[eggs=1] run function rc_lib:special/branch3/egg/2
function rc_lib:special/3