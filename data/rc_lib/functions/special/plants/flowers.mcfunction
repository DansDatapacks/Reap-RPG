scoreboard players set x_min rc_lib.var 4
scoreboard players set x_max rc_lib.var 28
scoreboard players set y_min rc_lib.var 0
scoreboard players set y_max rc_lib.var 40
scoreboard players set z_min rc_lib.var 4
scoreboard players set z_max rc_lib.var 28
execute if block ~ ~ ~ minecraft:bamboo run scoreboard players set y_max rc_lib.var 64
execute if block ~ ~ ~ minecraft:bamboo_sapling run function rc_lib:special/plants/flowers/bamboo
scoreboard players operation x_min rc_lib.var *= scale rc_lib.var
scoreboard players operation x_max rc_lib.var *= scale rc_lib.var
scoreboard players operation y_min rc_lib.var *= scale rc_lib.var
scoreboard players operation y_max rc_lib.var *= scale rc_lib.var
scoreboard players operation z_min rc_lib.var *= scale rc_lib.var
scoreboard players operation z_max rc_lib.var *= scale rc_lib.var
scoreboard players operation x_min rc_lib.var /= 64 rc_lib.con
scoreboard players operation x_max rc_lib.var /= 64 rc_lib.con
scoreboard players operation y_min rc_lib.var /= 64 rc_lib.con
scoreboard players operation y_max rc_lib.var /= 64 rc_lib.con
scoreboard players operation z_min rc_lib.var /= 64 rc_lib.con
scoreboard players operation z_max rc_lib.var /= 64 rc_lib.con
scoreboard players operation x_xor rc_lib.var = x_start rc_lib.var
scoreboard players operation z_xor rc_lib.var = z_start rc_lib.var
scoreboard players operation x_xor rc_lib.var /= scale rc_lib.var
scoreboard players operation z_xor rc_lib.var /= scale rc_lib.var
execute if score x_vec rc_lib.var matches 1.. run scoreboard players operation x_xor rc_lib.var += x_add rc_lib.var
execute if score x_vec rc_lib.var matches ..-1 run scoreboard players operation x_xor rc_lib.var -= x_add rc_lib.var
execute if score z_vec rc_lib.var matches 1.. run scoreboard players operation z_xor rc_lib.var += z_add rc_lib.var
execute if score z_vec rc_lib.var matches ..-1 run scoreboard players operation z_xor rc_lib.var -= z_add rc_lib.var
scoreboard players operation x_xor rc_lib.var *= 3129871 rc_lib.con
scoreboard players operation z_xor rc_lib.var *= 116129781 rc_lib.con
scoreboard players operation x_xor rc_lib.var %= 268435456 rc_lib.con
scoreboard players operation z_xor rc_lib.var %= 268435456 rc_lib.con
scoreboard players set i rc_lib.var 0
scoreboard players set i+ rc_lib.var 1
function rc_lib:special/plants/flowers/xor
scoreboard players operation j rc_lib.var = i rc_lib.var
scoreboard players operation i rc_lib.var *= j rc_lib.var
scoreboard players operation i rc_lib.var *= 42317861 rc_lib.con
scoreboard players operation j rc_lib.var *= 11 rc_lib.con
scoreboard players operation i rc_lib.var += j rc_lib.var
scoreboard players operation i rc_lib.var %= 268435456 rc_lib.con
scoreboard players operation i rc_lib.var /= 65536 rc_lib.con
scoreboard players operation x_offset rc_lib.var = i rc_lib.var
scoreboard players operation x_offset rc_lib.var %= 16 rc_lib.con
scoreboard players operation x_offset rc_lib.var *= scale rc_lib.var
scoreboard players operation x_offset rc_lib.var /= 30 rc_lib.con
scoreboard players operation i rc_lib.var /= 256 rc_lib.con
scoreboard players operation z_offset rc_lib.var = i rc_lib.var
scoreboard players operation z_offset rc_lib.var %= 16 rc_lib.con
scoreboard players operation z_offset rc_lib.var *= scale rc_lib.var
scoreboard players operation z_offset rc_lib.var /= 30 rc_lib.con
scoreboard players operation x_min rc_lib.var += x_offset rc_lib.var
scoreboard players operation x_max rc_lib.var += x_offset rc_lib.var
scoreboard players operation z_min rc_lib.var += z_offset rc_lib.var
scoreboard players operation z_max rc_lib.var += z_offset rc_lib.var
execute if score x_first rc_lib.var >= x_min rc_lib.var if score x_first rc_lib.var <= x_max rc_lib.var if score y_first rc_lib.var >= y_min rc_lib.var if score y_first rc_lib.var <= y_max rc_lib.var if score z_first rc_lib.var >= z_min rc_lib.var if score z_first rc_lib.var <= z_max rc_lib.var run function rc_lib:special/set/first
execute if score x_first rc_lib.var < x_min rc_lib.var if score x_vec rc_lib.var matches 1.. run function rc_lib:special/try/xplus
execute if score x_first rc_lib.var > x_max rc_lib.var if score x_vec rc_lib.var matches ..-1 run function rc_lib:special/try/xminus
execute if score y_first rc_lib.var < y_min rc_lib.var if score y_vec rc_lib.var matches 1.. run function rc_lib:special/try/yplus
execute if score y_first rc_lib.var > y_max rc_lib.var if score y_vec rc_lib.var matches ..-1 run function rc_lib:special/try/yminus
execute if score z_first rc_lib.var < z_min rc_lib.var if score z_vec rc_lib.var matches 1.. run function rc_lib:special/try/zplus
execute if score z_first rc_lib.var > z_max rc_lib.var if score z_vec rc_lib.var matches ..-1 run function rc_lib:special/try/zminus