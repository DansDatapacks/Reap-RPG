scoreboard players set y_min rc_lib.var 16
scoreboard players set y_max rc_lib.var 48
execute if block ~ ~ ~ #rc_lib:wall_heads[facing=east] run function rc_lib:special/branch2/wall_heads/east
execute if block ~ ~ ~ #rc_lib:wall_heads[facing=north] run function rc_lib:special/branch2/wall_heads/north
execute if block ~ ~ ~ #rc_lib:wall_heads[facing=west] run function rc_lib:special/branch2/wall_heads/west
execute if block ~ ~ ~ #rc_lib:wall_heads[facing=south] run function rc_lib:special/branch2/wall_heads/south
function rc_lib:special/3