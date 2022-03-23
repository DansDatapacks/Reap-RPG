execute store result score wide rc_lib.var run data get entity @s Radius 1280
execute if score wide rc_lib.var matches 0 run scoreboard players set wide rc_lib.var -1
scoreboard players set tall rc_lib.var 640