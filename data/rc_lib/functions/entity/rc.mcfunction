scoreboard players operation ll rc_lib.var = x_first rc_lib.var
execute if score x_vec rc_lib.var matches 1.. run scoreboard players operation ll rc_lib.var -= wide rc_lib.var
execute if score x_vec rc_lib.var matches ..-1 run scoreboard players operation ll rc_lib.var += wide rc_lib.var
execute if score x_vec rc_lib.var matches ..-1 run scoreboard players operation ll rc_lib.var *= -1 rc_lib.con
scoreboard players operation temp rc_lib.var = ll rc_lib.var
scoreboard players operation ll rc_lib.var /= scale rc_lib.var
scoreboard players operation ll rc_lib.var *= x_l+ rc_lib.var
scoreboard players operation temp rc_lib.var %= scale rc_lib.var
scoreboard players operation temp rc_lib.var *= scale rc_lib.var
scoreboard players operation temp rc_lib.var /= x_vec rc_lib.var
execute if score x_vec rc_lib.var matches ..-1 run scoreboard players operation temp rc_lib.var *= -1 rc_lib.con
scoreboard players operation ll rc_lib.var += temp rc_lib.var
execute if score ll rc_lib.var matches 0.. if score ll rc_lib.var < l_max rc_lib.var run function rc_lib:entity/x
scoreboard players operation ll rc_lib.var = y_first rc_lib.var
execute if score y_vec rc_lib.var matches ..-1 run scoreboard players operation ll rc_lib.var += tall rc_lib.var
execute if score y_vec rc_lib.var matches ..-1 run scoreboard players operation ll rc_lib.var *= -1 rc_lib.con
scoreboard players operation temp rc_lib.var = ll rc_lib.var
scoreboard players operation ll rc_lib.var /= scale rc_lib.var
scoreboard players operation ll rc_lib.var *= y_l+ rc_lib.var
scoreboard players operation temp rc_lib.var %= scale rc_lib.var
scoreboard players operation temp rc_lib.var *= scale rc_lib.var
scoreboard players operation temp rc_lib.var /= y_vec rc_lib.var
execute if score y_vec rc_lib.var matches ..-1 run scoreboard players operation temp rc_lib.var *= -1 rc_lib.con
scoreboard players operation ll rc_lib.var += temp rc_lib.var
execute if score ll rc_lib.var matches 0.. if score ll rc_lib.var < l_max rc_lib.var run function rc_lib:entity/y
scoreboard players operation ll rc_lib.var = z_first rc_lib.var
execute if score z_vec rc_lib.var matches 1.. run scoreboard players operation ll rc_lib.var -= wide rc_lib.var
execute if score z_vec rc_lib.var matches ..-1 run scoreboard players operation ll rc_lib.var += wide rc_lib.var
execute if score z_vec rc_lib.var matches ..-1 run scoreboard players operation ll rc_lib.var *= -1 rc_lib.con
scoreboard players operation temp rc_lib.var = ll rc_lib.var
scoreboard players operation ll rc_lib.var /= scale rc_lib.var
scoreboard players operation ll rc_lib.var *= z_l+ rc_lib.var
scoreboard players operation temp rc_lib.var %= scale rc_lib.var
scoreboard players operation temp rc_lib.var *= scale rc_lib.var
scoreboard players operation temp rc_lib.var /= z_vec rc_lib.var
execute if score z_vec rc_lib.var matches ..-1 run scoreboard players operation temp rc_lib.var *= -1 rc_lib.con
scoreboard players operation ll rc_lib.var += temp rc_lib.var
execute if score ll rc_lib.var matches 0.. if score ll rc_lib.var < l_max rc_lib.var run function rc_lib:entity/z