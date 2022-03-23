scoreboard players set y_min rc_lib.var 0
scoreboard players set y_max rc_lib.var 64
execute if block ~ ~ ~ minecraft:nether_portal[axis=z] run function rc_lib:special/branch1/gates/z
execute if block ~ ~ ~ minecraft:nether_portal[axis=x] run function rc_lib:special/branch1/gates/x