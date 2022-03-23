execute if score y_vec rc_lib.var matches 0.. run scoreboard players set y_next rc_lib.var 0
execute if score y_vec rc_lib.var matches ..-1 run scoreboard players operation y_next rc_lib.var = tall rc_lib.var
scoreboard players operation x_next rc_lib.var = ll rc_lib.var
scoreboard players operation z_next rc_lib.var = ll rc_lib.var
scoreboard players operation x_next rc_lib.var /= x_l+ rc_lib.var
scoreboard players operation z_next rc_lib.var /= z_l+ rc_lib.var
scoreboard players operation x_next rc_lib.var *= scale rc_lib.var
scoreboard players operation z_next rc_lib.var *= scale rc_lib.var
execute if score x_vec rc_lib.var matches ..-1 run scoreboard players operation x_next rc_lib.var *= -1 rc_lib.con
execute if score z_vec rc_lib.var matches ..-1 run scoreboard players operation z_next rc_lib.var *= -1 rc_lib.con
scoreboard players operation x_temp rc_lib.var = ll rc_lib.var
scoreboard players operation z_temp rc_lib.var = ll rc_lib.var
scoreboard players operation x_temp rc_lib.var %= x_l+ rc_lib.var
scoreboard players operation z_temp rc_lib.var %= z_l+ rc_lib.var
scoreboard players operation x_temp rc_lib.var *= x_vec rc_lib.var
scoreboard players operation z_temp rc_lib.var *= z_vec rc_lib.var
scoreboard players operation x_temp rc_lib.var /= scale rc_lib.var
scoreboard players operation z_temp rc_lib.var /= scale rc_lib.var
scoreboard players operation x_next rc_lib.var += x_temp rc_lib.var
scoreboard players operation z_next rc_lib.var += z_temp rc_lib.var
scoreboard players operation x_next rc_lib.var -= x_first rc_lib.var
scoreboard players operation z_next rc_lib.var -= z_first rc_lib.var
execute if score x_next rc_lib.var >= -wide rc_lib.var if score x_next rc_lib.var <= wide rc_lib.var if score z_next rc_lib.var >= -wide rc_lib.var if score z_next rc_lib.var <= wide rc_lib.var run function rc_lib:entity/hit