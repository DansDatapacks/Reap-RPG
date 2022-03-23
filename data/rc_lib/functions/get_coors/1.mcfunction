execute store result score x_it rc_lib.var run data get entity @s Pos[0] 1
execute store result score z_it rc_lib.var run data get entity @s Pos[2] 1
execute if score x_it rc_lib.var matches ..-1 run scoreboard players operation x_it rc_lib.var *= -1 rc_lib.con
execute if score z_it rc_lib.var matches ..-1 run scoreboard players operation z_it rc_lib.var *= -1 rc_lib.con
scoreboard players operation x_it rc_lib.var > z_it rc_lib.var
scoreboard players operation temp rc_lib.var = d_max rc_lib.setting
scoreboard players operation temp rc_lib.var /= 100 rc_lib.con
scoreboard players add temp rc_lib.var 100
scoreboard players operation temp rc_lib.var += x_it rc_lib.var
execute if score temp rc_lib.var matches ..65535 run function rc_lib:get_coors/1/32768
execute if score temp rc_lib.var matches 65536..131071 run function rc_lib:get_coors/1/16384
execute if score temp rc_lib.var matches 131072..262143 run function rc_lib:get_coors/1/8192
execute if score temp rc_lib.var matches 262144..524287 run function rc_lib:get_coors/1/4096
execute if score temp rc_lib.var matches 524288..1048575 run function rc_lib:get_coors/1/2048
execute if score temp rc_lib.var matches 1048576..2097151 run function rc_lib:get_coors/1/1024
execute if score temp rc_lib.var matches 2097152..4194303 run function rc_lib:get_coors/1/512
execute if score temp rc_lib.var matches 4194304..8388607 run function rc_lib:get_coors/1/256
execute if score temp rc_lib.var matches 8388608..16777215 run function rc_lib:get_coors/1/128
execute if score temp rc_lib.var matches 16777216.. run function rc_lib:get_coors/1/64
tp @s ~ ~ ~
tag @s remove rc_lib.temp
kill @s