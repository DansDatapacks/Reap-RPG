scoreboard players operation x_start rc_lib.var += x_hit rc_lib.var
scoreboard players operation y_start rc_lib.var += y_hit rc_lib.var
scoreboard players operation z_start rc_lib.var += z_hit rc_lib.var
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:0, Tags:["rc_lib.locate","rclRemove"]}
execute as @e[type=minecraft:area_effect_cloud,tag=rclRemove,limit=1] run function rc_lib:cloud/position