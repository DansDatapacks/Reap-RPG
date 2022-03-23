execute if score scale rc_lib.var matches 32768 run function rc_lib:cloud/32768
execute if score scale rc_lib.var matches 16384 run function rc_lib:cloud/16384
execute if score scale rc_lib.var matches 8192 run function rc_lib:cloud/8192
execute if score scale rc_lib.var matches 4096 run function rc_lib:cloud/4096
execute if score scale rc_lib.var matches 2048 run function rc_lib:cloud/2048
execute if score scale rc_lib.var matches 1024 run function rc_lib:cloud/1024
execute if score scale rc_lib.var matches 512 run function rc_lib:cloud/512
execute if score scale rc_lib.var matches 256 run function rc_lib:cloud/256
execute if score scale rc_lib.var matches 128 run function rc_lib:cloud/128
execute if score scale rc_lib.var matches 64 run function rc_lib:cloud/64
execute if score x_hit rc_lib.var = scale rc_lib.var if score limit rc_lib.var matches 1 unless score cast_type rc_lib.setting matches 2 at @s run tp @s ~-0.00000095367431640625 ~ ~
execute if score y_hit rc_lib.var = scale rc_lib.var if score limit rc_lib.var matches 1 unless score cast_type rc_lib.setting matches 2 at @s run tp @s ~ ~-0.00000095367431640625 ~
execute if score z_hit rc_lib.var = scale rc_lib.var if score limit rc_lib.var matches 1 unless score cast_type rc_lib.setting matches 2 at @s run tp @s ~ ~ ~-0.00000095367431640625
tag @s remove rclRemove