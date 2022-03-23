scoreboard players set wide rc_lib.var 768
scoreboard players set tall rc_lib.var 513
execute store result score temp rc_lib.var run data get entity @s Age 1
execute if score temp rc_lib.var matches ..-1 run scoreboard players set wide rc_lib.var 230
execute if score temp rc_lib.var matches ..-1 run scoreboard players set tall rc_lib.var 154