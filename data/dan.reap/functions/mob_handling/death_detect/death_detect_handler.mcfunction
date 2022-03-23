##death detect

#death detect init
execute as @e[type=!#dan.main:uninteractable,tag=hb.death_detect,tag=!hb.death_detect_init] at @s if entity @p[distance=..25] run tag @s add hb.death_detect_init
#death detect
execute as @e[tag=hb.death_detect_init] at @s if entity @p[distance=..25] anchored eyes positioned ~ ~1 ~ run tag @e[limit=1,sort=nearest,distance=..1,type=minecraft:area_effect_cloud,tag=hb.death_detect_aec] add hb.alive
#death detected
execute as @e[type=minecraft:area_effect_cloud,tag=hb.death_detect_aec,tag=!hb.alive] at @s if entity @p[distance=..25] run function dan.reap:mob_handling/death_detect/death_detect
#reset alive score
execute as @e[type=minecraft:area_effect_cloud,tag=hb.death_detect_aec,tag=hb.alive] at @s if entity @p[distance=..25] run tag @s remove hb.alive