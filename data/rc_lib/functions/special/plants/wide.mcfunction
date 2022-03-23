scoreboard players set x_min rc_lib.var 8
scoreboard players set x_max rc_lib.var 56
scoreboard players set y_min rc_lib.var 0
scoreboard players set y_max rc_lib.var 0
scoreboard players set z_min rc_lib.var 8
scoreboard players set z_max rc_lib.var 56
execute if block ~ ~ ~ #rc_lib:saplings run scoreboard players set y_max rc_lib.var 48
execute if block ~ ~ ~ #rc_lib:shrubs run scoreboard players set y_max rc_lib.var 52
execute if block ~ ~ ~ #rc_lib:corals run scoreboard players set y_max rc_lib.var 60
execute if block ~ ~ ~ #rc_lib:coral_fans run scoreboard players set y_max rc_lib.var 15
execute if score y_max rc_lib.var matches 0 run function rc_lib:special/2/y
execute unless score y_max rc_lib.var matches 0 run function rc_lib:special/3