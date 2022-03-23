scoreboard players operation x_min rc_lib.var *= scale rc_lib.var
scoreboard players operation x_max rc_lib.var *= scale rc_lib.var
scoreboard players operation y_min rc_lib.var *= scale rc_lib.var
scoreboard players operation y_max rc_lib.var *= scale rc_lib.var
scoreboard players operation x_min rc_lib.var /= 64 rc_lib.con
scoreboard players operation x_max rc_lib.var /= 64 rc_lib.con
scoreboard players operation y_min rc_lib.var /= 64 rc_lib.con
scoreboard players operation y_max rc_lib.var /= 64 rc_lib.con
scoreboard players set z_min rc_lib.var 0
scoreboard players operation z_max rc_lib.var = scale rc_lib.var
scoreboard players remove z_max rc_lib.var 1
execute if score x_first rc_lib.var >= x_min rc_lib.var if score x_first rc_lib.var <= x_max rc_lib.var if score y_first rc_lib.var >= y_min rc_lib.var if score y_first rc_lib.var <= y_max rc_lib.var run function rc_lib:special/set/first
execute if score x_first rc_lib.var < x_min rc_lib.var if score x_vec rc_lib.var matches 1.. run function rc_lib:special/try/xplus
execute if score x_first rc_lib.var > x_max rc_lib.var if score x_vec rc_lib.var matches ..-1 run function rc_lib:special/try/xminus
execute if score y_first rc_lib.var < y_min rc_lib.var if score y_vec rc_lib.var matches 1.. run function rc_lib:special/try/yplus
execute if score y_first rc_lib.var > y_max rc_lib.var if score y_vec rc_lib.var matches ..-1 run function rc_lib:special/try/yminus