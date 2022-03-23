execute store result entity @s Rotation[0] float 1.8 run scoreboard players get temp rc_lib.var
execute positioned 0.0 0.0 0.0 rotated as @s run tp @s ^ ^ ^1
execute store result score temp rc_lib.var run data get entity @s Pos[0] 640
tp @s ~ ~ ~
tag @s remove rc_lib.temp
kill @s