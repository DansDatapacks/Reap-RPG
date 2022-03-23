# spawner handler

#kill empty loot chest armorstands
#execute as @e[type=minecraft:armor_stand,tag=dan.chest,nbt=!{ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{reap_id:"loot_chest"}}]}] run kill @s

#diminish spawnTimer
execute as @e[tag=dan.mob_spawner] if score @s dan.spawnT matches 1.. run scoreboard players remove @s dan.spawnT 1

#reset spawners (if day score is not up to date)
execute as @e[type=minecraft:area_effect_cloud,tag=dan.spawner] at @s if entity @p[distance=..25] unless score @s dan.data = #day dan.data run function dan.reap:spawner_handling/reset_spawners

#summon mobs
execute as @e[type=minecraft:item,tag=!global.ignore,tag=dan.spawnitemButterfly] at @s run function dan.reap:spawner_handling/run_summon/butterfly
execute as @e[type=minecraft:phantom,tag=!global.ignore,tag=dan.summonButterfly] at @s run function dan.reap:spawner_handling/run_summon/butterfly