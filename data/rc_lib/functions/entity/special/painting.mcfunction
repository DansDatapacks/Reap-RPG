execute store result score x_first rc_lib.var run data get entity @s TileX 1
scoreboard players operation x_first rc_lib.var *= scale rc_lib.var
execute store result score y_first rc_lib.var run data get entity @s TileY 1
scoreboard players operation y_first rc_lib.var *= scale rc_lib.var
execute store result score z_first rc_lib.var run data get entity @s TileZ 1
scoreboard players operation z_first rc_lib.var *= scale rc_lib.var
scoreboard players operation x_first rc_lib.var -= x_start rc_lib.var
scoreboard players operation y_first rc_lib.var -= y_start rc_lib.var
scoreboard players operation z_first rc_lib.var -= z_start rc_lib.var
execute store result score temp rc_lib.var run data get entity @s Facing 1
execute if score temp rc_lib.var matches 0 run function rc_lib:entity/special/painting/z
execute if score temp rc_lib.var matches 1 run function rc_lib:entity/special/painting/x
execute if score temp rc_lib.var matches 2 run function rc_lib:entity/special/painting/z
execute if score temp rc_lib.var matches 3 run function rc_lib:entity/special/painting/x