execute unless score entity_types rc_lib.setting matches 1..2 as @e[type=!minecraft:player,tag=!rc_lib.processed,distance=..16.5] run function rc_lib:entity/is
execute if score entity_types rc_lib.setting matches 1 as @e[type=#rc_lib:col,tag=!rc_lib.processed,distance=..16.5] run function rc_lib:entity/is
execute if score entity_types rc_lib.setting matches 2 as @e[type=#rc_lib:mobs,tag=!rc_lib.processed,distance=..16.5] run function rc_lib:entity/is
execute if score player rc_lib.setting matches 1 as @a[tag=!rc_lib.processed,distance=..16.5] run function rc_lib:entity/is
scoreboard players remove d_max rc_lib.var 100
execute if score d_max rc_lib.var matches 1.. positioned ^ ^ ^10 run function rc_lib:entity/distance/short