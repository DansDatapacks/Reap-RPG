# validity check for village landmark placement

##validity tag
#if not in blocks (checks if theres air)
execute at @s if block ~ ~ ~ minecraft:air if block ~ ~1 ~ minecraft:air positioned ^ ^ ^ run tag @s add dan.landmarks_validVillageLM
    #error
execute at @s[tag=!dan.landmarks_validVillageLM] run tellraw @a[distance=..4] [{"text":"[] ","color":"gray"},{"text":"Place Village Banner where there is space.","color":"red"}]

#checks if there are village landmarks nearby
execute at @s if entity @e[tag=dan.landmarks_villageLM,distance=..200] run tag @s remove dan.landmarks_validVillageLM
    #error
execute at @s if entity @e[tag=dan.landmarks_villageLM,distance=..200] run tellraw @a[distance=..4] [{"text":"[] ","color":"gray"},{"text":"This area is too close to another Village.","color":"red"}]

#checks if there are structure landmarks nearby
execute at @s if entity @e[tag=dan.landmarks_generatedLM,distance=..60] run tag @s remove dan.landmarks_validVillageLM
    #error
execute at @s if entity @e[tag=dan.landmarks_generatedLM,distance=..60] run tellraw @a[distance=..4] [{"text":"[] ","color":"gray"},{"text":"This area is too close to a Landmark","color":"red"}]

##success
#place banner
execute as @s[tag=dan.landmarks_validVillageLM] at @s run function dan.landmarks:banner/place/village_banner
#rotate
execute as @s[tag=dan.landmarks_validVillageLM] at @s run function dan.landmarks:banner/check/armorstand_rot_to_banner_rot

##failed
#if failed, spawn new village banner item
execute if entity @s[tag=!dan.landmarks_validVillageLM] at @s run loot spawn ~ ~ ~ loot dan.landmarks:admin/spawnegg/landmark

#kill armorstand
kill @s[type=armor_stand,tag=dan.landmarks_village_spawner]