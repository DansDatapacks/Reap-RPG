scoreboard players set hit_type rc_lib.return 1
scoreboard players operation l_max rc_lib.var < x_l rc_lib.var
scoreboard players operation l_max rc_lib.var < y_l rc_lib.var
scoreboard players operation l_max rc_lib.var < z_l rc_lib.var
scoreboard players operation l_max rc_lib.var += l_add rc_lib.var
execute if score face rc_lib.return matches 7 run scoreboard players set l_max rc_lib.var 0