# mob handler

##compatability detect (run script that changes tags of custom mobs to make it compatible with this oack when it detects other datapacks)
#tag @e[type=bee,tag=queenbee] add global.ignore
#tag @e[type=zombie,tag=queenhitbox] add global.custom_mob

#init mobs
execute as @e[type=!#dan.reap:uninteractable,tag=!global.ignore,tag=!dan.initMob] at @s if entity @p[distance=..30] run function dan.reap:mob_handling/mob_init
execute as @e[type=minecraft:area_effect_cloud,tag=!global.ignore,tag=global.custom_mob,tag=!dan.initMob] at @s if entity @p[distance=..30] run function dan.reap:mob_handling/mob_init

#init armorstands
execute as @e[type=minecraft:armor_stand,tag=!global.ignore,tag=!dan.initAS] at @s if entity @p[distance=..30] run data merge entity @s {Tags:["dan.initAS"],DisabledSlots:4144959,Invulnerable:1b} 

#init itemframes
execute as @e[type=minecraft:item_frame,tag=!global.ignore,tag=!dan.initIF] at @s if entity @p[distance=..30] run data merge entity @s {Tags:["dan.initIF"],Invulnerable:1b}

#init arrows
execute as @e[type=minecraft:arrow,tag=!global.ignore,tag=!dan.initArrow] run data merge entity @s {Tags:["dan.initArrow"],pickup:0b}

##mob behavior
function dan.reap:mob_handling/behavior/behavior_handler