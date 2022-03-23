scoreboard players set limit rc_lib.var 3
execute if score x_vec rc_lib.var matches 0.. run scoreboard players set x_hit rc_lib.var 2147483647
execute if score x_vec rc_lib.var matches ..-1 run scoreboard players set x_hit rc_lib.var -2147483648
execute if score y_vec rc_lib.var matches 0.. run scoreboard players set y_hit rc_lib.var 2147483647
execute if score y_vec rc_lib.var matches ..-1 run scoreboard players set y_hit rc_lib.var -2147483648
execute if score z_vec rc_lib.var matches 0.. run scoreboard players set z_hit rc_lib.var 2147483647
execute if score z_vec rc_lib.var matches ..-1 run scoreboard players set z_hit rc_lib.var -2147483648