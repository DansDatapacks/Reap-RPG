execute if block ~ ~ ~ #rc_lib:stairs[half=bottom] run scoreboard players set y_min rc_lib.var 0
execute if block ~ ~ ~ #rc_lib:stairs[half=bottom] run scoreboard players set y_max rc_lib.var 32
execute if block ~ ~ ~ #rc_lib:stairs[half=top] run scoreboard players set y_min rc_lib.var 32
execute if block ~ ~ ~ #rc_lib:stairs[half=top] run scoreboard players set y_max rc_lib.var 64
function rc_lib:special/1/y
execute if block ~ ~ ~ #rc_lib:stairs[shape=outer_left] run function rc_lib:special/branch1/stairs/outer
execute if block ~ ~ ~ #rc_lib:stairs[shape=outer_right] run function rc_lib:special/branch1/stairs/outer
execute unless block ~ ~ ~ #rc_lib:stairs[shape=outer_left] unless block ~ ~ ~ #rc_lib:stairs[shape=outer_right] run function rc_lib:special/branch1/stairs/branch