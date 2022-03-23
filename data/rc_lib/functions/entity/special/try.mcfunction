scoreboard players set x_min 0
scoreboard players set x_max -1
execute unless entity @s[type=minecraft:painting] run function rc_lib:get_coors/2
execute if entity @s[type=minecraft:item_frame] run function rc_lib:entity/special/item_frame
execute if entity @s[type=minecraft:leash_knot] run function rc_lib:entity/special/leash_knot
execute if entity @s[type=minecraft:painting] run function rc_lib:entity/special/painting
execute if entity @s[type=minecraft:shulker] run function rc_lib:entity/special/shulker
scoreboard players operation x_min rc_lib.var *= scale rc_lib.var
scoreboard players operation x_max rc_lib.var *= scale rc_lib.var
scoreboard players operation y_min rc_lib.var *= scale rc_lib.var
scoreboard players operation y_max rc_lib.var *= scale rc_lib.var
scoreboard players operation z_min rc_lib.var *= scale rc_lib.var
scoreboard players operation z_max rc_lib.var *= scale rc_lib.var
scoreboard players operation x_min rc_lib.var /= 1280 rc_lib.con
scoreboard players operation x_max rc_lib.var /= 1280 rc_lib.con
scoreboard players operation y_min rc_lib.var /= 1280 rc_lib.con
scoreboard players operation y_max rc_lib.var /= 1280 rc_lib.con
scoreboard players operation z_min rc_lib.var /= 1280 rc_lib.con
scoreboard players operation z_max rc_lib.var /= 1280 rc_lib.con
scoreboard players set -wide rc_lib.var 0
scoreboard players operation -wide rc_lib.var -= wide rc_lib.var
scoreboard players set -tall rc_lib.var 0
scoreboard players operation -tall rc_lib.var -= tall rc_lib.var
scoreboard players operation x_first rc_lib.var *= -1 rc_lib.con
scoreboard players operation y_first rc_lib.var *= -1 rc_lib.con
scoreboard players operation z_first rc_lib.var *= -1 rc_lib.con
scoreboard players set temp rc_lib.var 0
execute unless score first rc_lib.setting matches 0 if score x_first rc_lib.var >= x_min rc_lib.var if score x_first rc_lib.var <= x_max rc_lib.var if score y_first rc_lib.var >= y_min rc_lib.var if score y_first rc_lib.var <= y_max rc_lib.var if score z_first rc_lib.var >= z_min rc_lib.var if score z_first rc_lib.var <= z_max rc_lib.var run scoreboard players set temp rc_lib.var 1
scoreboard players operation x_first rc_lib.var *= -1 rc_lib.con
scoreboard players operation y_first rc_lib.var *= -1 rc_lib.con
scoreboard players operation z_first rc_lib.var *= -1 rc_lib.con
execute if score temp rc_lib.var matches 1 run function rc_lib:entity/inside
execute if score temp rc_lib.var matches 0 run function rc_lib:entity/special/rc