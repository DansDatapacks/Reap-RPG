execute store result score wide rc_lib.var run data get entity @s Size 333
scoreboard players add wide rc_lib.var 333
scoreboard players operation tall rc_lib.var = wide rc_lib.var
scoreboard players operation tall rc_lib.var *= 2 rc_lib.con