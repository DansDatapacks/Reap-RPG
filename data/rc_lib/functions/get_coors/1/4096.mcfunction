scoreboard players set scale rc_lib.var 4096
scoreboard players set -scale rc_lib.var -4096
execute store result score x_start rc_lib.var run data get entity @s Pos[0] 4096
execute store result score y_start rc_lib.var run data get entity @s Pos[1] 4096
execute store result score z_start rc_lib.var run data get entity @s Pos[2] 4096
tp @s ^ ^ ^1
execute store result score x_vec rc_lib.var run data get entity @s Pos[0] 4096
execute store result score y_vec rc_lib.var run data get entity @s Pos[1] 4096
execute store result score z_vec rc_lib.var run data get entity @s Pos[2] 4096