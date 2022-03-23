scoreboard players set wide rc_lib.var 448
execute if entity @s[nbt={PuffState:0}] run scoreboard players set wide rc_lib.var 224
execute if entity @s[nbt={PuffState:1}] run scoreboard players set wide rc_lib.var 314
scoreboard players operation tall rc_lib.var = wide rc_lib.var
scoreboard players operation tall rc_lib.var *= 2 rc_lib.con