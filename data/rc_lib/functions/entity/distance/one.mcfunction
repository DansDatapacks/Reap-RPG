execute unless score entity_types rc_lib.setting matches 1..2 as @e[type=!minecraft:player,tag=!rc_lib.processed,distance=..14.5] run function rc_lib:entity/is
execute if score entity_types rc_lib.setting matches 1 as @e[type=#rc_lib:col,tag=!rc_lib.processed,distance=..14.5] run function rc_lib:entity/is
execute if score entity_types rc_lib.setting matches 2 as @e[type=#rc_lib:mobs,tag=!rc_lib.processed,distance=..14.5] run function rc_lib:entity/is
execute if score player rc_lib.setting matches 1 as @a[tag=!rc_lib.processed,distance=..14.5] run function rc_lib:entity/is