scoreboard players set x_min rc_lib.var 28
scoreboard players set x_max rc_lib.var 36
scoreboard players set z_min rc_lib.var 28
scoreboard players set z_max rc_lib.var 36
function rc_lib:special/2/y
execute if block ~ ~ ~ #rc_lib:panes[east=true] run function rc_lib:special/connect/panes/east
execute if block ~ ~ ~ #rc_lib:panes[north=true] run function rc_lib:special/connect/panes/north
execute if block ~ ~ ~ #rc_lib:panes[west=true] run function rc_lib:special/connect/panes/west
execute if block ~ ~ ~ #rc_lib:panes[south=true] run function rc_lib:special/connect/panes/south