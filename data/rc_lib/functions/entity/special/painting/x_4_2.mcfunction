scoreboard players set y_min rc_lib.var 0
scoreboard players set y_max rc_lib.var 2560
execute if score temp rc_lib.var matches 3 run scoreboard players set z_min rc_lib.var -2560
execute if score temp rc_lib.var matches 3 run scoreboard players set z_max rc_lib.var 2560
execute if score temp rc_lib.var matches 1 run scoreboard players set z_min rc_lib.var -1280
execute if score temp rc_lib.var matches 1 run scoreboard players set z_max rc_lib.var 3840