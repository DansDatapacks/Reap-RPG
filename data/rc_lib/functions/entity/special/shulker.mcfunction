scoreboard players set x_min rc_lib.var -640
scoreboard players set x_max rc_lib.var 640
scoreboard players set y_min rc_lib.var 0
scoreboard players set y_max rc_lib.var 1280
scoreboard players set z_min rc_lib.var -640
scoreboard players set z_max rc_lib.var 640
execute store result score temp rc_lib.var run data get entity @s Peek 1
scoreboard players add temp rc_lib.var 50
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["rc_lib.temp"]}
execute as @e[type=minecraft:area_effect_cloud,tag=rc_lib.temp,limit=1] run function rc_lib:entity/special/sin_pix
scoreboard players add temp rc_lib.var 640
execute if entity @s[nbt={AttachFace:0b}] run scoreboard players operation y_max rc_lib.var += temp rc_lib.var
execute if entity @s[nbt={AttachFace:1b}] run scoreboard players operation y_min rc_lib.var -= temp rc_lib.var
execute if entity @s[nbt={AttachFace:2b}] run scoreboard players operation z_max rc_lib.var += temp rc_lib.var
execute if entity @s[nbt={AttachFace:3b}] run scoreboard players operation z_min rc_lib.var -= temp rc_lib.var
execute if entity @s[nbt={AttachFace:4b}] run scoreboard players operation x_max rc_lib.var += temp rc_lib.var
execute if entity @s[nbt={AttachFace:5b}] run scoreboard players operation x_min rc_lib.var -= temp rc_lib.var