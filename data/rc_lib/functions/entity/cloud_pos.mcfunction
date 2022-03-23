scoreboard players set limit rc_lib.var 2
scoreboard players operation x_next rc_lib.var += x_first rc_lib.var
scoreboard players operation y_next rc_lib.var += y_first rc_lib.var
scoreboard players operation z_next rc_lib.var += z_first rc_lib.var
execute if score x_vec rc_lib.var matches 0.. run scoreboard players operation x_hit rc_lib.var < x_next rc_lib.var
execute if score x_vec rc_lib.var matches ..-1 run scoreboard players operation x_hit rc_lib.var > x_next rc_lib.var
execute if score y_vec rc_lib.var matches 0.. run scoreboard players operation y_hit rc_lib.var < y_next rc_lib.var
execute if score y_vec rc_lib.var matches ..-1 run scoreboard players operation y_hit rc_lib.var > y_next rc_lib.var
execute if score z_vec rc_lib.var matches 0.. run scoreboard players operation z_hit rc_lib.var < z_next rc_lib.var
execute if score z_vec rc_lib.var matches ..-1 run scoreboard players operation z_hit rc_lib.var > z_next rc_lib.var