scoreboard players set y_min rc_lib.var 12
scoreboard players set y_max rc_lib.var 52
execute if block ~ ~ ~ #rc_lib:wall_torches[facing=east] run function rc_lib:special/branch1/wall_torches/east
execute if block ~ ~ ~ #rc_lib:wall_torches[facing=north] run function rc_lib:special/branch1/wall_torches/north
execute if block ~ ~ ~ #rc_lib:wall_torches[facing=west] run function rc_lib:special/branch1/wall_torches/west
execute if block ~ ~ ~ #rc_lib:wall_torches[facing=south] run function rc_lib:special/branch1/wall_torches/south
function rc_lib:special/3