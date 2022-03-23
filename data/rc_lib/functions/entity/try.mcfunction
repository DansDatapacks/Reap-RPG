scoreboard players set wide rc_lib.var -1
scoreboard players set tall rc_lib.var -1
execute if entity @s[type=#rc_lib:1] run function rc_lib:entity/branch/1
execute if entity @s[type=#rc_lib:2] run function rc_lib:entity/branch/2
execute if entity @s[type=#rc_lib:3] run function rc_lib:entity/branch/3
execute if entity @s[type=#rc_lib:256] run function rc_lib:entity/branch/256
execute if entity @s[type=#rc_lib:320] run function rc_lib:entity/branch/320
execute if entity @s[type=#rc_lib:384] run function rc_lib:entity/branch/384
execute if entity @s[type=#rc_lib:448] run function rc_lib:entity/branch/448
execute if entity @s[type=#rc_lib:575] run function rc_lib:entity/branch/575
execute if entity @s[type=#rc_lib:895] run function rc_lib:entity/branch/895
execute if entity @s[type=#rc_lib:breedable] run function rc_lib:entity/branch/breed
scoreboard players operation wide rc_lib.var *= scale rc_lib.var
scoreboard players operation tall rc_lib.var *= scale rc_lib.var
scoreboard players operation wide rc_lib.var /= 1280 rc_lib.con
scoreboard players operation tall rc_lib.var /= 1280 rc_lib.con
scoreboard players set -wide rc_lib.var 0
scoreboard players operation -wide rc_lib.var -= wide rc_lib.var
scoreboard players set -tall rc_lib.var 0
scoreboard players operation -tall rc_lib.var -= tall rc_lib.var
function rc_lib:get_coors/2
scoreboard players set temp rc_lib.var 0
execute unless score first rc_lib.setting matches 0 if score x_first rc_lib.var >= -wide rc_lib.var if score x_first rc_lib.var <= wide rc_lib.var if score y_first rc_lib.var >= -tall rc_lib.var if score y_first rc_lib.var matches ..0 if score z_first rc_lib.var >= -wide rc_lib.var if score z_first rc_lib.var <= wide rc_lib.var run scoreboard players set temp rc_lib.var 1
execute if score temp rc_lib.var matches 1 run function rc_lib:entity/inside
execute if score temp rc_lib.var matches 0 run function rc_lib:entity/rc