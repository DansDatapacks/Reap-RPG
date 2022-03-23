execute if score scale rc_lib.var matches 32768 run function rc_lib:get_coors/2/32768
execute if score scale rc_lib.var matches 16384 run function rc_lib:get_coors/2/16384
execute if score scale rc_lib.var matches 8192 run function rc_lib:get_coors/2/8192
execute if score scale rc_lib.var matches 4096 run function rc_lib:get_coors/2/4096
execute if score scale rc_lib.var matches 2048 run function rc_lib:get_coors/2/2048
execute if score scale rc_lib.var matches 1024 run function rc_lib:get_coors/2/1024
execute if score scale rc_lib.var matches 512 run function rc_lib:get_coors/2/512
execute if score scale rc_lib.var matches 256 run function rc_lib:get_coors/2/256
execute if score scale rc_lib.var matches 128 run function rc_lib:get_coors/2/128
execute if score scale rc_lib.var matches 64 run function rc_lib:get_coors/2/64
scoreboard players operation x_first rc_lib.var -= x_start rc_lib.var
scoreboard players operation y_first rc_lib.var -= y_start rc_lib.var
scoreboard players operation z_first rc_lib.var -= z_start rc_lib.var