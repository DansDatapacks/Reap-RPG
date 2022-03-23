execute if score temp rc_lib.var matches 0 run scoreboard players set z_min rc_lib.var 0
execute if score temp rc_lib.var matches 0 run scoreboard players set z_max rc_lib.var 80
execute if score temp rc_lib.var matches 2 run scoreboard players set z_min rc_lib.var 1200
execute if score temp rc_lib.var matches 2 run scoreboard players set z_max rc_lib.var 1280
execute if entity @s[nbt={Motive:"minecraft:kebab"}] run function rc_lib:entity/special/painting/z_1_1
execute if entity @s[nbt={Motive:"minecraft:aztec"}] run function rc_lib:entity/special/painting/z_1_1
execute if entity @s[nbt={Motive:"minecraft:alban"}] run function rc_lib:entity/special/painting/z_1_1
execute if entity @s[nbt={Motive:"minecraft:aztec2"}] run function rc_lib:entity/special/painting/z_1_1
execute if entity @s[nbt={Motive:"minecraft:bomb"}] run function rc_lib:entity/special/painting/z_1_1
execute if entity @s[nbt={Motive:"minecraft:plant"}] run function rc_lib:entity/special/painting/z_1_1
execute if entity @s[nbt={Motive:"minecraft:wasteland"}] run function rc_lib:entity/special/painting/z_1_1
execute if entity @s[nbt={Motive:"minecraft:wanderer"}] run function rc_lib:entity/special/painting/z_1_2
execute if entity @s[nbt={Motive:"minecraft:graham"}] run function rc_lib:entity/special/painting/z_1_2
execute if entity @s[nbt={Motive:"minecraft:pool"}] run function rc_lib:entity/special/painting/z_2_1
execute if entity @s[nbt={Motive:"minecraft:courbet"}] run function rc_lib:entity/special/painting/z_2_1
execute if entity @s[nbt={Motive:"minecraft:sunset"}] run function rc_lib:entity/special/painting/z_2_1
execute if entity @s[nbt={Motive:"minecraft:sea"}] run function rc_lib:entity/special/painting/z_2_1
execute if entity @s[nbt={Motive:"minecraft:creebet"}] run function rc_lib:entity/special/painting/z_2_1
execute if entity @s[nbt={Motive:"minecraft:match"}] run function rc_lib:entity/special/painting/z_2_2
execute if entity @s[nbt={Motive:"minecraft:bust"}] run function rc_lib:entity/special/painting/z_2_2
execute if entity @s[nbt={Motive:"minecraft:stage"}] run function rc_lib:entity/special/painting/z_2_2
execute if entity @s[nbt={Motive:"minecraft:void"}] run function rc_lib:entity/special/painting/z_2_2
execute if entity @s[nbt={Motive:"minecraft:skull_and_roses"}] run function rc_lib:entity/special/painting/z_2_2
execute if entity @s[nbt={Motive:"minecraft:wither"}] run function rc_lib:entity/special/painting/z_2_2
execute if entity @s[nbt={Motive:"minecraft:fighters"}] run function rc_lib:entity/special/painting/z_4_2
execute if entity @s[nbt={Motive:"minecraft:skeleton"}] run function rc_lib:entity/special/painting/z_4_3
execute if entity @s[nbt={Motive:"minecraft:donkey_kong"}] run function rc_lib:entity/special/painting/z_4_3
execute if entity @s[nbt={Motive:"minecraft:pointer"}] run function rc_lib:entity/special/painting/z_4_4
execute if entity @s[nbt={Motive:"minecraft:pigscene"}] run function rc_lib:entity/special/painting/z_4_4
execute if entity @s[nbt={Motive:"minecraft:burning_skull"}] run function rc_lib:entity/special/painting/z_4_4