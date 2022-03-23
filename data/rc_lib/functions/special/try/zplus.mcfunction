scoreboard players operation z_next rc_lib.var = z_min rc_lib.var
scoreboard players operation ll rc_lib.var = z_min rc_lib.var
scoreboard players operation ll rc_lib.var -= z_first rc_lib.var
scoreboard players operation ll rc_lib.var *= scale rc_lib.var
scoreboard players operation ll rc_lib.var /= z_vec rc_lib.var
execute if score ll rc_lib.var <= x_l+ rc_lib.var if score ll rc_lib.var <= y_l+ rc_lib.var if score ll rc_lib.var < l_add rc_lib.var run function rc_lib:special/set/z