scoreboard players operation x_temp rc_lib.var = x_xor rc_lib.var
scoreboard players operation z_temp rc_lib.var = z_xor rc_lib.var
scoreboard players operation x_xor rc_lib.var /= 2 rc_lib.con
scoreboard players operation z_xor rc_lib.var /= 2 rc_lib.con
scoreboard players operation x_temp rc_lib.var %= 2 rc_lib.con
scoreboard players operation z_temp rc_lib.var %= 2 rc_lib.con
execute unless score x_temp rc_lib.var = z_temp rc_lib.var run scoreboard players operation i rc_lib.var += i+ rc_lib.var
scoreboard players operation i+ rc_lib.var *= 2 rc_lib.con
execute unless score x_xor rc_lib.var matches 0 run function rc_lib:special/plants/flowers/xor
execute unless score z_xor rc_lib.var matches 0 run function rc_lib:special/plants/flowers/xor