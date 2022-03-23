scoreboard players set wide rc_lib.var 384
execute if entity @s[type=#rc_lib:blaze] run scoreboard players set tall rc_lib.var 2304
execute if entity @s[type=#rc_lib:cat] run scoreboard players set tall rc_lib.var 896
execute if entity @s[type=#rc_lib:skeleton] run scoreboard players set tall rc_lib.var 2548
execute if entity @s[type=#rc_lib:zombie] run scoreboard players set tall rc_lib.var 2497
execute if entity @s[type=#rc_lib:zombie,nbt={IsBaby:1b}] run function rc_lib:entity/branch/baby
execute if entity @s[type=minecraft:creeper] run scoreboard players set tall rc_lib.var 2177
execute if entity @s[type=minecraft:enderman] run scoreboard players set tall rc_lib.var 3713
execute if entity @s[type=minecraft:wolf] run scoreboard players set tall rc_lib.var 1089