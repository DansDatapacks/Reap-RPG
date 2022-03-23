execute if block ~ ~ ~ #rc_lib:buttons[face=floor] run scoreboard players set y_min rc_lib.var 0
execute if block ~ ~ ~ #rc_lib:buttons[face=floor] run scoreboard players set y_max rc_lib.var 8
execute if block ~ ~ ~ #rc_lib:buttons[face=floor,powered=true] run scoreboard players set y_max rc_lib.var 4
execute if block ~ ~ ~ #rc_lib:buttons[face=ceiling] run scoreboard players set y_min rc_lib.var 56
execute if block ~ ~ ~ #rc_lib:buttons[face=ceiling,powered=true] run scoreboard players set y_min rc_lib.var 60
execute if block ~ ~ ~ #rc_lib:buttons[face=ceiling] run scoreboard players set y_max rc_lib.var 64
execute unless block ~ ~ ~ #rc_lib:buttons[facing=north] unless block ~ ~ ~ #rc_lib:buttons[facing=south] run function rc_lib:special/redstone/floor_buttons/z
execute unless block ~ ~ ~ #rc_lib:buttons[facing=east] unless block ~ ~ ~ #rc_lib:buttons[facing=west] run function rc_lib:special/redstone/floor_buttons/x
function rc_lib:special/3