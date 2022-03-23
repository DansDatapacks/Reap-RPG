scoreboard players set y_min rc_lib.var 24
scoreboard players set y_max rc_lib.var 40
execute if block ~ ~ ~ #rc_lib:buttons[facing=east] run function rc_lib:special/redstone/wall_buttons/east
execute if block ~ ~ ~ #rc_lib:buttons[facing=north] run function rc_lib:special/redstone/wall_buttons/north
execute if block ~ ~ ~ #rc_lib:buttons[facing=west] run function rc_lib:special/redstone/wall_buttons/west
execute if block ~ ~ ~ #rc_lib:buttons[facing=south] run function rc_lib:special/redstone/wall_buttons/south
function rc_lib:special/3