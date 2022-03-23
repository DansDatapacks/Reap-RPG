scoreboard players set temp rc_lib.var 2147483647
scoreboard players operation temp rc_lib.var < @e[tag=rc_lib.tempity] rc_lib.setting
execute as @e[tag=rc_lib.tempity] if score @s rc_lib.setting = temp rc_lib.var run tag @s add rc_lib.close
execute as @e[tag=rc_lib.close,limit=1] run function rc_lib:entity/tempity
tag @e[tag=rc_lib.close] remove rc_lib.close
scoreboard players remove entity_max rc_lib.setting 1
execute unless score entity_max rc_lib.setting matches ..0 if entity @e[tag=rc_lib.tempity] run function rc_lib:entity/count