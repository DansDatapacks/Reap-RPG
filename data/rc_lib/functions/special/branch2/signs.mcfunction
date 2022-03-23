scoreboard players set y_min rc_lib.var 0
execute if block ~ ~ ~ #rc_lib:wall_signs run scoreboard players set y_min rc_lib.var 18
scoreboard players set y_max rc_lib.var 50
execute if block ~ ~ ~ #rc_lib:walled[facing=east] run function rc_lib:special/branch2/signs/east
execute if block ~ ~ ~ #rc_lib:walled[facing=north] run function rc_lib:special/branch2/signs/north
execute if block ~ ~ ~ #rc_lib:walled[facing=west] run function rc_lib:special/branch2/signs/west
execute if block ~ ~ ~ #rc_lib:walled[facing=south] run function rc_lib:special/branch2/signs/south