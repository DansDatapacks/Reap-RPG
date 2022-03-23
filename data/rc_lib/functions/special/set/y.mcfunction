scoreboard players operation x_next rc_lib.var = x_vec rc_lib.var
scoreboard players operation z_next rc_lib.var = z_vec rc_lib.var
scoreboard players operation x_next rc_lib.var *= ll rc_lib.var
scoreboard players operation z_next rc_lib.var *= ll rc_lib.var
scoreboard players operation x_next rc_lib.var /= scale rc_lib.var
scoreboard players operation z_next rc_lib.var /= scale rc_lib.var
scoreboard players operation x_next rc_lib.var += x_first rc_lib.var
scoreboard players operation z_next rc_lib.var += z_first rc_lib.var
execute if score y_vec rc_lib.var matches 1.. run scoreboard players set face rc_lib.var 1
execute if score y_vec rc_lib.var matches ..-1 run scoreboard players set face rc_lib.var 2
execute if score x_next rc_lib.var >= x_min rc_lib.var if score x_next rc_lib.var <= x_max rc_lib.var if score z_next rc_lib.var >= z_min rc_lib.var if score z_next rc_lib.var <= z_max rc_lib.var run function rc_lib:special/set/next